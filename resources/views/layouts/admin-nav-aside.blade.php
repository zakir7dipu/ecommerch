<!-- begin app-nabar -->
<aside class="app-navbar">
    <!-- begin sidebar-nav -->
    <div class="sidebar-nav scrollbar scroll_light">
        <ul class="metismenu " id="sidebarNav">
            <li class="nav-static-title">Personal</li>
            <li class="{{ 'admin/dashboard' == request()->path()? 'active':'' }}">
                <a href="{{ route('admin.dashboard') }}" aria-expanded="false">
                    <i class="nav-icon ti ti-rocket"></i>
                    <span class="nav-title">Dashboards</span>
                </a>
            </li>

            <li class="{{ 'admin/dash-category' == request()->path()? 'active':'' }}{{ 'admin/dash-store-product' == request()->path()? 'active':'' }}{{ 'admin/dash-all-product' == request()->path()? 'active':'' }}">
                <a class="has-arrow" href="javascript:void(0)" aria-expanded="false"><i class="nav-icon fa fa-shopping-basket"></i><span class="nav-title">Products</span></a>
                <ul aria-expanded="false">
                    <li class="{{ 'admin/dash-store-product' == request()->path()? 'active':'' }}"> <a href='{{ route('admin.store-product') }}'>New Products</a> </li>
                    <li class="{{ 'admin/dash-all-product' == request()->path()? 'active':'' }}"> <a href='{{ route('admin.all-product') }}'>All Products</a> </li>
                    <li class="{{ 'admin/dash-category' == request()->path()? 'active':'' }}"> <a href='{{ route('admin.category') }}'>Categories</a> </li>
                </ul>
            </li>

            <li class="">
                <a class="has-arrow" href="javascript:void (0)" aria-expanded="false"><i class="nav-icon fa fa-ship"></i><span class="nav-title">Orders</span></a>
                <ul>
                    <li class=""><a href='javascript:void (0)'>New Orders</a></li>
                    <li class=""><a href='javascript:void (0)'>All Orders</a></li>
                </ul>
            </li>

            <li class="{{ 'admin/dash-main-slider' == request()->path()? 'active':'' }}{{ 'admin/dash-menu-slider' == request()->path()? 'active':'' }}">
                <a class="has-arrow" href="javascript:void(0)" aria-expanded="false"> <i class="nav-icon ti ti-layout-grid4-alt"></i> <span class="nav-title">Widgets</span></a>
                <ul aria-expanded="false" class="collapse">

                    <li>
                        <a href="javascript:void(0)" class="logoInsertBtn" aria-expanded="false"> <i class="nav-icon fa fa-paint-brush"></i> <span class="nav-title">Logo</span></a>
                    </li>

                    <li class="{{ 'admin/dash-main-slider' == request()->path()? 'active':'' }}{{ 'admin/dash-menu-slider' == request()->path()? 'active':'' }}"> <a href="javascript:void(0)" class="has-arrow"> <i class="nav-icon fe fe-sliders"></i> <span class="nav-title">Slider Image</span></a>
                        <ul>
                            <li class="{{ 'admin/dash-main-slider' == request()->path()? 'active':'' }}"><a href="{{ route('admin.main-slider') }}"> <span class="nav-title">Banner Slider</span></a></li>
                            <li class="{{ 'admin/dash-menu-slider' == request()->path()? 'active':'' }}"><a href="{{ route('admin.menu-slider') }}"> <span class="nav-title">Menu Slider</span></a></li>
                        </ul>
                    </li>

                    <li>
                        <a class="has-arrow" href="javascript:void(0)" aria-expanded="false"> <i class="nav-icon dashicons dashicons-format-gallery"></i> <span class="nav-title">Gallery</span></a>
                        <ul>
                            <li> <a href="javascript:void(0)" class="companyLoginPanelBtn">Add 01</a> </li>
                            <li> <a href="javascript:void(0)" class="companyLoginPanelBtn">Add 02</a> </li>
                            <li> <a href="javascript:void(0)" class="companyLoginPanelBtn">Add 03</a> </li>
                            <li> <a href="javascript:void(0)" class="companyLoginPanelBtn">Add 04</a> </li>
                            <li> <a href="javascript:void(0)" class="companyLoginPanelBtn">Add 05</a> </li>
                            <li> <a href="javascript:void(0)" class="companyLoginPanelBtn">Add 06</a> </li>
                        </ul>
                    </li>

                    <li>
                        <a href="javascript:void(0)" aria-expanded="false"> <i class="nav-icon fa fa-address-book"></i> <span class="nav-title">Contact Info</span></a>
                    </li>

                    <li>
                        <a href="javascript:void(0)" aria-expanded="false"> <i class="nav-icon fa fa-share-alt"></i> <span class="nav-title">Social Media Links</span></a>
                    </li>
                </ul>
            </li>

            <li><a href="javascript:void(0)" aria-expanded="false"><i class="nav-icon ion ion-ios-construct"></i><span class="nav-title"> Settings</span></a> </li>

            <li>
                <a  href="{{ route('logout') }}"
                    onclick="event.preventDefault();
                    document.getElementById('logout-form').submit();"> <i
                        class="zmdi zmdi-power"></i> Logout</a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    @csrf
                </form>
            </li>
        </ul>
    </div>
    <!-- end sidebar-nav -->
</aside>
<!-- end app-navbar -->
