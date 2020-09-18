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
                <!-- =====  MAP STRAT  ===== -->
                <div class="row">
                    <div class="col-xs-12 map mb_80">
                        <div id="map" style="position: relative; overflow: hidden;">

                        </div>
                    </div>
                </div>
                <!-- =====  END MAP STRAT  ===== -->
                <!-- contact  -->
                <div class="row">
                    <div class="col-md-12 col-xs-12 contact">
                        <div class="location mb_50 d-inline-block float-left col-md-4 col-xs-12">
                            <h5 class="capitalize mb_20">Our Location</h5>
                            <div class="address">Office address
                                <br> 124,Lorem Ipsum has been
                                <br> text ever since the 1500</div>
                            <div class="call mt_10"><i class="fa fa-phone" aria-hidden="true"></i>+91-9987-654-321</div>
                        </div>
                        <div class="Career mb_50 d-inline-block float-left col-md-4 col-xs-12">
                            <h5 class="capitalize mb_20">Careers</h5>
                            <div class="address">dummy text ever since the 1500s, simply dummy text of the typesetting industry. </div>
                            <div class="email mt_10"><i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:careers@yourdomain.com" target="_top">careers@yourdomain.com</a></div>
                        </div>
                        <div class="Hello mb_50 d-inline-block float-left col-md-4 col-xs-12">
                            <h5 class="capitalize mb_20">Say Hello</h5>
                            <div class="address">simply dummy text of the printing and typesetting industry.</div>
                            <div class="email mt_10"><i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:info@yourdomailname.com" target="_top">info@yourdomailname.com</a></div>
                        </div>
                    </div>
                </div>
                <!-- map  -->

            </div>
        </div>
    </div>
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

        var marker = new mapboxgl.Marker()
            .setLngLat([-74.0066, 40.7135])
            .addTo(map);
        // Add zoom and rotation controls to the map.
        map.addControl(new mapboxgl.NavigationControl());

        map.on('load', function () {
// Insert the layer beneath any symbol layer.
            var layers = map.getStyle().layers;

            var labelLayerId;
            for (var i = 0; i < layers.length; i++) {
                if (layers[i].type === 'symbol' && layers[i].layout['text-field']) {
                    labelLayerId = layers[i].id;
                    break;
                }
            }

            map.addLayer(
                {
                    'id': '3d-buildings',
                    'source': 'composite',
                    'source-layer': 'building',
                    'filter': ['==', 'extrude', 'true'],
                    'type': 'fill-extrusion',
                    'minzoom': 15,
                    'paint': {
                        'fill-extrusion-color': '#aaa',

// use an 'interpolate' expression to add a smooth transition effect to the
// buildings as the user zooms in
                        'fill-extrusion-height': [
                            'interpolate',
                            ['linear'],
                            ['zoom'],
                            15,
                            0,
                            15.05,
                            ['get', 'height']
                        ],
                        'fill-extrusion-base': [
                            'interpolate',
                            ['linear'],
                            ['zoom'],
                            15,
                            0,
                            15.05,
                            ['get', 'min_height']
                        ],
                        'fill-extrusion-opacity': 0.6
                    }
                },
                labelLayerId
            );
        });
    </script>
@endsection
