@extends('layouts.master-client')

@section('page-css')
    <link rel="stylesheet" href="{{ asset('css/custome-product-page.css') }}">
@endsection

@section('content')
    <div class="container">
        <div class="row ">
            <div id="column-left" class="col-sm-4 col-md-4 col-lg-3 ">
                <div id="category-menu" class="navbar collapse in  mb_40" aria-expanded="true" style="" role="button">
                    @include('layouts.client-nav-category-aside')
                </div>

                <div class="left_banner left-sidebar-widget mt_30 mb_50">
{{--                    <a href="#">--}}
                    @foreach($ads as $ad)
                        @if($ad->name == 'add4')
                            @if($ad->image != null)
                                <img src="{{ asset('upload/images/advertise_image/'.$ad->image) }}" alt="Left Banner" class="img-responsive" />
                            @else
                                <p>{!! $ad->embed_code !!}</p>
                            @endif
                        @endif
                    @endforeach
{{--                    </a> --}}
                </div>
            </div>

            <div class="col-sm-8 col-md-8 col-lg-9 mtb_30">
                <!-- =====  BANNER STRAT  ===== -->
                <div class="breadcrumb ptb_20">
                    <h1>{{ $category->category_name }}</h1>
                    <ul>
                        <li><a href="{{ route('client.home') }}">Home</a></li>
                        <li class="active">{{ $category->category_name }}</li>
                    </ul>
                </div>
                <!-- =====  BREADCRUMB END===== -->

                <div class="row" style="margin: 15px;">
                    @foreach($subCategorise as $subCategory)
                        @if(count( $subCategory->products) > 4)
                            <div id="product-tab" class="mt_40">
                                <a href="{{ route('client.subCategory',$subCategory->sub_category_slag) }}">
                                    <div class="heading-part mb_20 ">
                                        <h2 class="main_title">{{ $subCategory->name }} {{ count($subCategory->products) }} Items</h2>
                                        <br>
                                        <h4></h4>
                                    </div>
                                </a>

                                <div class="tab-content clearfix box">
                                    <div class="tab-pane active" id="nArrivals">
                                        <div class="nArrivals owl-carousel">
                                            @php
                                                $i=0;
                                                $products = $subCategory->products()
                                                    ->where('status',1)
                                                    ->get();
                                            @endphp
                                            @foreach($products as $product)
                                                <div class="product-grid6">
                                                    <div class="product-image6">
                                                        <a href="{{ route('client.product',$product->slag) }}">
                                                            <img class="pic-1" src="{{ asset('upload/images/category_images/'.$product->image) }}">
                                                        </a>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3 class="title"><a href="{{ route('client.product',$product->slag) }}">{{ substr($product->name,0,15) }}</a></h3>
                                                        <div class="price">
                                                            @if($product->discount != null)
                                                                @php
                                                                    $price = $product->price - ($product->price*$product->discount)/100;
                                                                @endphp
                                                                {{ str_replace('.00','',$price) }}.00৳
                                                                <span>{{ str_replace('.00','',$product->price) }}.00৳</span>
                                                            @else
                                                                {{ str_replace('.00','',$product->price) }}.00৳
                                                            @endif
                                                        </div>
                                                    </div>
                                                    <ul class="social">
                                                        <li><a href="" data-tip="Buy Now"><i class="fa fa-shopping-bag"></i></a></li>
                                                        <li><a href="javascript:void (0)" data-tip="Add to Cart" class="addToCarthomeBtn"><i class="fa fa-shopping-cart"></i><span style="display: none !important;">{{ $product->slag }}</span></a></li>
                                                    </ul>
                                                </div>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endif
                    @endforeach
                </div>
            </div>
        </div>

        <div id="brand_carouse" class="ptb_30 text-center">
            <div class="type-01">
                <div class="heading-part mb_20 ">
                    <h2 class="main_title">Brand Logo</h2>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="brand owl-carousel ptb_20">
                            <div class="item text-center"> <a href="#"><img src="/client-assets/images/brand/brand1.png" alt="Disney" class="img-responsive" /></a> </div>
                            <div class="item text-center"> <a href="#"><img src="/client-assets/images/brand/brand2.png" alt="Dell" class="img-responsive" /></a> </div>
                            <div class="item text-center"> <a href="#"><img src="/client-assets/images/brand/brand3.png" alt="Harley" class="img-responsive" /></a> </div>
                            <div class="item text-center"> <a href="#"><img src="/client-assets/images/brand/brand4.png" alt="Canon" class="img-responsive" /></a> </div>
                            <div class="item text-center"> <a href="#"><img src="/client-assets/images/brand/brand5.png" alt="Canon" class="img-responsive" /></a> </div>
                            <div class="item text-center"> <a href="#"><img src="/client-assets/images/brand/brand6.png" alt="Canon" class="img-responsive" /></a> </div>
                            <div class="item text-center"> <a href="#"><img src="/client-assets/images/brand/brand7.png" alt="Canon" class="img-responsive" /></a> </div>
                            <div class="item text-center"> <a href="#"><img src="/client-assets/images/brand/brand8.png" alt="Canon" class="img-responsive" /></a> </div>
                            <div class="item text-center"> <a href="#"><img src="/client-assets/images/brand/brand9.png" alt="Canon" class="img-responsive" /></a> </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('page-script')
    <script src="{{ asset('js/add-to-cart.js') }}"></script>
    <script !src="">
        function addToCartPostFormHome(itemSlag,itemQty) {
            $.ajax({
                type: 'Post',
                url: '/add-to-cart',
                data: {
                    "_token": "{{ csrf_token() }}",
                    'slag' : itemSlag,
                    'qty' : itemQty,
                },
                success: function (data) {
                    // console.log(data);
                    location.reload();
                }
            });
        }
    </script>
@endsection
