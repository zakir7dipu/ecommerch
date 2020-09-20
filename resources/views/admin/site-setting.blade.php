@extends('layouts.master-admin')

@section('page-css')

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
                            <h1 class="text-capitalize">Setting</h1>
                        </div>
                        <div class="breadcrumb-bar align-items-center">
                            <nav>
                                <ol class="breadcrumb p-0 m-b-0">
                                    <li class="breadcrumb-item">
                                        <a href="/"><i class="ti ti-home"></i></a>
                                    </li>
                                    <li class="breadcrumb-item text-capitalize">
                                        <a href="{{ route('admin.setting') }}">Setting</a>
                                    </li>
{{--                                    <li class="breadcrumb-item active text-primary text-capitalize page_title" aria-current="page">pins</li>--}}
                                </ol>
                            </nav>
                        </div>
                        <div class="ml-auto d-flex align-items-center secondary-menu text-center">
                            <a href="javascript:void(0);" class="tooltip-wrapper generateUserLicenceBtn" data-toggle="tooltip" data-placement="top" title="" data-original-title="Generate User Licence">
                                <i class="fa fa-ravelry btn btn-icon text-primary"></i>
                            </a>
                            <a href="javascript:void(0);" class="tooltip-wrapper showActivePinsBtn" data-toggle="tooltip" data-placement="top" title="" data-original-title="Unused Licences">
                                <i class="fa fa-map-pin btn btn-icon text-success"></i>
                            </a>
                            <a href="javascript:void(0);" class="tooltip-wrapper showUsedPinsBtn" data-toggle="tooltip" data-placement="top" title="" data-original-title="Used Licences">
                                <i class="fa fa-plug btn btn-icon text-danger"></i>
                            </a>
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
                <div class="card col-md-8">
                    <div class="card-body">
                        <form action="{{ route('admin.company') }}" method="post">
                            @csrf
                            <div class="form-group">
                                <label for="companyName">Name of your company:</label>
                                <input type="text" class="form-control" name="company_name" id="companyName" required value="{{ $company_name }}">
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="card col-md-8">
                    <div class="card-body">
                        <form action="{{ route('admin.about') }}" method="post">
                            @csrf
                            <div class="form-group">
                                <label for="companyAbout">Write something about your company:</label>
                                <textarea type="text" class="form-control" rows="10" name="company_about" id="companyAbout" required>{!! $aboutCompany !!}</textarea>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="card col-md-8">
                    <div class="card-body">
                        <form action="" method="post">
                            @csrf
                            <div class="form-group">
                                <label for="companyAbout">Order Excepted Countries:</label>
                                <select class="form-control" name="" id="">
                                    <option selected disabled>Select Country</option>
                                    @foreach($countries as $country)
                                        <option value="">{{ $country->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="card col-md-8">
                    <div class="card-header">
                        <h4 class="text-muted font-weight-bold text-center">Change Login Info</h4>
                    </div>
                    <div class="card-body">
                        <form action="" method="post">
                            @csrf
                            <div class="form-group">
                                <label for="email">Login Email</label>
                                <input type="email" class="form-control" name="email" id="email" value="">
                            </div>

                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>

                            <div class="form-group">
                                <label>Password</label>
                                <a href="{{ route('password.request') }}" class="form-control py-2 " style="height: 40px">Want To Change Password Click Here</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- end row -->
        </div>
        <!-- end container-fluid -->
    </div>
    <!-- end app-main -->
@endsection

@section('script')

@endsection
