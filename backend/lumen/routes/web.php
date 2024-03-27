<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});

// $router->get('/books', 'BookController@getAll');
// $router->get('/books/{id}', 'BookController@getOne');
// $router->post('/books/add', 'BookController@save');
// $router->delete('/books/delete', 'BookController@delete');



$router->get('/album', 'AlbumController@getAll');
$router->get('/album/{id}', 'AlbumController@getOne');
