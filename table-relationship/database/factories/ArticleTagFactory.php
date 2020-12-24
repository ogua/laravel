<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\ArticleTag;
use Faker\Generator as Faker;

$factory->define(ArticleTag::class, function (Faker $faker) {
    return [
        "article_id"=>\App\Article::all()->random()->id,
        "tag_id" => \App\Tag::all()->random()->id
    ];
});
