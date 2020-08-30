<?php

namespace App\Http\Controllers\Admin;

use App\Category;
use App\Http\Controllers\Controller;
use App\MainBannerScroll;
use App\MenuSlider;
use App\Product;
use App\SubCategory;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth','verified']);
    }

    public function index()
    {
        return view('admin.admin-dashboard');
    }

    public function product_category()
    {
        $categories = Category::orderBy('index','asc')->get();
        return view('admin.catrgory',compact('categories'));
    }

    public function store_product()
    {
        $categories = Category::orderBy('index','asc')->get();
        return view('admin.product',compact('categories'));
    }

    public function all_products()
    {
        $categories = Category::orderBy('index','asc')->get();
        $products_count = Product::all()->count();
        return view('admin.all-products',compact('categories','products_count'));
    }

    public function main_slider()
    {
        $banner_sliders = MainBannerScroll::all();
        return view('admin.main-slider',compact('banner_sliders'));
    }

    public function menu_slider()
    {
        $menu_sliders = MenuSlider::all();
        return view('admin.menu-slider',compact('menu_sliders'));
    }
}
