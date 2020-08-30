<header id="header">

    <div class="header">
        <div class="container">
            <nav class="navbar">
{{--                logo--}}
                <div class="navbar-header mtb_20"> <a class="navbar-brand" href="{{ route('client.home') }}"> <img alt="HealthCared" src="{{ asset('upload/images/defoult_image/'.$logo) }}"> </a> </div>
{{--                logo--}}

                <div class="header-right pull-right mtb_50">
                    <button class="navbar-toggle pull-left" type="button" data-toggle="collapse" data-target=".js-navbar-collapse"> <span class="i-bar"><i class="fa fa-bars"></i></span></button>
{{--                    shopping cart--}}
                    <div class="shopping-icon">
                        <div class="cart-item " data-target="#cart-dropdown" data-toggle="collapse" aria-expanded="true" role="button">Item's : <span class="cart-qty">{{ strlen($cartCount) < 2 ? "0".$cartCount : $cartCount}}</span></div>
                        <div id="cart-dropdown" class="cart-menu collapse">
                            <ul>
                                <li>
                                    <table class="table table-striped">
                                        <tbody>
                                        <tr>
                                            <td class="text-center"><a href="#"><img src="/client-assets/images/product/70x84.jpg" alt="iPod Classic" title="iPod Classic"></a></td>
                                            <td class="text-left product-name"><a href="#">MacBook Pro</a>
                                                <span class="text-left price">$20.00</span>
                                                <input class="cart-qty" name="product_quantity" min="1" value="1" type="number">
                                            </td>
                                            <td class="text-center"><a class="close-cart"><i class="fa fa-times-circle"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td class="text-center"><a href="#"><img src="/client-assets/images/product/70x84.jpg" alt="iPod Classic" title="iPod Classic"></a></td>
                                            <td class="text-left product-name"><a href="#">MacBook Pro</a>
                                                <span class="text-left price">$20.00</span>
                                                <input class="cart-qty" name="product_quantity" min="1" value="1" type="number">
                                            </td>
                                            <td class="text-center"><a class="close-cart"><i class="fa fa-times-circle"></i></a></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </li>
                                <li>
                                    <table class="table">
                                        <tbody>
                                        <tr>
                                            <td class="text-right"><strong>Sub-Total</strong></td>
                                            <td class="text-right">$2,100.00</td>
                                        </tr>
                                        <tr>
                                            <td class="text-right"><strong>Eco Tax (-2.00)</strong></td>
                                            <td class="text-right">$2.00</td>
                                        </tr>
                                        <tr>
                                            <td class="text-right"><strong>VAT (20%)</strong></td>
                                            <td class="text-right">$20.00</td>
                                        </tr>
                                        <tr>
                                            <td class="text-right"><strong>Total</strong></td>
                                            <td class="text-right">$2,122.00</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </li>
                                <li>
                                    <form action="{{ route('client.add-to-cart') }}" method="Get">
                                        <input class="btn pull-left mt_10" value="View cart" type="submit">
                                    </form>
                                    <form action="http://html.lionode.com/healthcare/hc001/checkout_page.html">
                                        <input class="btn pull-right mt_10" value="Checkout" type="submit">
                                    </form>
                                </li>
                            </ul>
                        </div>
                    </div>
{{--                    shopping cart--}}

