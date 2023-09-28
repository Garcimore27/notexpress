<?php

namespace App\Controller\Admin;

use App\Entity\Note;
use App\Controller\Admin\UserCrudController;
use App\Controller\Admin\CategoryCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Config\Action;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Config\Actions;
use EasyCorp\Bundle\EasyAdminBundle\Field\FormField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class NoteCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Note::class;
    }

    public function configureActions(Actions $actions): Actions
    {
        return parent::configureActions($actions)
            ->add(Crud::PAGE_INDEX, Action::DETAIL);
    }

    public function configureFields(string $pageName): iterable
    {       
        $id = IdField::new('id');
        $title = TextField::new('title');
        $content = TextEditorField::new('content');
        $category = AssociationField::new('category')
        ->setCrudController(CategoryCrudController::class)
        ;
        $user = AssociationField::new('user')
        ->setCrudController(UserCrudController::class)
        ;
        if (Crud::PAGE_EDIT === $pageName){
            return [
            
            FormField::addPanel('Titre de la note')
            ->setIcon('fas fa-book')
            ->setHelp("Saisissez le titre de la note"),
            $title,

            FormField::addPanel('Categorie')
            ->setIcon('fas fa-book')
            ->setHelp("choisissez la catégorie"),
            $category,

            FormField::addPanel("Contenu de la note")
            ->setIcon('fas fa-book')
            ->setHelp("Saisissez un contenu pour la note !"),
            $content,

            FormField::addPanel("Utilisateur")
            ->setIcon('fas fa-user')
            ->setHelp("Saisissez un utilisateur !"),
            $user
            ->hideOnIndex(),

        ];
        } else{
            return [
            // IdField::new('id')
            // ->onlyOnDetail(), //cache id sur le formulaire edit et add livre
            
            FormField::addPanel('Titre de la note')
            ->setIcon('fas fa-book')
            ->setHelp("Saisissez le titre de la note"),
            $title,

            FormField::addPanel('Categorie')
            ->setIcon('fas fa-book')
            ->setHelp("choisissez la catégorie"),
            $category,

            FormField::addPanel("Contenu de la note")
            ->setIcon('fas fa-book')
            ->setHelp("Saisissez un contenu pour la note !"),
            $content,

            FormField::addPanel("Utilisateur")
            ->setIcon('fas fa-user')
            ->setHelp("Saisissez un utilisateur !"),
            $user,

        ];
            
        }


    }

}
