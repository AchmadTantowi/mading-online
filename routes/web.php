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

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/', 'HomeController@welcome');

Route::get('/logout', 'HomeController@logout');

Auth::routes();

Route::get('/redirect', 'SocialAuthTwitterController@redirect');
Route::get('/callback', 'SocialAuthTwitterController@callback');

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/information/{id}', 'Admin\ContentController@viewContent');


Route::prefix('admin')->group(function () {
    Route::get('/dashboard', 'Admin\DashboardController@index');

    Route::get('/content', 'Admin\ContentController@index');
    Route::get('/content/add', 'Admin\ContentController@add');
    Route::post('/content/save-content', 'Admin\ContentController@saveContent');

    Route::get('/user', 'Admin\UserController@index');
});