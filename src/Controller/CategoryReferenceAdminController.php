<?php

namespace App\Controller;
use App\Entity\Day;
use App\Entity\CategoryReference;
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


class CategoryReferenceAdminController extends BaseController
{

    /**
     * @Route("/admin/calendar/{id}/files", name="admin_category_add_files", methods={"POST"})
     * @IsGranted("ROLE_ADMIN")
     */
    public function uploadCategoryReference(Day $day, Request $request, UploaderHelper $uploaderHelper, EntityManagerInterface $entityManager, ValidatorInterface $validator)
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

        $filename = $uploaderHelper->uploadCategoryFile($uploadedFile);
        $categoryReference = new CategoryReference($day);
        $categoryReference->setFilename($filename);
        $categoryReference->setOriginalFilename($uploadedFile->getClientOriginalName() ?? $filename);
        $categoryReference->setMimeType($uploadedFile->getMimeType() ?? 'application/octet-stream');
        $entityManager->persist($categoryReference);
        $entityManager->flush();
        return $this->json(
            $categoryReference,
            201,
            [],
            [
                'groups' => ['main']
            ]
        );

    }

    /**
     * @Route("/admin/calendar/references/{id}/download", name="admin_day_download_reference", methods={"GET"})
     */
    public function downloadCategoryReference(CategoryReference $reference, S3Client $s3Client, string $s3BucketName)
    {
        $day = $reference->getDay();
        $this->denyAccessUnlessGranted('ROLE_USER', $day);
/////////////////////////////////////////Comment section to prevent user download////////////////////////////////////
//        $disposition = HeaderUtils::makeDisposition(
//            HeaderUtils::DISPOSITION_ATTACHMENT,
//            $reference->getOriginalFilename()
//        );
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        $command = $s3Client->getCommand('GetObject', [
            'Bucket' => $s3BucketName,
            'Key' => $reference->getFilePath(),
            'ResponseContentType' => $reference->getMimeType(),
//            'ResponseContentDisposition' => $disposition,
        ]);
        $request = $s3Client->createPresignedRequest($command, '+30 minutes');
        return new RedirectResponse((string) $request->getUri());
    }

    /**
     * @Route("/admin/calendar/references/{id}/list", methods="GET", name="admin_day_list_references")
     *
     */
    public function getCategoryReferences(Day $day)
    {

        return $this->json(
            $day->getCategoryReferences(),
            200,
            [],
            [
                'groups' => ['main']
            ]
        );
    }

    /**
     * @Route("/admin/calendar/references/{id}", name="admin_day_delete_reference", methods={"DELETE"})
     * @IsGranted("ROLE_ADMIN")
     */
    public function deleteCategoryReference(CategoryReference $reference,UploaderHelper $uploaderHelper, EntityManagerInterface $entityManager)
    {
        $day = $reference->getDay();
        $this->denyAccessUnlessGranted('ROLE_ADMIN', $day);
        $entityManager->remove($reference);
        $entityManager->flush();
        $uploaderHelper->deleteFile($reference->getFilePath(), false);

        return new Response(null, 204);

    }

    /**
     * @Route("/admin/calendar/references/{id}", name="admin_day_update_reference", methods={"PUT"})
     * @IsGranted("ROLE_ADMIN")
     */
    public function updateCategoryReference(CategoryReference $reference, UploaderHelper $uploaderHelper, EntityManagerInterface $entityManager, SerializerInterface $serializer, Request $request, ValidatorInterface $validator)
    {
        $day = $reference->getDay();
        $this->denyAccessUnlessGranted('ROLE_ADMIN', $day);

        $serializer->deserialize(
            $request->getContent(),
            CategoryReference::class,
            'json',
            [
                'object_to_populate' => $reference,
                'groups' => ['input']
            ]
        );

        $violations = $validator->validate($reference);
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
     * @Route("/admin/calendar/{id}/references/reorder", methods="POST", name="admin_day_reorder_references")
     * @IsGranted("ROLE_ADMIN")
     */
    public function reorderCategoryReferences(Day $day, Request $request, EntityManagerInterface $entityManager)
    {
        $orderedIds = json_decode($request->getContent(), true);
        if ($orderedIds === null) {
            return $this->json(['detail' => 'Invalid body'], 400);
        }
        // from (position)=>(id) to (id)=>(position)
        $orderedIds = array_flip($orderedIds);
        foreach ($day->getCategoryReferences() as $reference) {
            $reference->setPosition($orderedIds[$reference->getId()]);
        }
        $entityManager->flush();
        return $this->json(
            $day->getCategoryReferences(),
            200,
            [],
            [
                'groups' => ['main']
            ]
        );

    }
}