{{--                    search --}}
                    <div class="main-search pull-right">
                        <div class="search-overlay">
                            <!-- Close Icon -->
                            <a href="javascript:void(0)" class="search-overlay-close"></a>
                            <!-- End Close Icon -->
                            <div class="container">
                                <!-- Search Form -->
                                <form role="search" id="searchform" action="http://html.lionode.com/search" method="get">
                                    <label class="h5 normal search-input-label">Enter keywords To Search Entire Store</label>
                                    <input value="" name="q" placeholder="Search here..." type="search">
                                    <button type="submit"></button>
                                </form>
                                <!-- End Search Form -->
                            </div>
                        </div>
                        <div class="header-search"> <a id="search-overlay-btn"></a> </div>
                    </div>
{{--                    search--}}
                </div>

                <div class="collapse navbar-collapse js-navbar-collapse pull-right">
                    <ul id="menu" class="nav navbar-nav">
                        <li> <a href="{{ route('client.home') }}">Home</a></li>
                        @if($collections != null)
                            <!-- item for small devise -->
                        <li class="dropdown mega-dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="menuForSm">Shop </a>
                            <ul class="dropdown-menu mega-dropdown-menu row">
                                @php
                                    $i = 0;
                                @endphp
                                @foreach($categories as $category)
                                    @php
                                        $i++;
                                    @endphp
                                <li class="col-md-3">
                                    <ul>
                                        <li class="dropdown-header">{{ $category->category_name }}</li>
                                        @php
                                            $subcotegorise = $category->subcotegorise()->orderBy('index','asc')->get();
                                        @endphp
                                        @foreach($subcotegorise as $subcategory)
                                        <li><a href="{{ route('client.subCategory',$subcategory->sub_category_slag) }}">{{ $subcategory->name }}</a></li>
                                        @endforeach
                                    </ul>
                                </li>
                                @endforeach
                            </ul>
                        </li>

                            <!-- item for large devise -->
                        <li class="dropdown mega-dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="menuForLg">Shop </a>
                            <ul class="dropdown-menu mega-dropdown-menu row">
                                @php
                                    $i = 0;
                                @endphp
                                @foreach($collections as $category)
                                    @php
                                        $i++;
                                    @endphp
                                <li class="col-md-3">
                                    <ul>
                                        <li class="dropdown-header">{{ $category->category_name }}</li>
                                        @php
                                            $subcotegorise = $category->subcotegorise()->orderBy('index','asc')->get();
                                        @endphp
                                        @foreach($subcotegorise as $subcategory)
                                        <li><a href="{{ route('client.subCategory',$subcategory->sub_category_slag) }}">{{ $subcategory->name }}</a></li>
                                        @endforeach
                                    </ul>
                                </li>
                                    @if($i == 4)
                                        <hr>
                                    @endif
                                @endforeach
                                <li class="col-md-3">
                                    <ul>
                                        <li id="myCarousel" class="carousel slide" data-ride="carousel">
                                            <div class="carousel-inner">
                                                @php
                                                    $i = 0;
                                                @endphp
                                                @foreach($menu_sliders as $menu_slider)
                                                    @php
                                                        $i ++;
                                                    @endphp
                                                    @if($i == 1)
                                                        <div class="item active"> <a href="#"><img src="{{ asset('upload/images/defoult_image/'.$menu_slider->image) }}" class="img-responsive" alt="{{ $menu_slider->name }}"></a></div>
                                                    @else
                                                        <div class="item"> <a href="#"><img src="{{ asset('upload/images/defoult_image/'.$menu_slider->image) }}" class="img-responsive" alt="{{ $menu_slider->name }}"></a></div>
                                                    @endif
                                                <!-- End Item -->
                                                @endforeach
                                            </div>
                                            <!-- End Carousel Inner -->
                                        </li>
                                        <!-- /.carousel -->
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        @endif
                        <li> <a href="about.html">Track My Order</a></li>
                        <li> <a href="about.html">About us</a></li>
                    </ul>
                </div>
                <!-- /.nav-collapse -->
            </nav>
        </div>
    </div>

    <div class="header-bottom">
        <div class="container">
            <div class="row">
                <div class="col-sm-4 col-md-4 col-lg-3">
                    @if(count($categories) > 0)
                    <div class="category">
                        <div class="menu-bar" data-target="#category-menu,#category-menu-responsive" data-toggle="collapse" aria-expanded="true" role="button">
                            <h4 class="category_text">All categories</h4>
                            <span class="i-bar"><i class="fa fa-bars"></i></span></div>
                    </div>
{{--                    <div id="category-menu-responsive" class="navbar collapse " aria-expanded="true" style="" role="button">--}}
{{--                        @include('layouts.client-nav-aside')--}}
{{--                    </div>--}}
                    @endif
                </div>
                <div class="col-sm-8 col-md-8 col-lg-9">
                    <div class="header-bottom-right offers">
                        <div class="marquee"><span><i class="fa fa-circle" aria-hidden="true"></i>It's Sexual Health Week!</span>
                            <span><i class="fa fa-circle" aria-hidden="true"></i>Our 5 Tips for a Healthy Summer</span>
                            <span><i class="fa fa-circle" aria-hidden="true"></i>Sugar health at risk?</span>
                            <span><i class="fa fa-circle" aria-hidden="true"></i>The Olay Ranges - What do they do?</span>
                            <span><i class="fa fa-circle" aria-hidden="true"></i>Body fat - what is it and why do we need it?</span>
                            <span><i class="fa fa-circle" aria-hidden="true"></i>Can a pillow help you to lose weight?</span></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
{{--<div class="header-top">--}}
{{--    <div class="container">--}}
{{--        <div class="row">--}}
{{--            <div class="col-sm-6">--}}
{{--                <ul class="header-top-left">--}}
{{--                    <li class="language dropdown"> <span class="dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" role="button"> <img src="/client-assets/images/English-icon.gif" alt="img"> English <span class="caret"></span> </span>--}}
{{--                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">--}}
{{--                            <li><a href="#"><img src="/client-assets/images/English-icon.gif" alt="img"> English</a></li>--}}
{{--                            <li><a href="#"><img src="/client-assets/images/French-icon.gif" alt="img"> French</a></li>--}}
{{--                            <li><a href="#"><img src="/client-assets/images/German-icon.gif" alt="img"> German</a></li>--}}
{{--                        </ul>--}}
{{--                    </li>--}}
{{--                    <li class="currency dropdown"> <span class="dropdown-toggle" id="dropdownMenu12" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" role="button"> USD <span class="caret"></span> </span>--}}
{{--                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu12">--}}
{{--                            <li><a href="#">USD</a></li>--}}
{{--                            <li><a href="#">EUR</a></li>--}}
{{--                            <li><a href="#">AUD</a></li>--}}
{{--                        </ul>--}}
{{--                    </li>--}}
{{--                </ul>--}}
{{--            </div>--}}
{{--            <div class="col-sm-6">--}}
{{--                <ul class="header-top-right text-right">--}}
{{--                    <li class="account"><a href="login.html">My Account</a></li>--}}
{{--                    <li class="sitemap"><a href="#">Sitemap</a></li>--}}
{{--                    <li class="cart"><a href="cart_page.html">My Cart</a></li>--}}
{{--                </ul>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</div>--}}
