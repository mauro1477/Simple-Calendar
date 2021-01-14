<?php

namespace App\DataFixtures;

use App\Entity\Month;
use App\Entity\Day;
use Doctrine\Persistence\ObjectManager;

class MonthFixtures extends BaseFixture
{
    private static $monthTitles = [
        'January',
        'February',
        'March',
        'April',
        'May',
        'June',
        'July',
        'August',
        'September',
        'October',
        'November',
        'December',
    ];

    // private static $articleImages = [
    //     'asteroid.jpeg',
    //     'mercury.jpeg',
    //     'lightspeed.png',
    // ];

    // private static $articleAuthors = [
    //     'Mike Ferengi',
    //     'Amy Oort',
    // ];

    public function loadData(ObjectManager $manager)
    {
        $this->createManyMonths(Month::class, 12, function(Month $month, $count) use ($manager) {
            $month->setTitle(self::$monthTitles[$count])
                ->setSlug($this->faker->slug)
                ->setPublishedAt(false)
                ->setContent(<<<EOF
Spicy **jalapeno bacon** ipsum dolor amet veniam shank in dolore. Ham hock nisi landjaeger cow,
lorem proident [beef ribs](https://baconipsum.com/) aute enim veniam ut cillum pork chuck picanha. Dolore reprehenderit
labore minim pork belly spare ribs cupim short loin in. Elit exercitation eiusmod dolore cow
**turkey** shank eu pork belly meatball non cupim.

Laboris beef ribs fatback fugiat eiusmod jowl kielbasa alcatra dolore velit ea ball tip. Pariatur
laboris sunt venison, et laborum dolore minim non meatball. Shankle eu flank aliqua shoulder,
capicola biltong frankfurter boudin cupim officia. Exercitation fugiat consectetur ham. Adipisicing
picanha shank et filet mignon pork belly ut ullamco. Irure velit turducken ground round doner incididunt
occaecat lorem meatball prosciutto quis strip steak.

Meatball adipisicing ribeye bacon strip steak eu. Consectetur ham hock pork hamburger enim strip steak
mollit quis officia meatloaf tri-tip swine. Cow ut reprehenderit, buffalo incididunt in filet mignon
strip steak pork belly aliquip capicola officia. Labore deserunt esse chicken lorem shoulder tail consectetur
cow est ribeye adipisicing. Pig hamburger pork belly enim. Do porchetta minim capicola irure pancetta chuck
fugiat.
EOF
            );

            $day1 = new Day();
            $day1->setTitle('Day1');
            $day1->setSlug($this->faker->slug);
            $day1->setContent('Content for Day 1');
            $day1->setPublishedAt(true);
            $day1->setMonth($month);
            $manager->persist($day1);

            $day2 = new Day();
            $day2->setTitle('Day 2');
            $day2->setSlug($this->faker->slug);
            $day2->setContent('Content for Day 2');
            $day2->setMonth($month);
            $day2->setPublishedAt(true);
            $manager->persist($day2);

            $day3 = new Day();
            $day3->setTitle('Day3');
            $day3->setSlug($this->faker->slug);
            $day3->setContent('Content for Day 3');
            $day3->setMonth($month);
            $day3->setPublishedAt(true);
            $manager->persist($day3);

            $day4 = new Day();
            $day4->setTitle('Day 4');
            $day4->setSlug($this->faker->slug);
            $day4->setContent('Content for Day 4');
            $day4->setMonth($month);
            $day4->setPublishedAt(true);
            $manager->persist($day4);

            $day5 = new Day();
            $day5->setTitle('Day5');
            $day5->setSlug($this->faker->slug);
            $day5->setContent('Content for Day 5');
            $day5->setMonth($month);
            $day5->setPublishedAt(true);
            $manager->persist($day5);


            $day6 = new Day();
            $day6->setTitle('Day 6');
            $day6->setSlug($this->faker->slug);
            $day6->setContent('Content for Day 6');
            $day6->setMonth($month);
            $day6->setPublishedAt(true);
            $manager->persist($day6);

        });

        $manager->flush();
    }
}
