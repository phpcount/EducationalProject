<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Post;
use Faker\Generator as Faker;
use Illuminate\Support\Str as Hlp;

$factory->define(Post::class, function (Faker $faker) {
    $title = $faker->realText(rand(10, 40));
    $short_title = Hlp::length($title) > 30 ? Hlp::substr($title, 0, 27) .'...' : $title;
    $created = $faker->dateTimeBetween('-30 days', '-1 days');


    return [
        'title' => $title,
        'short_title' => $short_title,
        'author_id' => rand(1, 4),
        'description' => $faker->realText(rand(100, 350)),
        'created_at' => $created,
        'updated_at' => $created,


    ];
});
