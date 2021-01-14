<?php

namespace App\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use App\Repository\MonthRepository;
use Symfony\Component\OptionsResolver\OptionsResolver;
use App\Entity\Month;
use Symfony\Component\Validator\Constraints\Image;
use Symfony\Component\Validator\Constraints\NotNull;
use Symfony\Component\Form\Extension\Core\Type\FileType;

class MonthFormType extends AbstractType
{
  private $monthRepository;

  public function __construct(MonthRepository  $monthRepository)
  {
      $this->monthRepository = $monthRepository;
  }

    public function buildForm(FormBuilderInterface $builder, array $options)
    {

        /** @var  Month|null $month */
        $month = $options['data'] ?? null;
        $isEdit = $month && $month->getId();

        $builder
            ->add('title', TextType::class)
            ->add('content', null, [
                'label' => 'Daily Notes',
            ]);

        $imageConstraints = [
            new Image([
                'maxSize' => '5M',
            ])
        ];

        if (!$isEdit || !$month->getImageFilename()) {
            $imageConstraints[] = new NotNull([
                'message' => 'Please upload a file',
            ]);
        }

        $builder
            ->add('imageFile', FileType::class, [
                'mapped' => false,
                'required' => false,
                'constraints' => $imageConstraints
            ]);

        $builder
            ->add('PublishedAt', ChoiceType::class, [
                'choices'  => [
                    'Yes' => true,
                    'No' => false,
                ],
                'placeholder' => 'Choose an option',
            ]);
    }




  public function configureOptions(OptionsResolver $resolver)
  {
      $resolver->setDefaults([
          'data_class' => Month::class
      ]);
  }
}
?>
