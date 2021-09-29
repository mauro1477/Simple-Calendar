<?php

namespace App\Twig;

use Psr\Container\ContainerInterface;
use Symfony\Contracts\Service\ServiceSubscriberInterface;
use Twig\Extension\AbstractExtension;
use Twig\TwigFilter;
use Twig\TwigFunction;
use App\Service\UploaderHelper;

class AppExtension extends AbstractExtension implements ServiceSubscriberInterface
{
    private $container;

    public function __construct(ContainerInterface $container)
    {
        $this->container = $container;
    }

    public function getFunctions(): array
    {
        return [
            new TwigFunction('uploaded_asset', [$this, 'getUploadedAssetPath'])
        ];
    }
    // public function getFilters(): array
    // {
    //     return [
    //         new TwigFilter('cached_markdown', [$this, 'processMarkdown'], ['is_safe' => ['html']]),
    //     ];
    // }

    public function processMarkdown($value)
    {
        return $this->container
            ->get(UploaderHelper::class)
            ->parse($value);
    }

    public static function getSubscribedServices()
    {
        return [
              UploaderHelper::class
        ];
    }

    public function getUploadedAssetPath(string $path): string
    {
        return $this->container
            ->get(UploaderHelper::class)
            ->getPublicPath($path);
    }
}
