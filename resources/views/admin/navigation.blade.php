@extends('layouts.master-admin')

@section('page-css')
    <!-- Promise polyfill script required to use Mapbox GL Geocoder in IE 11 -->
    <style>
        .geocoder {
            position: absolute;
            z-index: 1;
            width: 50%;
            left: 50%;
            margin-left: -25%;
            top: 10px;
        }
        .mapboxgl-ctrl-geocoder {
            min-width: 100%;
        }
        #map {
            width: 100%;
            height: 600px;
            position: relative;
            overflow: hidden;
            margin-top: 75px;
        }
        .mapboxgl-ctrl-geocoder--icon-search {
            position: absolute;
            left: -282px;
            width: 5px;
            height: 23px;
            top: 15px;
        }
        .mapboxgl-ctrl-geocoder--input{
            height: 50px;
            color: rgba(0, 0, 0, 0.75);
            padding: 6px 45px;
        }
    </style>
@endsection

@section('content')
    <!-- begin app-main -->
    <div class="app-main" id="main">
        <!-- begin container-fluid -->
        <div class="container-fluid">
            <!-- begin row -->
            <div class="row">
                <div class="col-md-12 m-b-30">
                    <!-- begin page title -->
                    <div class="d-block d-lg-flex flex-nowrap align-items-center">
                        <div class="page-title mr-4 pr-4 border-right">
                            <h1 class="text-capitalize">user license</h1>
                        </div>
                        <div class="breadcrumb-bar align-items-center">
                            <nav>
                                <ol class="breadcrumb p-0 m-b-0">
                                    <li class="breadcrumb-item">
                                        <a href="{{ route('admin.dashboard') }}"><i class="ti ti-home"></i></a>
                                    </li>
                                    <li class="breadcrumb-item text-capitalize">
                                        <a href="{{ route('admin.navigation') }}">navigation</a>
                                    </li>
{{--                                    <li class="breadcrumb-item active text-primary text-capitalize page_title" aria-current="page">pins</li>--}}
                                </ol>
                            </nav>
                        </div>
                    </div>
                    <!-- end page title -->
                </div>
            </div>
            <!-- Notification -->
            <div class="row">
                <div class="col-md-12">
                    <!-- Success Message -->
                    @if (session('message'))
                        <div class="alert border-0 alert-primary bg-gradient m-b-30 alert-dismissible fade show border-radius-none" role="alert">
                            {{ session('message') }}
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <i class="ti ti-close"></i>
                            </button>
                        </div>
                    @endif
                <!-- Error Message -->
                    @if ($errors->any())
                        <div class="alert border-0 alert-danger m-b-30 alert-dismissible fade show border-radius-none" role="alert">
                            @foreach ($errors->all() as $error)
                                <p class="text-black-50 font-weight-bold">{{ $error }}</p>
                            @endforeach
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <i class="ti ti-close"></i>
                            </button>
                        </div>
                    @endif
                </div>
            </div>
            <!-- end row -->
            <!-- begin row -->
            <div class="row">
                <div class="col-lg-11 mx-auto">
                    <div id="map"></div>
                    <div id="geocoder" class="geocoder"></div>
                </div>
            </div>

            <!-- end row -->
        </div>
        <!-- end container-fluid -->
    </div>
    <!-- end app-main -->

@endsection

@section('page-script')
    <script>
        mapboxgl.accessToken = 'pk.eyJ1IjoiemFraXI3ZGlwdSIsImEiOiJja2UxM3Z3bGgyYWV1Mnhramd3ZGRncnc5In0.tOjaTLM2AUkKhya3t0BuOA';
        var map = new mapboxgl.Map({
            style: 'mapbox://styles/mapbox/streets-v11',
            center: [-74.0066, 40.7135],
            zoom: 15.5,
            pitch: 45,
            bearing: -17.6,
            container: 'map',
            antialias: true
        });

        // Add zoom and rotation controls to the map.
        map.addControl(new mapboxgl.NavigationControl());
        
        var geocoder = new MapboxGeocoder({
            accessToken: mapboxgl.accessToken,
            mapboxgl: mapboxgl
        });

        document.getElementById('geocoder').appendChild(geocoder.onAdd(map));
    </script>
@endsection
