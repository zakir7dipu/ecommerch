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

//Route::get('/', function () {
//    return view('welcome');
//});

Route::get('/','Client\ClientController@index')->name('client.home');
Route::get('/{slag}/cat','Client\ClientController@category_page')->name('client.category');
Route::get('/{slag}/sub','Client\ClientController@subCategory_page')->name('client.subCategory');
Route::get('/{slag}/prot','Client\ClientController@single_product_page')->name('client.product');

//get product color
Route::get('/product-color/{color}','ProductColorController@ajaxShow')->name('product.color');

//get product color
Route::get('/product-size/{size}','ProductSizeController@ajaxShow')->name('product.size');

//add to cart
Route::get('/add-to-cart','Client\ClientController@cart_page')->name('client.add-to-cart');
Route::get('/add-to-cart/{rowId}','AddToCartController@destroy')->name('addToCart.delete');
Route::post('/add-to-cart','AddToCartController@addToCart')->name('addToCart.store');
Route::post('/cart-update/{rowId}','AddToCartController@update')->name('cart.update');

//checkout
Route::get('/checkout','Client\ClientController@checkout_page')->name('client.checkout');

//review
Route::post('/review/{product}','ReviewController@store')->name('review.store');

//adout us
Route::get('/about-us','Client\ClientController@aboutUs')->name('client.about-us');
//contact us
Route::get('/for-contact','Client\ClientController@contactUs')->name('client.contact-us');

Auth::routes(['verify'=>true]);

Route::get('/home', 'HomeController@index')->name('home');

Route::group(['prefix'=>'admin','middleware'=>['auth','admin','verified']],function (){
    Route::get('/dashboard','Admin\AdminController@index')->name('admin.dashboard');
    Route::get('/dash-category','Admin\AdminController@product_category')->name('admin.category');
    Route::get('/dash-store-product','Admin\AdminController@store_product')->name('admin.store-product');
    Route::get('/dash-all-product','Admin\AdminController@all_products')->name('admin.all-product');
    Route::get('/dash-main-slider','Admin\AdminController@main_slider')->name('admin.main-slider');
    Route::get('/dash-menu-slider','Admin\AdminController@menu_slider')->name('admin.menu-slider');
    Route::get('/contact-info','Admin\AdminController@contact_info')->name('admin.contact-info');
    Route::get('/navigation','Admin\AdminController@navigation')->name('admin.navigation');
    Route::get('/social-share','Admin\AdminController@setSocialShare')->name('admin.social-share');

    Route::resource('/category','CategoryController', [
        'only' => ['store', 'edit', 'update']
    ]);
    Route::resource('/subCategory','SubCategoryController', [
        'only' => ['store', 'edit', 'update']
    ]);
    Route::resource('/product','ProductController', [
        'only' => ['store', 'show','edit', 'update', 'destroy']
    ]);
    Route::resource('/mainBannerScroll','MainBannerScrollController', [
        'only' => ['store', 'update']
    ]);
    Route::resource('/menuSlider','MenuSliderController', [
        'only' => ['store', 'update']
    ]);

    Route::post('destroy-category/{category}','CategoryController@destroy')->name('category.destroy');
    Route::post('update-category-index','CategoryController@update_category_index')->name('update.category-index');
    Route::post('destroy-subcategory/{subCategory}','SubCategoryController@destroy')->name('subcategory.destroy');
    Route::post('update-subcategory-index','SubCategoryController@update_subcategory_index')->name('update.subcategory-index');
    Route::post('/store-in-logo','GalleryController@store_logo')->name('store.logo');
    Route::post('/modify-contact','ContactInfoController@modifyContact')->name('admin.modify-contact');
    Route::post('/modify-customer-support','CustomerSupportController@modifyCustomerSupport')->name('admin.modify-customer-support');
    Route::post('/add-social-share','SocialShareLinksController@socialShareLinks')->name('admin.add-social-share');
});
