<?php

namespace App\Controller;
use App\Entity\Day;
use App\Entity\Day_PDF_File;
use App\Service\UploaderHelper;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\StreamedResponse;
use Symfony\Component\Routing\Annotation\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\Serializer\SerializerInterface;
use Symfony\Component\Validator\Validator\ValidatorInterface;
use Symfony\Component\Validator\Constraints\File;
use Symfony\Component\Validator\Constraints\NotBlank;
use Symfony\Component\HttpFoundation\HeaderUtils;
use Aws\S3\S3Client;
use Symfony\Component\HttpFoundation\RedirectResponse;


class Day_PDF_FileAdminController extends BaseController
{

    /**
     * @Route("/admin/calendar/{id}/files", name="admin_day_add_files", methods={"POST"})
     * @IsGranted("ROLE_ADMIN")
     */
    public function uploadDay_PDF_File(Day $day, Request $request, UploaderHelper $uploaderHelper, EntityManagerInterface $entityManager, ValidatorInterface $validator)
    {
        /** @var UploadedFile $uploadedFile */
        $uploadedFile = $request->files->get('file_reference');
        $violations = $validator->validate(
            $uploadedFile,
            [
                new NotBlank([
                    'message' => "Please select a file to upload"
                ]),
                new File([
                    'maxSize' => '5M',
                    'mimeTypes' => [
                        'application/pdf',
                    ]
                ])
            ]
        );

        if ($violations->count() > 0) {
            return $this->json($violations, 400);

        }

        $filename = $uploaderHelper->uploadDayFile($uploadedFile);
        $day_pdf_file = new Day_PDF_File($day);
        $day_pdf_file->setFilename($filename);
        $day_pdf_file->setOriginalFilename($uploadedFile->getClientOriginalName() ?? $filename);
        $day_pdf_file->setMimeType($uploadedFile->getMimeType() ?? 'application/octet-stream');
        $entityManager->persist($day_pdf_file);
        $entityManager->flush();
        return $this->json(
            $day_pdf_file,
            201,
            [],
            [
                'groups' => ['main']
            ]
        );

    }

    /**
     * @Route("/admin/calendar/days_pdf/{id}/download", name="admin_day_download_day_pdf_file", methods={"GET"})
     */
    public function downloadDay_PDF_File(Day_PDF_File $day_pdf_file, S3Client $s3Client, string $s3BucketName)
    {
        $day = $day_pdf_file->getDay();
        $this->denyAccessUnlessGranted('ROLE_USER', $day);
/////////////////////////////////////////Comment section to prevent user download////////////////////////////////////
//        $disposition = HeaderUtils::makeDisposition(
//            HeaderUtils::DISPOSITION_ATTACHMENT,
//            $reference->getOriginalFilename()
//        );
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        $command = $s3Client->getCommand('GetObject', [
            'Bucket' => $s3BucketName,
            'Key' => $day_pdf_file->getFilePath(),
            'ResponseContentType' => $day_pdf_file->getMimeType(),
//            'ResponseContentDisposition' => $disposition,
        ]);
        $request = $s3Client->createPresignedRequest($command, '+30 minutes');
        return new RedirectResponse((string) $request->getUri());
    }

    /**
     * @Route("/admin/calendar/days_pdf/{id}/list", methods="GET", name="admin_day_list_days_pdf")
     *
     */
    public function getDay_PDF_Files(Day $day)
    {

        return $this->json(
            $day->getDay_PDF_Files(),
            200,
            [],
            [
                'groups' => ['main']
            ]
        );
    }

    /**
     * @Route("/admin/calendar/days_pdf/{id}", name="admin_day_delete_days_pdf", methods={"DELETE"})
     * @IsGranted("ROLE_ADMIN")
     */
    public function deleteDay_PDF_File(Day_PDF_File $day_pdf_file,UploaderHelper $uploaderHelper, EntityManagerInterface $entityManager)
    {
        $day = $day_pdf_file->getDay();
        $this->denyAccessUnlessGranted('ROLE_ADMIN', $day);
        $entityManager->remove($day_pdf_file);
        $entityManager->flush();
        $uploaderHelper->deleteFile($day_pdf_file->getFilePath(), false);

        return new Response(null, 204);

    }

    /**
     * @Route("/admin/calendar/days_pdf/{id}", name="admin_day_update_days_pdf", methods={"PUT"})
     * @IsGranted("ROLE_ADMIN")
     */
    public function updateDay_PDF_File(Day_PDF_File $day_pdf_file, UploaderHelper $uploaderHelper, EntityManagerInterface $entityManager, SerializerInterface $serializer, Request $request, ValidatorInterface $validator)
    {
        $day = $day_pdf_file->getDay();
        $this->denyAccessUnlessGranted('ROLE_ADMIN', $day);

        $serializer->deserialize(
            $request->getContent(),
            Day_PDF_File::class,
            'json',
            [
                'object_to_populate' => $day_pdf_file,
                'groups' => ['input']
            ]
        );

        $violations = $validator->validate($day_pdf_file);
        if ($violations->count() > 0) {
            return $this->json($violations, 400);
        }

        $entityManager->persist($reference);
        $entityManager->flush();

        return $this->json(
            $reference,
            200,
            [],
            [
                'groups' => ['main']
            ]
        );
    }

    /**
     * @Route("/admin/calendar/{id}/days_pdf/reorder", methods="POST", name="admin_day_reorder_day_pdf_file")
     * @IsGranted("ROLE_ADMIN")
     */
    public function reorderDay_PDF_Files(Day $day, Request $request, EntityManagerInterface $entityManager)
    {
        $orderedIds = json_decode($request->getContent(), true);
        if ($orderedIds === null) {
            return $this->json(['detail' => 'Invalid body'], 400);
        }
        // from (position)=>(id) to (id)=>(position)
        $orderedIds = array_flip($orderedIds);
        foreach ($day->getDay_PDF_Files() as $reference) {
            $reference->setPosition($orderedIds[$reference->getId()]);
        }
        $entityManager->flush();
        return $this->json(
            $day->getDay_PDF_Files(),
            200,
            [],
            [
                'groups' => ['main']
            ]
        );

    }
}
