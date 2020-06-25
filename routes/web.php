<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/* Test Route
Route::get('/', function () {
    return view('welcome');
});
*/

/*  Vue JS */
Route::view('/companies', 'companies.index');


Route::get('/', 'PostController@index')->name('home');
Route::redirect('/', '/post', 302);
Route::redirect('/home', '/post', 302);
Route::get('my-form','PostController@myform');
Route::post('my-form','PostController@myformPost');
Route::resource('/post', 'PostController');
/* Default methods of controller
Route::get('post/', 'PostController@index')->name('post.index');
Route::get('post/create/', 'PostController@create')->name('post.create');
Route::post('post/', 'PostController@store')->name('post.store');
Route::get('post/show/{id}', 'PostController@show')->name('post.show');
Route::get('post/edit/{id}', 'PostController@edit')->name('post.edit');
Route::patch('post/show/{id}', 'PostController@update')->name('post.update');
Route::delete('post/{id}', 'PostController@destroy')->name('post.destroy');
*/

Auth::routes();
Route::get('auth', 'Auth\LoginController@showLoginForm');
Route::post('auth', 'Auth\LoginController@loginAjax');
//Route::get('/home', 'HomeController@index')->name('home');
