<?php

namespace App\Service;
use Symfony\Component\HttpFoundation\File\UploadedFile;
// use Symfony\Component\Asset\Context\RequestStackContext;
use Gedmo\Sluggable\Util\Urlizer;
use League\Flysystem\FilesystemInterface;
use Symfony\Component\HttpFoundation\File\File;
use Psr\Log\LoggerInterface;
use League\Flysystem\FileNotFoundException;
use League\Flysystem\AdapterInterface;


class UploaderHelper
{
    const CALENDAR_IMAGE = 'calendar_image';

    const DAY_PDF_FILE = 'day_pdf_file';

    private $filesystem;

    private $logger;

    private $publicAssetBaseUrl;

    // private $privateFilesystem;
// FilesystemInterface $privateUploadsFilesystem,
// RequestStackContext $requestStackContext,
    public function __construct(FilesystemInterface $publicUploadsFilesystem,  LoggerInterface $logger, string $uploadedAssetsBaseUrl)
    {
        $this->filesystem = $publicUploadsFilesystem;
        // $this->requestStackContext = $requestStackContext;
        $this->logger = $logger;
        $this->publicAssetBaseUrl = $uploadedAssetsBaseUrl;
        // $this->privateFilesystem = $privateUploadsFilesystem;
    }


    public function uploadCalendarImage(File $file, ?string $existingFilename): string
    {
        $newFilename = $this->uploadFile($file, self::CALENDAR_IMAGE, true);

        if ($existingFilename) {
            try {
                $result = $this->filesystem->delete(self::CALENDAR_IMAGE.'/'.$existingFilename);

                if ($result === false) {
                    throw new \Exception(sprintf('Could not delete old uploaded file "%s"', $existingFilename));
                }

            } catch (FileNotFoundException $e) {
                $this->logger->alert(sprintf('Old uploaded file "%s" was missing when trying to delete', $existingFilename));
            }
        }

        return $newFilename;
    }


    public function uploadDayFile(File $file): string
    {
        return $this->uploadFile($file, self::DAY_PDF_FILE, false);
    }

    public function getPublicPath(string $path): string
    {
        $fullPath = $this->publicAssetBaseUrl.'/'.$path;
        // if it's already absolute, just return
        if (strpos($fullPath, '://') !== false) {
            return $fullPath;
        }
        // needed if you deploy under a subdirectory
        return $this->getBasePath().$fullPath;
    }

    /**
     * @return resource
     */
    public function readStream(string $path, bool $isPublic)
    {
        // $filesystem = $isPublic ?$this->filesystem : $this->privateFilesystem;

        $filesystem = $this->filesystem;


        $resource = $filesystem->readStream($path);

        if ($resource === false) {
            throw new \Exception(sprintf('Error opening stream for "%s"', $path));
        }
        return $resource;
    }

    private function uploadFile(File $file, string $directory, bool $isPublic): string
    {
        if ($file instanceof UploadedFile) {
            $originalFilename = $file->getClientOriginalName();
        } else {
            $originalFilename = $file->getFilename();
        }
        $newFilename = Urlizer::urlize(pathinfo($originalFilename, PATHINFO_FILENAME)).'-'.uniqid().'.'.$file->guessExtension();

        $filesystem = $this->filesystem;
        $stream = fopen($file->getPathname(), 'r');
        $result = $this->filesystem->writeStream(
            $directory.'/'.$newFilename,
            $stream,
            [
                'visibility' => AdapterInterface::VISIBILITY_PUBLIC
                // 'visibility' => $isPublic ? AdapterInterface::VISIBILITY_PUBLIC : AdapterInterface::VISIBILITY_PRIVATE

            ]
        );
        if ($result === false) {
            throw new \Exception(sprintf('Could not write uploaded file "%s"', $newFilename));
        }
        if (is_resource($stream)) {
            fclose($stream);
        }

        return $newFilename;
    }

    public function deleteFile(string $path, bool $isPublic)
    {
        $filesystem = $isPublic ? $this->filesystem : $this->privateFilesystem;
        $filesystem = $this->filesystem;

        $result = $filesystem->delete($path);

        if ($result === false) {
            throw new \Exception(sprintf('Error deleting "%s"', $path));
        }
    }

}
