<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Visitor;
use Faker\Generator as Faker;

$factory->define(Visitor::class, function (Faker $faker) {
    return [
        'is_user' => 1,
        "user_id" => \App\User::all()->random()->id,
        "article_id" => \App\Article::all()->random()->id
    ];
});
