<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use App\Entity\Category;
use App\Entity\Note;
use App\Entity\User;
use Faker\Factory;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $faker = Factory::create($fakerLocale = 'fr_FR');
        ///////////////////////////////////////////////
        $objectUser = [];
        for ($i = 0; $i < 100; $i++) {
            $user = new User();
            $user->setUsername($faker->userName())
                ->setPassword($faker->password());
            // On ajoute l'objet user dans le tableau
            array_push($objectUser, $user);
            // On persiste l'objet user
            $manager->persist($user);
        }

        //////////////////////////////////////////////
        $categories = [
            'Travail',
            'Bricolage',
            'Achats',
            'Administratif',
            'Formation'
        ];

        $objectCategory = [];

        for ($i = 0; $i < count($categories); $i++) {
            $category = new Category();
            $category->setName($categories[$i])
            ->setUser($objectUser[rand(0, 99)]);
            // On ajoute l'objet category dans le tableau
            array_push($objectCategory, $category);
            // On persiste l'objet category
            $manager->persist($category);
        }
       

        ///////////////////////////////////////////////
        $objectNote = [];
        for ($i = 0; $i < 100; $i++) {
            $note = new Note();
            $note->setTitle($faker->sentence(2))
                ->setContent($faker->sentence(10))
                ->setCategory($objectCategory[rand(0, 4)])
                ->setUser($objectUser[rand(0, 99)]);
            // On ajoute l'objet note dans le tableau
            array_push($objectNote, $note);
            // On persiste l'objet note
            $manager->persist($note);
        }

        $manager->flush();
    }
}
