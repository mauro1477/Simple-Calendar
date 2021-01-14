<?php

namespace App\Controller;

use App\Entity\Day;
use App\Repository\DayRepository;
use App\Repository\MonthRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;

class HomeController extends AbstractController
{
    /**
     * @Route("/homepage", name="app_homepage")
     */
    public function homepage(EntityManagerInterface $em, MonthRepository $monthRepo)
    {
       // $repository = $em->getRepository(Day::class);
       // $days = $repository->findAll();
       // return $this->render('home/home_page.html.twig', [
       //     'days' => $days,
       //
       // ]);

        $months = $monthRepo->findAll();
        return $this->render('home/home_page.html.twig', [
            'months' => $months,

        ]);
        // return new Response('homepage');
    }

    /**
     * @Route("homepage/day_show/{slug}", name="day_show")
     */
    public function show_day(Day $day, $slug, EntityManagerInterface $em)
    {
//        $repository = $em->getRepository(Calendar::class);
//        /** @var Calendar $calendar */
//        $calendar = $repository->findOneBy(['slug' => $slug]);
//        if (!$calendar) {
//            throw $this->createNotFoundException(sprintf('No calendar for slug "%s"', $slug));
//        }
//        dd($calendar);
//         return $this->render('home/show_day.html.twig', [
// //            'title' => ucwords(str_replace('-', ' ', $slug)),
//             'day' => $day,
//         ]);
          return $this->render('/home/show_day.html.twig', [
              'day' => $day,
          ]);
    }
}
