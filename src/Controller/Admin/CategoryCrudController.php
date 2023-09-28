<?php

namespace App\Controller\Admin;

use App\Entity\Category;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\FormField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class CategoryCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Category::class;
    }


    public function configureFields(string $pageName): iterable
    {
        $user = AssociationField::new('user')
        ->setCrudController(UserCrudController::class)
        ;
        return [
            IdField::new('id')
            ->hideOnForm(),
            FormField::addPanel('Catégories')
            ->setIcon('fas fa-user')
            ->setHelp("Catégorie"),
            TextField::new('name'),
            FormField::addPanel('Utilisateur')
            ->setIcon('fas fa-user')
            ->setHelp("Utilisateur"),
            $user,
        ];
    }

}
