<?php

namespace App\Repository;

use App\Entity\Day_PDF_File;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Day_PDF_File|null find($id, $lockMode = null, $lockVersion = null)
 * @method Day_PDF_File|null findOneBy(array $criteria, array $orderBy = null)
 * @method Day_PDF_File[]    findAll()
 * @method Day_PDF_File[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class Day_PDF_FileRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Day_PDF_File::class);
    }

    // /**
    //  * @return Day_PDF_File[] Returns an array of Day_PDF_File objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('c.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Day_PDF_File
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
