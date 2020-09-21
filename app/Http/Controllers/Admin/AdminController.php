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

    public function contact_info()
    {
        $contactInfo = ContactInfo::find(1);
        $customerSupport = CustomerSupport::find(1);
        return view('admin.contact-info',compact('contactInfo','customerSupport'));
    }

    public function navigation()
    {
        return view('admin.navigation');
    }

    public function setSocialShare(Request $request)
    {
        $facebook = SocialShareLinks::where('name', 'facebook')->first();
        $instagram = SocialShareLinks::where('name', 'instagram')->first();
        $pinterest = SocialShareLinks::where('name', 'pinterest')->first();
        $whatsapp = SocialShareLinks::where('name', 'whatsapp')->first();
        return view('admin.social-share',compact('facebook','instagram','pinterest','whatsapp'));
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
        return view('admin.site-setting',compact('countries','company_name','aboutCompany','user'));
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
        $orderCount = CustomersOrders::where('status',1)
            ->orderBy('id','desc')
            ->count();

        return view('admin.new-order',compact('orders','orderCount'));
    }
}
