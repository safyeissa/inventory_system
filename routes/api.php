<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\InventoryItemController;
use App\Http\Controllers\StockTransferController;
use App\Http\Controllers\WarehouseController;


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

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });



Route::post('/login', [AuthController::class, "login"]);
Route::post('/register', [AuthController::class, "register"]);


Route::get('/inventory-items', [InventoryItemController::class, 'index']);
Route::post('/stock-transfers', [StockTransferController::class, 'store'])->middleware('auth:sanctum');
Route::get('/warehouses/{id}/inventory-items', [WarehouseController::class, 'inventoryItems']);


//new line