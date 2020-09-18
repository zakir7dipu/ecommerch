<?php

namespace App\Http\Controllers\Client;

use App\Category;
use App\Gallery;
use App\Http\Controllers\Controller;
use App\MainBannerScroll;
use App\MenuSlider;
use App\Product;
use App\SubCategory;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ClientController extends Controller
{
    public function index()
    {
        $categories = Category::orderBy('index','asc')->get();
        if (count( Category::all()) < 3){
            $collections = null;
        }else{
            $collections = Category::all()->random(3);
        }

        $logo = Gallery::where('name','Logo')->first()->image;
        $banners = MainBannerScroll::all();
        $menu_sliders = MenuSlider::all();
        $cartCount = Cart::count();
        $cartItems = Cart::content();
//        $cartSubTotal = Cart::subtotal($decimals, $decimalSeperator, $thousandSeperator);
        $countProducts = Product::all()
            ->where('status',1)
            ->count();

        if ($countProducts >= 16) {

            $products = Product::all()
                ->where('status',1)
                ->random(16);

        }elseif ($countProducts >= 12){
            $products = Product::all()
                ->where('status',1)
                ->random(12);
        }else{
            $products = Product::all()
                ->where('status',1)
                ->get();
        }
        return view('client.client-home',compact('categories','collections','logo','banners','menu_sliders','cartCount','cartItems','products'));
    }

    public function category_page($slag)
    {
//        *******
        $categories = Category::orderBy('index','asc')->get();
        if (count( Category::all()) < 3){
            $collections = null;
        }else{
            $collections = Category::all()->random(3);
        }

        $logo = Gallery::where('name','Logo')->first()->image;
        $banners = MainBannerScroll::all();
        $menu_sliders = MenuSlider::all();
        $cartCount = Cart::count();
        $cartItems = Cart::content();
//        *******
        $category_id = Category::where('category_slag',$slag)->first()->id;
        $category = Category::find($category_id);
        $subCategorise = $category->subcotegorise()->orderBy('index','asc')->get();

        return view('client.category-page',compact('categories','collections','logo','banners','menu_sliders','cartCount','cartItems','subCategorise','category'));

    }

    public function subCategory_page($slag)
    {
//        *******
        $categories = Category::orderBy('index','asc')->get();
        if (count( Category::all()) < 3){
            $collections = null;
        }else{
            $collections = Category::all()->random(3);
        }

        $logo = Gallery::where('name','Logo')->first()->image;
        $banners = MainBannerScroll::all();
        $menu_sliders = MenuSlider::all();
        $cartCount = Cart::count();
        $cartItems = Cart::content();
//        *******
        $subCategory_id = SubCategory::where('sub_category_slag',$slag)->first()->id;
        $subCategory = SubCategory::find($subCategory_id);

        $products = $subCategory->products()
            ->where('status', 1)
            ->paginate(8);


        return view('client.sub_category-page',compact('categories','collections','logo','banners','menu_sliders','cartCount','cartItems','subCategory','products'));

    }

    public function single_product_page($slag)
    {
//        *******
        $categories = Category::orderBy('index','asc')->get();
        if (count( Category::all()) < 3){
            $collections = null;
        }else{
            $collections = Category::all()->random(3);
        }

        $logo = Gallery::where('name','Logo')->first()->image;
        $banners = MainBannerScroll::all();
        $menu_sliders = MenuSlider::all();
        $cartCount = Cart::count();
        $cartItems = Cart::content();
//        *******
        $product_id = Product::where('slag',$slag)->first()->id;
        $product = Product::find($product_id);
        $subCategory = SubCategory::where('id',$product->sub_category_id)->first();
//        dd($subcategory->category);
        return view('client.single-product-page',compact('categories','collections','logo','banners','menu_sliders','cartCount','cartItems','product','subCategory'));

    }

    public function cart_page()
    {
//        *******
        $categories = Category::orderBy('index','asc')->get();
        if (count( Category::all()) < 3){
            $collections = null;
        }else{
            $collections = Category::all()->random(3);
        }

        $logo = Gallery::where('name','Logo')->first()->image;
        $menu_sliders = MenuSlider::all();
        $cartCount = Cart::count();
//        *******
        $cartItems = Cart::content();
//        dd($cartItems);
        return view('client.cart-page',compact('categories','collections','logo','menu_sliders','cartCount','cartItems'));
    }

    public function checkout_page()
    {
//        *******
        $categories = Category::orderBy('index','asc')->get();
        if (count( Category::all()) < 3){
            $collections = null;
        }else{
            $collections = Category::all()->random(3);
        }

        $logo = Gallery::where('name','Logo')->first()->image;
        $menu_sliders = MenuSlider::all();
        $cartCount = Cart::count();
        $cartItems = Cart::content();
//        *******
//        dd($cartItems);
        return view('client.checkout-page',compact('categories','collections','logo','menu_sliders','cartCount','cartItems'));
    }

    public function aboutUs()
    {
        $categories = Category::orderBy('index','asc')->get();
        if (count( Category::all()) < 3){
            $collections = null;
        }else{
            $collections = Category::all()->random(3);
        }

        $logo = Gallery::where('name','Logo')->first()->image;
        $menu_sliders = MenuSlider::all();
        $cartCount = Cart::count();
        $cartItems = Cart::content();
        $banners = MainBannerScroll::all();
        return view('client.about-company',compact('categories','collections','logo','menu_sliders','cartCount','cartItems','banners'));
    }

    public function contactUs()
    {
        $categories = Category::orderBy('index','asc')->get();
        if (count( Category::all()) < 3){
            $collections = null;
        }else{
            $collections = Category::all()->random(3);
        }

        $logo = Gallery::where('name','Logo')->first()->image;
        $menu_sliders = MenuSlider::all();
        $cartCount = Cart::count();
        $cartItems = Cart::content();
        $banners = MainBannerScroll::all();
        return view('client.for-contact',compact('categories','collections','logo','menu_sliders','cartCount','cartItems','banners'));
    }
}
