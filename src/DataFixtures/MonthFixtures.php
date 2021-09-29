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

    private static $days = 30;

    private static $day_counter = 0;

    public function loadData(ObjectManager $manager)
    {
        $this->createManyMonths(Month::class, 12, function(Month $month, $count) use ($manager) {
            $month->setTitle(self::$monthTitles[$count])
                ->setSlug($this->faker->slug)
                ->setPublishedAt(false)
                ->setContent(strval(self::$monthTitles[$count]).' content');

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

        $day7 = new Day();
        $day7->setTitle('Day 7');
        $day7->setSlug($this->faker->slug);
        $day7->setContent('Content for Day 7');
        $day7->setMonth($month);
        $day7->setPublishedAt(true);
        $manager->persist($day7);

        $day8 = new Day();
        $day8->setTitle('Day 8');
        $day8->setSlug($this->faker->slug);
        $day8->setContent('Content for Day 8');
        $day8->setMonth($month);
        $day8->setPublishedAt(true);
        $manager->persist($day8);

        $day9 = new Day();
        $day9->setTitle('Day 9');
        $day9->setSlug($this->faker->slug);
        $day9->setContent('Content for Day 9');
        $day9->setMonth($month);
        $day9->setPublishedAt(true);
        $manager->persist($day9);

        $day10 = new Day();
        $day10->setTitle('Day 10');
        $day10->setSlug($this->faker->slug);
        $day10->setContent('Content for Day 10');
        $day10->setMonth($month);
        $day10->setPublishedAt(true);
        $manager->persist($day10);

        $day11 = new Day();
        $day11->setTitle('Day 11');
        $day11->setSlug($this->faker->slug);
        $day11->setContent('Content for Day 11');
        $day11->setMonth($month);
        $day11->setPublishedAt(true);
        $manager->persist($day11);

        $day12 = new Day();
        $day12->setTitle('Day 12');
        $day12->setSlug($this->faker->slug);
        $day12->setContent('Content for Day 12');
        $day12->setMonth($month);
        $day12->setPublishedAt(true);
        $manager->persist($day12);

        $day13 = new Day();
        $day13->setTitle('Day 13');
        $day13->setSlug($this->faker->slug);
        $day13->setContent('Content for Day 13');
        $day13->setMonth($month);
        $day13->setPublishedAt(true);
        $manager->persist($day13);

        $day14 = new Day();
        $day14->setTitle('Day 14');
        $day14->setSlug($this->faker->slug);
        $day14->setContent('Content for Day 14');
        $day14->setMonth($month);
        $day14->setPublishedAt(true);
        $manager->persist($day14);

        $day15 = new Day();
        $day15->setTitle('Day 15');
        $day15->setSlug($this->faker->slug);
        $day15->setContent('Content for Day 15');
        $day15->setMonth($month);
        $day15->setPublishedAt(true);
        $manager->persist($day15);

        $day16 = new Day();
        $day16->setTitle('Day 16');
        $day16->setSlug($this->faker->slug);
        $day16->setContent('Content for Day 16');
        $day16->setMonth($month);
        $day16->setPublishedAt(true);
        $manager->persist($day16);

        $day17 = new Day();
        $day17->setTitle('Day 17');
        $day17->setSlug($this->faker->slug);
        $day17->setContent('Content for Day 17');
        $day17->setMonth($month);
        $day17->setPublishedAt(true);
        $manager->persist($day17);

        $day18 = new Day();
        $day18->setTitle('Day 18');
        $day18->setSlug($this->faker->slug);
        $day18->setContent('Content for Day 18');
        $day18->setMonth($month);
        $day18->setPublishedAt(true);
        $manager->persist($day18);

        $day19 = new Day();
        $day19->setTitle('Day 19');
        $day19->setSlug($this->faker->slug);
        $day19->setContent('Content for Day 19');
        $day19->setMonth($month);
        $day19->setPublishedAt(true);
        $manager->persist($day19);

        $day20 = new Day();
        $day20->setTitle('Day 20');
        $day20->setSlug($this->faker->slug);
        $day20->setContent('Content for Day 20');
        $day20->setMonth($month);
        $day20->setPublishedAt(true);
        $manager->persist($day20);

        $day21 = new Day();
        $day21->setTitle('Day 21');
        $day21->setSlug($this->faker->slug);
        $day21->setContent('Content for Day 21');
        $day21->setMonth($month);
        $day21->setPublishedAt(true);
        $manager->persist($day21);

        $day22 = new Day();
        $day22->setTitle('Day 22');
        $day22->setSlug($this->faker->slug);
        $day22->setContent('Content for Day 22');
        $day22->setMonth($month);
        $day22->setPublishedAt(true);
        $manager->persist($day22);

        $day23 = new Day();
        $day23->setTitle('Day 23');
        $day23->setSlug($this->faker->slug);
        $day23->setContent('Content for Day 23');
        $day23->setMonth($month);
        $day23->setPublishedAt(true);
        $manager->persist($day23);

        $day24 = new Day();
        $day24->setTitle('Day 24');
        $day24->setSlug($this->faker->slug);
        $day24->setContent('Content for Day 24');
        $day24->setMonth($month);
        $day24->setPublishedAt(true);
        $manager->persist($day24);

        $day25 = new Day();
        $day25->setTitle('Day 25');
        $day25->setSlug($this->faker->slug);
        $day25->setContent('Content for Day 25');
        $day25->setMonth($month);
        $day25->setPublishedAt(true);
        $manager->persist($day25);

        $day26 = new Day();
        $day26->setTitle('Day 26');
        $day26->setSlug($this->faker->slug);
        $day26->setContent('Content for Day 26');
        $day26->setMonth($month);
        $day26->setPublishedAt(true);
        $manager->persist($day26);

        $day27 = new Day();
        $day27->setTitle('Day 27');
        $day27->setSlug($this->faker->slug);
        $day27->setContent('Content for Day 27');
        $day27->setMonth($month);
        $day27->setPublishedAt(true);
        $manager->persist($day27);

        $day28 = new Day();
        $day28->setTitle('Day 28');
        $day28->setSlug($this->faker->slug);
        $day28->setContent('Content for Day 28');
        $day28->setMonth($month);
        $day28->setPublishedAt(true);
        $manager->persist($day28);

        $day29 = new Day();
        $day29->setTitle('Day 29');
        $day29->setSlug($this->faker->slug);
        $day29->setContent('Content for Day 29');
        $day29->setMonth($month);
        $day29->setPublishedAt(true);
        $manager->persist($day29);

        $day30 = new Day();
        $day30->setTitle('Day 30');
        $day30->setSlug($this->faker->slug);
        $day30->setContent('Content for Day 30');
        $day30->setMonth($month);
        $day30->setPublishedAt(true);
        $manager->persist($day30);

        });
        $manager->flush();
    }
}
