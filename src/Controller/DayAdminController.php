<?php

namespace App\Controller;
use App\Service\UploaderHelper;
use App\Entity\Day;
use App\Form\DayFormType;
use App\Repository\DayRepository;
use Gedmo\Sluggable\Util\Urlizer;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use App\Entity\Month;



/**
* @IsGranted("ROLE_ADMIN")
*/
class DayAdminController extends AbstractController
{
    /**
     * @Route("/admin/calendar/month/{id}/day/new", name="admin_day_new")
     */
    public function new_day(Month $month, EntityManagerInterface $em, Request $request, UploaderHelper $uploaderHelper)
    {
        // dd($month);
        $form = $this->createForm(DayFormType::class);
        $form->handleRequest($request);#magic

        if ($form->isSubmitted() && $form->isValid()) {
            /** @var Day $day */
            $day = $form->getData();
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//             /** @var UploadedFile $uploadedFile */
//             $uploadedFile = $form['imageFile']->getData();
//
//             if($uploadedFile){
//               $newFilename = $uploaderHelper->uploadCalendarImage($uploadedFile, $day->getImageFilename());
//               $day->setImageFilename($newFilename);
//             }
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            $title = $day->getTitle();
            $day = $day->setSlug($title);
            $month->addDay($day);
            $em->persist($day);
            $em->flush();
            $this->addFlash('success', 'Day form created!');

            return $this->redirectToRoute('admin_day_list', [
                'id' => $month->getId(),
            ]);
        }

        return $this->render('calendar_admin/day/new_day.html.twig', [
            'dayForm' => $form->createView()
        ]);
    }

    /**
     * @Route("/admin/calendar/days_pdf/{id}/edit", name="admin_edit_day")
     */
    public function edit_day(Request $request, EntityManagerInterface $em, Day $day, UploaderHelper $uploaderHelper)
    {
        $form = $this->createForm(DayFormType::class, $day);

        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
             // /** @var UploadedFile $uploadedFile */
             // $uploadedFile = $form['imageFile']->getData();
             //
             // if($uploadedFile){
             //   $newFilename = $uploaderHelper->uploadCalendarImage($uploadedFile, $day->getImageFilename());
             //   $day->setImageFilename($newFilename);
             // }
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            $month = $day->getMonth();
            $em->persist($day);
            $em->flush();

            $this->addFlash('success', 'Edited day successfully!');

            return $this->redirectToRoute('admin_day_list', [
                'id' => $month->getId(),
            ]);
        }
        return $this->render('calendar_admin/day/edit_day.html.twig', [
            'dayForm' => $form->createView(),
            'day' => $day,
        ]);
    }

    /**
     * @Route("/admin/calendar/month/{id}/day/list", name="admin_day_list")
     */
    public function list_day(Month $month)
    {
        // $days = $dayRepo->findAll();
        // return $this->render('calendar_admin/day/list_day.html.twig', [
        //     'days' => $days,
        // ]);
        return $this->render('calendar_admin/day/list_day.html.twig', [
            'month' => $month,
        ]);
    }

    /**
     * @Route("/admin/calendar/month/day/list/{id}/delete", name="admin_delete_day")
     */
     public function delete_day(Day $day, EntityManagerInterface $entityManager)
     {
        $this->denyAccessUnlessGranted('ROLE_ADMIN', $day);

         $pdf_files = $day->getDay_PDF_Files();

         foreach($pdf_files as $pdf_file)
         {
             $day->removeDay_PDF_File($pdf_file);
             $entityManager->remove($pdf_file);
         }

        $month = $day->getMonth();
        $month->removeDay($day);
        $entityManager->remove($day);
        $entityManager->flush();

        $this->addFlash('success', 'Deleted day successfully!');

         return $this->redirectToRoute('admin_day_list', [
             'id' => $month->getId(),
         ]);
     }
}
