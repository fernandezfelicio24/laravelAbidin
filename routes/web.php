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

Route::group(['middleware'=>'auth'],function(){
	Route::get('/dashboard','BarangController@ambildata');
Route::get('/login','BarangController@login');
Route::get('/postingan','BarangController@postingan');
Route::get('/user','BarangController@user');
Route::get('/kategori','BarangController@kategori');
Route::get('/notifications','BarangController@notifications');
Route::POST('/masukandata','BarangController@insert');

Route::get('/hapus/{id}','BarangController@hapus');


Route::get('/edit/{id}','BarangController@edit');
Route::POST('/updatedata/{id}','BarangController@update');

Route::get('/kategori/{id}','BarangController@kategori');
});
Route::get('/artikel/{id}/artikel','BarangController@artikel');
Route::get('/blog','BarangController@datablog');
Route::get('/viewkategori/{id}','BarangController@viewkategori');
Route::get('/login','AuthController@login')->name('login');
Route::post('/postlogin','AuthController@postlogin');
Route::get('/logout','AuthController@logout');
Route::get('/about','BarangController@about');
Route::get('/','BarangController@datablog');
