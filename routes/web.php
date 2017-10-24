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

Route::get('/','MainController@main');
Route::get('/usl1','MainController@usl1');
Route::get('/usl2','MainController@usl2');
Route::get('/usl3','MainController@usl3');
Route::get('/usl4','MainController@usl4');
Route::get('/retable','MainController@reestr');
Route::get('/storage/{file}', function($file = null)
{
$path = storage_path().'/'.'public'.'/reestrs/'.$file_name;
if (file_exists($path)) {
return Response::download($path);
}
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
