<?php

namespace App\Http\Controllers\Client;

use App\AboutCompany;
use App\Advertisement;
use App\Category;
use App\Company;
use App\ContactInfo;
use App\CustomersOrders;
use App\CustomerSupport;
use App\Gallery;
use App\Geolocation;
use App\Http\Controllers\Controller;
use App\MainBannerScroll;
use App\MenuSlider;
use App\Product;
use App\SocialShareLinks;
use App\SubCategory;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ClientController extends Controller
{
    public function index()
    {
        $categories = Category::orderBy('index', 'asc')->get();
        if (count(Category::all()) < 3) {
            $collections = null;
        } else {
            $collections = Category::all()->random(3);
        }

        $logo = Gallery::where('name', 'Logo')->first()->image;
        $banners = MainBannerScroll::all();
        $menu_sliders = MenuSlider::all();
        $contactInfo = ContactInfo::find(1);
        $customerCare = CustomerSupport::find(1);
        $cartCount = Cart::count();
        $cartItems = Cart::content();
        $company = Company::find(1);
        $facebook = SocialShareLinks::where('name', 'facebook')->first();
        $instagram = SocialShareLinks::where('name', 'instagram')->first();
        $pinterest = SocialShareLinks::where('name', 'pinterest')->first();
        $whatsapp = SocialShareLinks::where('name', 'whatsapp')->first();
        $ads = Advertisement::all();
//        $cartSubTotal = Cart::subtotal($decimals, $decimalSeperator, $thousandSeperator);
        $countProducts = Product::all()
            ->where('status', 1)
            ->count();

        if ($countProducts >= 16) {

            $products = Product::all()
                ->where('status', 1)
                ->random(16);

        } elseif ($countProducts >= 12) {
            $products = Product::all()
                ->where('status', 1)
                ->random(12);
        } else {
            $products = Product::all()
                ->where('status', 1)
                ->get();
        }

        if ($company->status == 1) {
            return view('client.client-home', compact('categories', 'collections', 'logo', 'banners', 'menu_sliders', 'contactInfo', 'customerCare', 'cartCount', 'cartItems', 'company', 'facebook', 'instagram', 'pinterest', 'whatsapp', 'ads', 'products'));
        } else{
            return view('error-pages.404-error');
        }
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
        $contactInfo = ContactInfo::find(1);
        $cartCount = Cart::count();
        $cartItems = Cart::content();
        $company = Company::find(1);
        $facebook = SocialShareLinks::where('name', 'facebook')->first();
        $instagram = SocialShareLinks::where('name', 'instagram')->first();
        $pinterest = SocialShareLinks::where('name', 'pinterest')->first();
        $whatsapp = SocialShareLinks::where('name', 'whatsapp')->first();
        $ads = Advertisement::all();
//        *******
        $category_id = Category::where('category_slag',$slag)->first()->id;
        $category = Category::find($category_id);
        $subCategorise = $category->subcotegorise()->orderBy('index','asc')->get();

        return view('client.category-page',compact('categories','collections','logo','banners','menu_sliders','contactInfo','cartCount','cartItems','company','whatsapp', 'ads','pinterest','facebook','instagram','subCategorise','category'));

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
        $contactInfo = ContactInfo::find(1);
        $cartCount = Cart::count();
        $cartItems = Cart::content();
        $company = Company::find(1);
        $facebook = SocialShareLinks::where('name', 'facebook')->first();
        $instagram = SocialShareLinks::where('name', 'instagram')->first();
        $pinterest = SocialShareLinks::where('name', 'pinterest')->first();
        $whatsapp = SocialShareLinks::where('name', 'whatsapp')->first();
        $ads = Advertisement::all();
//        *******
        $subCategory_id = SubCategory::where('sub_category_slag',$slag)->first()->id;
        $subCategory = SubCategory::find($subCategory_id);

        $products = $subCategory->products()
            ->where('status', 1)
            ->paginate(8);


        return view('client.sub_category-page',compact('categories','collections','logo','banners','menu_sliders','contactInfo','cartCount','cartItems','company','facebook','instagram','pinterest','whatsapp', 'ads','subCategory','products'));

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
        $contactInfo = ContactInfo::find(1);
        $cartCount = Cart::count();
        $cartItems = Cart::content();
        $company = Company::find(1);
        $facebook = SocialShareLinks::where('name', 'facebook')->first();
        $instagram = SocialShareLinks::where('name', 'instagram')->first();
        $pinterest = SocialShareLinks::where('name', 'pinterest')->first();
        $whatsapp = SocialShareLinks::where('name', 'whatsapp')->first();
        $ads = Advertisement::all();
//        *******
        $product_id = Product::where('slag',$slag)->first()->id;
        $product = Product::find($product_id);
        $subCategory = SubCategory::where('id',$product->sub_category_id)->first();
//        dd($subcategory->category);
        return view('client.single-product-page',compact('categories','collections','logo','banners','menu_sliders','contactInfo','cartCount','cartItems','company','facebook','instagram','pinterest','whatsapp', 'ads','product','subCategory'));

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
        $contactInfo = ContactInfo::find(1);
        $cartCount = Cart::count();
        $company = Company::find(1);
        $facebook = SocialShareLinks::where('name', 'facebook')->first();
        $instagram = SocialShareLinks::where('name', 'instagram')->first();
        $pinterest = SocialShareLinks::where('name', 'pinterest')->first();
        $whatsapp = SocialShareLinks::where('name', 'whatsapp')->first();
//        *******
        $cartItems = Cart::content();
//        dd($cartItems);
        return view('client.cart-page',compact('categories','collections','logo','menu_sliders','contactInfo','cartCount','cartItems','company','facebook','instagram','pinterest','whatsapp'));
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
        $contactInfo = ContactInfo::find(1);
        $cartCount = Cart::count();
        $cartItems = Cart::content();
        $company = Company::find(1);
        $facebook = SocialShareLinks::where('name', 'facebook')->first();
        $instagram = SocialShareLinks::where('name', 'instagram')->first();
        $pinterest = SocialShareLinks::where('name', 'pinterest')->first();
        $whatsapp = SocialShareLinks::where('name', 'whatsapp')->first();
//        *******
//        dd($cartItems);
        return view('client.checkout-page',compact('categories','collections','logo','menu_sliders','contactInfo','cartCount','cartItems','company','facebook','instagram','pinterest','whatsapp'));
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
        $contactInfo = ContactInfo::find(1);
        $cartCount = Cart::count();
        $cartItems = Cart::content();
        $company = Company::find(1);
        $facebook = SocialShareLinks::where('name', 'facebook')->first();
        $instagram = SocialShareLinks::where('name', 'instagram')->first();
        $pinterest = SocialShareLinks::where('name', 'pinterest')->first();
        $whatsapp = SocialShareLinks::where('name', 'whatsapp')->first();
        $ads = Advertisement::all();
        $banners = MainBannerScroll::all();
        $aboutCompany = AboutCompany::find(1)->about_us;
        return view('client.about-company',compact('categories','collections','logo','menu_sliders','contactInfo','cartCount','cartItems','company','facebook','instagram','pinterest','whatsapp', 'ads','banners','aboutCompany'));
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
        $contactInfo = ContactInfo::find(1);
        $customerSupport = CustomerSupport::find(1);
        $cartCount = Cart::count();
        $cartItems = Cart::content();
        $company = Company::find(1);
        $facebook = SocialShareLinks::where('name', 'facebook')->first();
        $instagram = SocialShareLinks::where('name', 'instagram')->first();
        $pinterest = SocialShareLinks::where('name', 'pinterest')->first();
        $whatsapp = SocialShareLinks::where('name', 'whatsapp')->first();
        $ads = Advertisement::all();
        $banners = MainBannerScroll::all();
        return view('client.for-contact',compact('categories','collections','logo','menu_sliders','contactInfo', 'customerSupport','cartCount','cartItems','company','banners','facebook','instagram','whatsapp', 'ads','pinterest'));
    }

    public function navigationLocation()
    {
        $locationCount = Geolocation::find(1);
        return response()->json($locationCount);
    }

    public function invoice($orderNo)
    {
        $logo = Gallery::where('name','Logo')->first()->image;
        $order = CustomersOrders::where('order_no',$orderNo)->first();
        $company = Company::find(1);
        $contactInfo = ContactInfo::find(1);
//        dd($order);
        return view('client.invoice',compact('logo','order','company','contactInfo'));
    }
}
