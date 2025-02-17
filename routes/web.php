<?php

use App\Http\Controllers\ContactController;
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

// Route::get('/', function () {
//     return view('welcome');
// });

Route::prefix('contacts')->group(function () {
    Route::get('/', [ContactController::class, 'index'])->name('contacts.index');
    Route::get('/create', [ContactController::class, 'create'])->name('contacts.create');
    Route::post('/store', [ContactController::class, 'store'])->name('contacts.store');
    Route::get('/edit/{id}', [ContactController::class, 'edit'])->name('contacts.edit');
    Route::post('/update/{id}', [ContactController::class, 'update'])->name('contacts.update');
    Route::delete('/delete/{id}', [ContactController::class, 'destroy'])->name('contacts.destroy');
    Route::get('/import-bulk', [ContactController::class, 'showImportForm'])->name('contacts.import-bulk');
    Route::post('/import-bulk', [ContactController::class, 'importXML'])->name('contacts.import-bulk');
});
