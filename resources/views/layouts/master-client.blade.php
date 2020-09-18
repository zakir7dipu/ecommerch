<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>
    <!-- =====  SEO MATE  ===== -->
{{--    <meta http-equiv="X-UA-Compatible" content="IE=edge" />--}}
{{--    <meta name="description" content="">--}}
{{--    <meta name="keywords" content="">--}}
{{--    <meta name="distribution" content="global">--}}
{{--    <meta name="revisit-after" content="2 Days">--}}
{{--    <meta name="robots" content="ALL">--}}
{{--    <meta name="rating" content="8 YEARS">--}}
{{--    <meta name="Language" content="en-us">--}}
{{--    <meta name="GOOGLEBOT" content="NOARCHIVE">--}}
    <!-- =====  MOBILE SPECIFICATION  ===== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="viewport" content="width=device-width">
    <!-- =====  CSS  ===== -->
    <link rel="stylesheet" type="text/css" href="/client-assets/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="/client-assets/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="/client-assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="/client-assets/css/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="/client-assets/css/owl.carousel.css">
    <link rel="shortcut icon" href="/client-assets/images/favicon.png">
    <link rel="apple-touch-icon" href="/client-assets/images/apple-touch-icon.html">
    <link rel="apple-touch-icon" sizes="72x72" href="/client-assets/images/apple-touch-icon-72x72.html">
    <link rel="apple-touch-icon" sizes="114x114" href="/client-assets/images/apple-touch-icon-114x114.html">
    <link href='https://api.mapbox.com/mapbox-gl-js/v1.12.0/mapbox-gl.css' rel='stylesheet' />
    @yield('page-css')
</head>

<body>
<!-- =====  LODER  ===== -->
<div class="loder"></div>
<div class="wrapper">
    @include('client.popup-adverts')
    <!-- =====  HEADER START  ===== -->
    @include('layouts.client-nav-head')
    <!-- =====  HEADER END  ===== -->
    <!-- =====  CONTAINER START  ===== -->
    @yield('content')
    <!-- =====  CONTAINER END  ===== -->
    <!-- =====  FOOTER START  ===== -->
    <div class="footer pt_60">
        <div class="container">
            <div class="row">
                <div class="col-md-3 footer-block">
                    <div class="content_footercms_right">
                        <div class="footer-contact">
                            <div class="footer-logo mb_40"> <a href="index-2.html"> <img src="/client-assets/images/footer-logo.png" alt="HealthCare"> </a> </div>
                            <ul>
                                <li>B-14 Collins Street West Victoria 2386</li>
                                <li>(+123) 456 789 - (+024) 666 888</li>
                                <li>Contact@yourcompany.com</li>
                            </ul>
                            <div class="social_icon">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-rss"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-2 footer-block">
                    <h6 class="footer-title ptb_20">Categories</h6>
                    <ul>
                        <li><a href="#">Medicines</a></li>
                        <li><a href="#">Healthcare</a></li>
                        <li><a href="#">Mother & Baby</a></li>
                        <li><a href="#">Vitamins</a></li>
                        <li><a href="#">Toiletries</a></li>
                        <li><a href="#">Skincare</a></li>
                    </ul>
                </div>
                <div class="col-md-2 footer-block">
                    <h6 class="footer-title ptb_20">Information</h6>
                    <ul>
                        <li><a href="contact.html">Specials</a></li>
                        <li><a href="#">New Products</a></li>
                        <li><a href="#">Best Sellers</a></li>
                        <li><a href="#">Our Stores</a></li>
                        <li><a href="#">Contact Us</a></li>
                        <li><a href="#">About Us</a></li>
                    </ul>
                </div>
                <div class="col-md-2 footer-block">
                    <h6 class="footer-title ptb_20">My Account</h6>
                    <ul>
                        <li><a href="#">Checkout</a></li>
                        <li><a href="#">My Account</a></li>
                        <li><a href="#">My Orders</a></li>
                        <li><a href="#">My Credit Slips</a></li>
                        <li><a href="#">My Addresses</a></li>
                        <li><a href="#">My Personal Info</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h6 class="ptb_20">SIGN UP OUR NEWSLETTER</h6>
                    <p class="mt_10 mb_20">For get offers from our favorite brands & get 20% off for next </p>
                    <div class="form-group">
                        <input class="mb_20" type="text" placeholder="Enter Your Email Address">
                        <button class="btn">Subscribe</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom mt_60 ptb_10">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="copyright-part">@ 2017 All Rights Reserved HealthCare</div>
                    </div>
                    <div class="col-sm-6">
                        <div class="payment-icon text-right">
                            <ul>
                                <li><i class="fa fa-cc-paypal "></i></li>
                                <li><i class="fa fa-cc-stripe"></i></li>
                                <li><i class="fa fa-cc-visa"></i></li>
                                <li><i class="fa fa-cc-discover"></i></li>
                                <li><i class="fa fa-cc-mastercard"></i></li>
                                <li><i class="fa fa-cc-amex"></i></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- =====  FOOTER END  ===== -->
</div>
<a id="scrollup">Scroll</a>
<script src="/client-assets/js/jQuery_v3.1.1.min.js"></script>
<script src="/client-assets/js/owl.carousel.min.js"></script>
<script src="/client-assets/js/bootstrap.min.js"></script>
<script src="/client-assets/js/jquery.magnific-popup.js"></script>
<script src="/client-assets/js/jquery.firstVisitPopup.js"></script>
<script src='https://api.mapbox.com/mapbox-gl-js/v1.12.0/mapbox-gl.js'></script>
<script src="/client-assets/js/custom.js"></script>
@yield('page-script')
</body>


<!-- Mirrored from html.lionode.com/healthcare/hc001/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 24 Aug 2020 07:00:38 GMT -->
</html>
