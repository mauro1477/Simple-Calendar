<?php

namespace App\Entity;

use App\Repository\DayRepository;
use App\Service\UploaderHelper;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\Common\Collections\Criteria;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Validator\Context\ExecutionContextInterface;
use Symfony\Component\Validator\Constraints\Callback;
use Symfony\Component\Validator\Constraints\CallbackValidator;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Gedmo\Mapping\Annotation as Gedmo;


/**
 * @ORM\Entity(repositoryClass=DayRepository::class)
 */
class Day
{

    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="boolean", nullable=true)
     */
    private $PublishedAt;

    /**
     * @ORM\OneToMany(targetEntity=Day_PDF_File::class, mappedBy="day")
     * @ORM\OrderBy({"position"="ASC"})
     */
    private $day_pdf_files;

    /**
     * @ORM\Column(type="string", length=255)
     * @Assert\NotBlank(message="title cannot be blank")
     */
    private $title;

    /**
     * @ORM\Column(type="string", length=100)
     */
    private $slug;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $content;

    /**
     * @ORM\ManyToOne(targetEntity=Month::class, inversedBy="days")
     * @ORM\JoinColumn(nullable=false)
     */
    private $month;

    public function __construct()
    {
        $this->day_pdf_files = new ArrayCollection();
    }

    public function getId()
    {
        return $this->id;
    }

    public function getPublishedAt(): ?bool
    {
        return $this->PublishedAt;
    }

    public function setPublishedAt(?bool $PublishedAt): self
    {
        $this->PublishedAt = $PublishedAt;
        return $this;
    }


    public function isPublished(): ?bool
    {
        return $this->PublishedAt;
    }


    /**
     * @return Collection|Day_PDF_File[]
     */
    public function getDay_PDF_Files(): Collection
    {
        return $this->day_pdf_files;
    }

    public function removeDay_PDF_Files(Day_PDF_File $day_pdf_file): self
    {
        if ($this->day_pdf_files->removeElement($day_pdf_file)) {
            // set the owning side to null (unless already changed)
            if ($day_pdf_file->getDay() === $this) {
                $day_pdf_file->setDay(null);
            }
        }

        return $this;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(string $title): self
    {
        $this->title = $title;

        return $this;
    }

    public function getSlug(): ?string
    {
        return $this->slug;
    }

    public function setSlug(string $slug): self
    {
        $this->slug = $slug;

        return $this;
    }

    public function getContent(): ?string
    {
        return $this->content;
    }

    public function setContent(?string $content): self
    {
        $this->content = $content;

        return $this;
    }

    public function getMonth(): ?Month
    {
        return $this->month;
    }

    public function setMonth(?Month $month): self
    {
        $this->month = $month;

        return $this;
    }
}
