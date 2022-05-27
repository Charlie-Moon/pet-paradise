<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Web\ContactController;
use App\Http\Controllers\Web\HomeController;
use App\Http\Controllers\Web\PostController;
use App\Http\Controllers\Web\PageController;
use App\Http\Controllers\Web\ProductController;
use App\Http\Controllers\Web\SearchController;

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
//     return view('index');
// });

Route::get('/', [HomeController::class, 'index']); 
Route::get('/contact', [ContactController::class, 'index']);
Route::get('/page/{slug}', [PageController::class, 'index']);
Route::get('/search', [SearchController::class, 'index']);


Route::get('/services', [PostController::class, 'index']);
Route::get('/services/{slug}', [PostController::class, 'detail']);


Route::get('/products', [ProductController::class, 'index']);
Route::get('/products/{slug}', [ProductController::class, 'detail']);





Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
