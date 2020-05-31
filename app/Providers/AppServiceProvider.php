<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;//Acrescentado para editar o tamanho da string no BD.

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
        //Para editar o tamanho da string no BD e assim não ocorrer erro por falta de espaço para rodar o comando Migrate.
        Schema::defaultStringLength(191);
    }
}