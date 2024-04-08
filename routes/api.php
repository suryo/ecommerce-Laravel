<?php

use App\Http\Controllers\Api\CategoryController;
use App\Http\Controllers\Api\DashboardController;

use App\Http\Controllers\Api\LoginController;
use App\Http\Controllers\Api\LogoutController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


use App\Http\Controllers\Api\UserController;

use App\Http\Controllers\Api\ProductController;
use App\Http\Controllers\Api\CategoryProductController;

use App\Http\Controllers\Api\CartController;

// use App\Http\Controllers\Api\LogoutController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('login', [LoginController::class, 'index']);

Route::get('/users', [UserController::class, 'index']);
Route::get('/users/auth', [UserController::class, 'authUser']);
Route::get('/users/{id}', [UserController::class, 'show']);
Route::get('/users/search', [UserController::class, 'search']);
Route::get('/users/filter', [UserController::class, 'filter']);
Route::get('/users/limit-skip', [UserController::class, 'limitSkip']);
Route::get('/users/{userId}/carts', [UserController::class, 'userCarts']);
Route::get('/users/{userId}/posts', [UserController::class, 'userPosts']);
Route::get('/users/{userId}/todos', [UserController::class, 'userTodos']);
Route::post('/users', [UserController::class, 'store']);
Route::put('/users/{id}', [UserController::class, 'update']);
Route::delete('/users/{id}', [UserController::class, 'destroy']);

Route::get('/products', [ProductController::class, 'index']);
Route::get('/products/{id}', [ProductController::class, 'show']);
Route::post('/products', [ProductController::class, 'store']);
Route::put('/products/{id}', [ProductController::class, 'update']);
Route::delete('/products/{id}', [ProductController::class, 'destroy']);
Route::get('/products/search', [ProductController::class, 'search']);
Route::get('/products/limit-skip', [ProductController::class, 'limitSkip']);
Route::get('/categories', [CategoryProductController::class, 'index']);
Route::get('/categories/{categoryName}/products', [CategoryProductController::class, 'productsByCategory']);

Route::get('/carts', [CartController::class, 'index']);
Route::get('/carts/{id}', [CartController::class, 'show']);
Route::get('/users/{userId}/carts', [CartController::class, 'userCarts']);
Route::post('/carts', [CartController::class, 'store']);
Route::put('/carts/{id}', [CartController::class, 'update']);
Route::delete('/carts/{id}', [CartController::class, 'destroy']);

Route::group(['middleware' => ['jwt.verify']], function () {
    Route::get('/dashboard', [DashboardController::class, 'index']);
    Route::post('/logout', [LogoutController::class, 'index']);

});