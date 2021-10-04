<?php

namespace App\Controller;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use App\Repository\MonthRepository;
use Doctrine\ORM\EntityManagerInterface;
use App\Form\MonthFormType;
use App\Entity\Month;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use App\Service\UploaderHelper;

/**
* @IsGranted("ROLE_ADMIN")
*/
class MonthAdminController extends AbstractController
{
    /**
     * @Route("/admin/calendar/month/new", name = "admin_month_new")
     */
    public function new_month(Request $request, EntityManagerInterface $em, UploaderHelper $uploaderHelper)
    {
      $form = $this->createForm(MonthFormType::class);
      $form->handleRequest($request);

      if ($form->isSubmitted() && $form->isValid()) {
          /** @var Month $month*/
          $month = $form->getData();

           // /** @var UploadedFile $uploadedFile */
           // $uploadedFile = $form['imageFile']->getData();
           //
           // if($uploadedFile){
           //   $newFilename = $uploaderHelper->uploadCalendarImage($uploadedFile, $month->getImageFilename());
           //   $month->setImageFilename($newFilename);
           // }

          $title = $month->getTitle();
          $month = $month->setSlug($title);
          $em->persist($month);
          $em->flush();

          $this->addFlash('success', 'Month form created!');

          return $this->redirectToRoute('admin_month_list');
      }

      return $this->render('calendar_admin/month/new_month.html.twig', [
          'monthForm' => $form->createView()
      ]);
    }

    /**
     * @Route("/admin/calendar/month/{id}/edit", name="admin_edit_month")
     */
    public function edit_month(Request $request, EntityManagerInterface $em, Month $month, UploaderHelper $uploaderHelper)
    {
        $form = $this->createForm(MonthFormType::class, $month);

        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
             /** @var UploadedFile $uploadedFile */
             $uploadedFile = $form['imageFile']->getData();
             if($uploadedFile){
               $newFilename = $uploaderHelper->uploadCalendarImage($uploadedFile, $month->getImageFilename());
               $month->setImageFilename($newFilename);
             }

            $em->persist($month);
            $em->flush();

            $this->addFlash('success', 'Edited month successfully!');

            return $this->redirectToRoute('admin_month_list', [
                'id' => $month->getId(),
            ]);
        }
        return $this->render('calendar_admin/month/edit_month.html.twig', [
            'monthForm' => $form->createView(),
            'month' => $month,
        ]);
    }

    /**
     * @Route("/admin/calendar/month/list", name = "admin_month_list")
     */
    public function list_month(MonthRepository $monthRepo)
    {
        $months = $monthRepo->findAll();
        return $this->render('calendar_admin/month/list_month.html.twig', [
            'months' => $months,
        ]);
    }

    /**
     * @Route("/admin/calendar/month/list/{id}/delete", name="admin_delete_month")
     */
     public function delete_month(Month $month, EntityManagerInterface $entityManager)
     {
        $this->denyAccessUnlessGranted('ROLE_ADMIN', $month);
        $days = $month->getDays();

        foreach($days as $day)
        {
          $month->removeDay($day);
          $entityManager->remove($day);
        }

        $entityManager->remove($month);
        $entityManager->flush();

        $this->addFlash('success', 'Deleted month successfully!');

        return $this->redirectToRoute('admin_month_list');
     }

     /**
      * @Route("/admin/calendar/month/{id}/show", name="admin_show_month")
      */
      public function show_month(Month $month, EntityManagerInterface $entityManager)
      {

        return $this->render('calendar_admin/month/show_month.html.twig', [
            'month' => $month,
        ]);

      }

}
