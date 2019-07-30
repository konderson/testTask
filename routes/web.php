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
Route::group(['middleware'=>'auth'],function () {
    Route::group(['middleware' => 'admin'], function () {


        Route::get('/admin', 'AdminPanelController@index');
        Route::get('/delete/{id}', 'AdminPanelController@deleteEntry')->middleware('role');;
    });
});
Route::get('/', 'IndexController@index');

Route::get('/event/{id}', 'EventController@index');
Route::post('/event', 'EventController@save')->name('event');

Route::get('sendbasicemail','MailController@basic_email');
Route::get('sendhtmlemail','MailController@html_email');
Route::get('sendattachmentemail','MailController@attachment_email');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
