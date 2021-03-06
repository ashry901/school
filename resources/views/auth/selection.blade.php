<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
<!-- BEGIN: Head-->

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="Modern admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities with bitcoin dashboard.">
    <meta name="keywords" content="admin template, modern admin template, dashboard template, flat admin template, responsive admin template, web app, crypto dashboard, bitcoin dashboard">
    <meta name="author" content="PIXINVENT">
    <title>@yield('title')</title>
    <link rel="apple-touch-icon" href="{{asset('ashry/back/app-assets/images/ico/apple-icon-120.png')}}">
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('ashry/back/app-assets/images/ico/favicon.ico')}}">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i%7CQuicksand:300,400,500,700" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/vendors.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/forms/icheck/icheck.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/forms/icheck/custom.css')}}">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/bootstrap.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/bootstrap-extended.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/colors.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/components.css')}}">
    <!-- END: Theme CSS-->

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/core/menu/menu-types/vertical-menu.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/core/colors/palette-gradient.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/pages/login-register.css')}}">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/assets/css/style.css')}}">
    <!-- END: Custom CSS-->

    {{--    @notify_css--}}
</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu 1-column   blank-page" data-open="click" data-menu="vertical-menu" data-col="1-column">
<!-- BEGIN: Content-->
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body">
            <section id="social-buttons-sizes">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-content collapse show">

                                <br><br><br><br>

                                <div class="card-body">

                                    <div class="row justify-content-center">


                                        <div class="col-xl-4 col-lg-12 mb-1 social-buttons">


                                            <div class="form-group">

                                                <a href="{{route('home')}}" class="btn btn-success">
                                                    <span>Home</span>
                                                </a>
                                                <br><br><br><br>
                                                <!-- Social Buttons block sizes -->
                                                <a href="{{route('admin.dashboard')}}"
                                                   class="btn btn-social mb-1 btn-block btn-lg btn-pinterest">
                                                    <span class="la la-user"></span>
                                                    Sign In Admin
                                                </a>
                                                {{-- {{route('teacher.login-teacher')}} --}}
                                                <a href="{{route('teacher.login-teacher')}}"
                                                   class="btn btn-social mb-1 btn-block btn-lg btn-pinterest">
                                                    <span class="la la-user"></span>
                                                    Sign In Teacher
                                                </a>

                                                <a href="{{route('student.login-student')}}"
                                                   class="btn btn-social mb-1 btn-block btn-lg btn-pinterest">
                                                    <span class="la la-user"></span>
                                                    Sign In Student
                                                </a>

                                                <a href="#" class="btn btn-social mb-1 btn-block btn-lg btn-pinterest">
                                                    <span class="la la-user"></span>
                                                    Sign In Guardian
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </div>
    </div>
</div>
<!-- END: Content-->


<!-- BEGIN: Vendor JS-->
<script src="{{asset('ashry/back/')}}app-assets/vendors/js/vendors.min.js"></script>
<!-- BEGIN Vendor JS-->

<!-- BEGIN: Page Vendor JS-->
<script src="{{asset('ashry/back/app-assets/vendors/js/forms/icheck/icheck.min.js')}}"></script>
<script src="{{asset('ashry/back/app-assets/vendors/js/forms/validation/jqBootstrapValidation.js')}}"></script>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Theme JS-->
<script src="{{asset('ashry/back/app-assets/js/core/app-menu.js')}}"></script>
<script src="{{asset('ashry/back/app-assets/js/core/app.js')}}"></script>
<!-- END: Theme JS-->

<!-- BEGIN: Page JS-->
<script src="{{asset('ashry/back/app-assets/js/scripts/forms/form-login-register.js')}}"></script>
<!-- END: Page JS-->

</body>
<!-- END: Body-->

</html>

