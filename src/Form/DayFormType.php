<?php

namespace App\Form;

use App\Entity\Month;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use App\Entity\Day;
use Symfony\Component\OptionsResolver\OptionsResolver;
use App\Repository\DayRepository;
use Symfony\Component\Validator\Constraints\Image;
use Symfony\Component\Validator\Constraints\Length;
use Symfony\Component\Validator\Constraints\NotNull;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;

class DayFormType extends AbstractType
{
    private $DayRepository;

    public function __construct(DayRepository  $DayRepository)
    {
        $this->DayRepository = $DayRepository;
    }

    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        /** @var  Day|null $day */
        $day = $options['data'] ?? null;
        $isEdit = $day && $day->getId();

        $builder
            ->add('title', TextType::class)
            ->add('content', null, [
                'label' => 'Daily Notes',
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
            'data_class' => Day::class
        ]);
    }
}
?>
