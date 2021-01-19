<?php

namespace App\Providers;

use App\Category;
use App\Genre;
use App\Quality;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        View::share("categories",Category::latest()->get());
        View::share("genres",Genre::latest()->get());
        View::share("qualities",Quality::latest()->get());
    }
}
