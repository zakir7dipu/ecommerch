<?php

namespace App\Http\Controllers\Admin;

use App\AboutCompany;
use App\AllCountries;
use App\Category;
use App\Company;
use App\ContactInfo;
use App\CustomersOrders;
use App\CustomerSupport;
use App\Http\Controllers\Controller;
use App\MainBannerScroll;
use App\MenuSlider;
use App\Product;
use App\SocialShareLinks;
use App\SubCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth','verified']);
    }

    public function index()
    {
        $newOrderCount = CustomersOrders::where('status',1)
            ->count();
        return view('admin.admin-dashboard',compact('newOrderCount'));
    }

    public function product_category()
    {
        $categories = Category::orderBy('index','asc')->get();
        $newOrderCount = CustomersOrders::where('status',1)
            ->count();
        return view('admin.catrgory',compact('categories','newOrderCount'));
    }

    public function store_product()
    {
        $categories = Category::orderBy('index','asc')->get();
        $newOrderCount = CustomersOrders::where('status',1)
            ->count();
        return view('admin.product',compact('categories','newOrderCount'));
    }

    public function all_products()
    {
        $categories = Category::orderBy('index','asc')->get();
        $products_count = Product::all()->count();
        $newOrderCount = CustomersOrders::where('status',1)
            ->count();
        return view('admin.all-products',compact('categories','products_count','newOrderCount'));
    }

    public function main_slider()
    {
        $banner_sliders = MainBannerScroll::all();
        $newOrderCount = CustomersOrders::where('status',1)
            ->count();
        return view('admin.main-slider',compact('banner_sliders','newOrderCount'));
    }

    public function menu_slider()
    {
        $menu_sliders = MenuSlider::all();
        $newOrderCount = CustomersOrders::where('status',1)
            ->count();
        return view('admin.menu-slider',compact('menu_sliders','newOrderCount'));
    }

    public function contact_info()
    {
        $contactInfo = ContactInfo::find(1);
        $customerSupport = CustomerSupport::find(1);
        $newOrderCount = CustomersOrders::where('status',1)
            ->count();
        return view('admin.contact-info',compact('contactInfo','customerSupport','newOrderCount'));
    }

    public function navigation()
    {
        $newOrderCount = CustomersOrders::where('status',1)
            ->count();
        return view('admin.navigation',compact('newOrderCount'));
    }

    public function setSocialShare(Request $request)
    {
        $facebook = SocialShareLinks::where('name', 'facebook')->first();
        $instagram = SocialShareLinks::where('name', 'instagram')->first();
        $pinterest = SocialShareLinks::where('name', 'pinterest')->first();
        $whatsapp = SocialShareLinks::where('name', 'whatsapp')->first();
        $newOrderCount = CustomersOrders::where('status',1)
            ->count();
        return view('admin.social-share',compact('facebook','instagram','pinterest','whatsapp','newOrderCount'));
    }

    public function setting()
    {
        if (count(Company::all()) > 0) {
            $company_name = Company::find(1)->name;
        }else{
            $company_name = '';
        }
        $countries = AllCountries::orderBy('name','ASC')->get();
        if (count(AboutCompany::all()) > 0) {
            $aboutCompany = AboutCompany::find(1)->about_us;
        }else{
            $aboutCompany = '';
        }
        $user = Auth::user();
        $newOrderCount = CustomersOrders::where('status',1)
            ->count();
        return view('admin.site-setting',compact('countries','company_name','aboutCompany','user','newOrderCount'));
    }

    public function viewSeletedCountry()
    {
        $company = Company::find(1);
        $selectedCountries = [];
        foreach ($company->countries as $country){
            $selectedCountries[] = $country->id;
        }
        return response()->json($selectedCountries);
    }

    public function newOrders()
    {
        $orders = CustomersOrders::where('status',1)
            ->orderBy('id','desc')
            ->get();
        $newOrderCount = CustomersOrders::where('status',1)
            ->count();
        return view('admin.new-order',compact('orders','newOrderCount'));
    }

    public function allOrders()
    {
        $orders = CustomersOrders::orderBy('id','desc')
            ->get();
        $newOrderCount = CustomersOrders::where('status',1)
            ->count();
        $orderCount = CustomersOrders::count();
        return view('admin.all-order',compact('orders','orderCount','newOrderCount'));
    }
}
