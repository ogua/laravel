<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Photo;
use Faker\Generator as Faker;

$factory->define(Photo::class, function (Faker $faker) {
    return [
        "file_name" => $faker->name."."."jpg",
        "article_id" => \App\Article::all()->random()->id
    ];
});
