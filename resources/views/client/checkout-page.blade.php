@extends('layouts.master-client')

@section('page-css')
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <style>
        a{
            color: rgba(0,0,0,.6);
        }
        a:hover{
            color: #0b0b0b;
            text-decoration: none;
        }
    </style>
@endsection

@section('content')
    <div class="container">
        <div class="row ">
            <div class="col-sm-12 col-md-12 col-lg-12 mtb_30">
                <!-- =====  BANNER STRAT  ===== -->
                <div class="breadcrumb ptb_20">
                    <h1>Checkout</h1>
                    <ul>
                        <li><a style="color: #808080" href="{{ route('client.home') }}">Home /</a></li>
                        <li class="active">Checkout</li>
                    </ul>
                </div>
                <!-- =====  BREADCRUMB END===== -->
                <div class="row">
                    <div class="col-md-8 order-md-1">
                        <h4 class="mb-3">Billing address</h4>
                        <form class="needs-validation" novalidate>
                            <div class="row">
                                <div class="col-md-12 mb-3">
                                    <label for="name">Name</label>
                                    <input type="text" name="name" class="form-control" id="lastName" placeholder="Your Name ......." value="" required>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="email">Email <span class="text-muted">(Optional)</span></label>
                                <input type="email" name="email" class="form-control" id="email" placeholder="you@example.com">
                                <div class="invalid-feedback">
                                    Please enter a valid email address for shipping updates.
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="address">Address</label>
                                <input type="text" name="address" class="form-control" id="address" placeholder="1234 Main St" required>
                                <div class="invalid-feedback">
                                    Please enter your shipping address.
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="address2">Address 2 <span class="text-muted">(Optional)</span></label>
                                <input type="text" name="address2" class="form-control" id="address2" placeholder="Apartment or suite">
                            </div>

                            <div class="row" style="margin: 5px 0;">
                                <div class="col-md-5 mb-3">
                                    <label for="country">Country</label>
                                    <select name="country" class="form-control" id="country" required>
                                        <option value="">Choose...</option>
                                        <option value="Bangladesh">Bangladesh</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Please select a valid country.
                                    </div>
                                </div>

                                <div class="col-md-3 mb-3">
                                    <label for="zip">City</label>
                                    <input type="text" class="form-control" name="city" id="city" placeholder="Your City......." required>
                                </div>

                                <div class="col-md-3 mb-3">
                                    <label for="zip">Zip</label>
                                    <input type="text" class="form-control" name="zip" id="zip" placeholder="Zip Code ......." required>
                                </div>
                            </div>

                            <hr class="mb-4">

                            <h4 class="mb-3">Payment</h4>

                            <div class="d-block my-3">
                                <div class="custom-control custom-radio">
                                    <input id="Cash" name="paymentMethod" value="Cash" type="radio" class="custom-control-input" value="Cash" required>
                                    <label class="custom-control-label" for="Cash">Cash on Delivery</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input id="bKash" name="paymentMethod" type="radio" class="custom-control-input" value="bKash" required>
                                    <label class="custom-control-label" for="bKash">bKash</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input id="নগদ" name="paymentMethod" type="radio" class="custom-control-input" value="নগদ" required>
                                    <label class="custom-control-label" for="নগদ">নগদ</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="phone">Phone Number</label>
                                    <input type="tel" class="form-control" id="phone" placeholder="" required>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="trxid">TrxID</label>
                                    <input type="text" class="form-control" id="trxid" placeholder="">
                                </div>
                            </div>
                            <hr class="mb-4">
                            <button class="btn btn-danger btn-lg btn-block" type="submit">Continue to checkout</button>
                        </form>
                    </div>

                    <div class="col-md-4 order-md-2 mb-4">
                        <h4 class="d-flex justify-content-between align-items-center mb-3">
                            <span class="text-muted">Your cart</span>
                            <span class="badge badge-secondary badge-pill">{{ $cartCount }}</span>
                        </h4>
                        <ul class="list-group mb-3">
                            @foreach($cartItems as $cartItem)
                            <li class="list-group-item d-flex justify-content-between lh-condensed">
                                <div>
                                    <h4 class="my-0" style="display: inline-block;">{{ substr($cartItem->name,0,10) }}.......</h4>
                                    <img src="{{ asset('upload/images/category_images/'.$cartItem->options->image) }}" alt="" style="width: 80px; height: 80px; float: right; border: 1px solid #f0f0f0; border-radius: 5px;" class="img-fluid">
                                </div>
                                <span class="text-muted">QTY: {{ $cartItem->qty }}</span>
                                <br>
                                <span class="text-muted">Price: {{ $cartItem->price*$cartItem->qty }}.00৳</span>
                            </li>
                            @endforeach

                            <li class="list-group-item d-flex justify-content-between">
                                <span>Sub Total (BDT)</span>
                                <strong>{{ Cart::subtotal() }}৳</strong>
                            </li>

                             <li class="list-group-item d-flex justify-content-between">
                                 <span>VAT (15%)</span>
                                 <strong>{{ Cart::tax() }}৳</strong>
                             </li>

                             <li class="list-group-item d-flex justify-content-between">
                                    <span>Total (BDT)</span>
                                    <strong>{{ Cart::total() }}৳</strong>
                             </li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </div>
@endsection

@section('page-script')

@endsection
{{--<div class="product-grid">--}}
{{--    <div class="item">--}}
{{--        <div class="product-thumb">--}}
{{--            <div class="image product-imageblock"> <a href="product_detail_page.html"> <img data-name="product_image" src="{{ asset('upload/images/category_images/'.$product->image) }}" alt="iPod Classic" title="iPod Classic" class="img-responsive"> <img src="{{ asset('upload/images/category_images/'.$product->image) }}" alt="iPod Classic" title="iPod Classic" class="img-responsive"> </a> </div>--}}
{{--            <div class="caption product-detail text-left">--}}
{{--                <h6 data-name="product_name" class="product-name mt_20"><a href="#" title="Casual Shirt With Ruffle Hem">Latin literature from 45 BC, making it over old.</a></h6>--}}
{{--                <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star fa-stack-x"></i></span> </div>--}}
{{--                <span class="price"><span class="amount"><span class="currencySymbol">$</span>70.00</span>--}}
{{--                              </span>--}}
{{--                <div class="button-group text-center">--}}
{{--                    <div class="wishlist"><a href="#"><span>wishlist</span></a></div>--}}
{{--                    <div class="quickview"><a href="#"><span>Quick View</span></a></div>--}}
{{--                    <div class="compare"><a href="#"><span>Compare</span></a></div>--}}
{{--                    <div class="add-to-cart"><a href="#"><span>Add to cart</span></a></div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</div>--}}
