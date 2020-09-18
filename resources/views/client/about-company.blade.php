@extends('layouts.master-client')

@section('page-css')

@endsection

@section('content')
    <div class="container">
        <div class="row ">
            <div id="column-left" class="col-sm-4 col-md-4 col-lg-3 ">
                <!-- menu aside -->
                <div id="category-menu" class="navbar collapse mb_40 hidden-sm-down in" aria-expanded="true" style="" role="button">
                    @include('layouts.client-nav-home-aside')
                </div>
                <!-- end menu aside -->

                <div class="left_banner left-sidebar-widget mt_30 mb_50"> <a href="#"><img src="/client-assets/images/left1.jpg" alt="Left Banner" class="img-responsive" /></a> </div>
            </div>
            <div id="column-right" class="col-sm-8 col-md-8 col-lg-9 mtb_30">
                <!-- =====  BANNER STRAT  ===== -->
                <div class="banner">
                    <div class="main-banner owl-carousel"> <!--  -->
                        <ul>
                            <li id="myCarousel" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    @php
                                        $i = 0;
                                    @endphp
                                    @foreach($banners as $banner)
                                        @php
                                            $i ++;
                                        @endphp
                                        @if($i == 1)
                                            <div class="item active"> <a href="#"><img src="{{ asset('upload/images/defoult_image/'.$banner->image) }}" class="img-responsive" alt="{{ $banner->name }}"></a></div>
                                        @else
                                            <div class="item"> <a href="#"><img src="{{ asset('upload/images/defoult_image/'.$banner->image) }}" class="img-responsive" alt="{{ $banner->name }}"></a></div>
                                        @endif
                                    <!-- End Item -->
                                    @endforeach
                                </div>
                                <!-- End Carousel Inner -->
                            </li>
                        </ul>
                        {{--                        <div><a href="javascript:void (0)"><img src="{{ asset('upload/images/defoult_image/'.$banner) }}" alt="Main Banner" class="img-responsive" /></a></div>--}}
                        {{--                        <div class="item"><a href="#"><img src="/client-assets/images/main_banner1.jpg" alt="Main Banner" class="img-responsive" /></a></div>--}}
                    </div>
                </div>
                <!-- =====  BANNER END  ===== -->

                <!-- =====  About TAB  ===== -->
                <div class="col-md-12">
                    <div class="about-text">
                        <div class="about-heading-wrap">
                            <h2 class="about-heading mb_20 mt_40 ptb_10">Why We Are <span>Best?</span></h2>
                        </div>
                        <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>
                    </div>
                </div>
                <!-- =====  About TAB  END ===== -->
            </div>
        </div>
    </div>
@endsection

@section('page-script')

@endsection
