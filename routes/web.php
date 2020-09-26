<?php

use Illuminate\Support\Facades\Route;

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


Route::get('/', 'DefaultController@index');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/questionnaire/list', 'QuestionnaireController@available')->name('questionnaire.list');
Route::get('/questionnaire/filled', 'QuestionnaireController@filled')->name('questionnaire.filled');
Route::get('/questionnaire/answers', 'QuestionnaireController@answers')->name('questionnaire.answers');
Route::post('/questionnaire/answers', 'QuestionnaireController@answers')->name('questionnaire.answers.post');
Route::post('/questionnaire/save', 'QuestionnaireController@save')->name('questionnaire.save');

