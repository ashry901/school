<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="{{ app() -> getLocale() === 'ar' ? 'rtl' : 'ltr'}}">

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
    @if (App::getLocale() == 'ar')
        <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/vendors-rtl.min.css')}}">
    @else
        <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/vendors.min.css')}}">
    @endif

    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/forms/selects/select2.min.css')}}">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    @if (App::getLocale() == 'ar')
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css-rtl/bootstrap.css')}}">
    @else
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/bootstrap.css')}}">
    @endif

    @if (App::getLocale() == 'ar')
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css-rtl/bootstrap-extended.css')}}">
    @else
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/bootstrap-extended.css')}}">
    @endif

    @if (App::getLocale() == 'ar')
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css-rtl/colors.css')}}">
    @else
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/colors.css')}}">
    @endif

    @if (App::getLocale() == 'ar')
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css-rtl/components.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css-rtl/custom-rtl.css')}}">
    @else
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/components.css')}}">
    @endif

    <!-- END: Theme CSS-->

    <!-- BEGIN: Page CSS-->
    @if (App::getLocale() == 'ar')
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css-rtl/core/menu/menu-types/vertical-menu.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css-rtl/core/colors/palette-gradient.css')}}">
    @else
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/core/menu/menu-types/vertical-menu.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/core/colors/palette-gradient.css')}}">
    @endif

    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/cryptocoins/cryptocoins.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/charts/apexcharts.css')}}">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/assets/css/style.css')}}">
    <!-- END: Custom CSS-->


{{--    @notify_css--}}
    @yield('style')
</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu 2-columns fixed-navbar" data-open="click" data-menu="vertical-menu" data-col="2-columns">

    <!-- BEGIN: Header-->
    @include('dashboard.includes.header')
    <!-- END: Header-->

    <!-- BEGIN: Main Menu-->
    <div class="main-menu menu-fixed menu-dark menu-accordion menu-shadow " data-scroll-to-active="true">
        <div class="main-menu-content">
            @include('dashboard.includes.sidebare')

{{--            @if (auth('teacher')->check())--}}
{{--                @include('dashboard.teachers.cpanel.teacher-sidebar')--}}
{{--            @endif--}}
        </div>
    </div>
    <!-- END: Main Menu-->

    <!-- BEGIN: Content-->
    <div class="app-content content">
        <div class="content-overlay"></div>
        <div class="content-wrapper">
            <div class="content-header row"></div>
            @yield('content')
        </div>
    </div>
    <!-- END: Content-->

    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

    <!-- BEGIN: Footer-->
        @include('dashboard.includes.footer')
    <!-- END: Footer-->

    {{-- @notify_js
    @notify_render --}}
{{--    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> --}}
<!-- BEGIN: Vendor JS-->
<script src="{{asset('ashry/back/app-assets/vendors/js/vendors.min.js')}}"></script>
<!-- BEGIN Vendor JS-->

<!-- BEGIN: Page Vendor JS-->
<script src="{{asset('ashry/back/app-assets/vendors/js/charts/chart.min.js')}}"></script>
<script src="{{asset('ashry/back/app-assets/vendors/js/charts/apexcharts/apexcharts.min.js')}}"></script>
<script src="{{asset('ashry/back/app-assets/vendors/js/extensions/jquery.raty.js')}}"></script>
<script src="{{asset('ashry/back/app-assets/vendors/js/forms/select/select2.full.min.js')}}"></script>
<!-- END: Page Vendor JS-->


<script src="{{asset('ashry/back/app-assets/js/scripts/modal/components-modal.js')}}"></script>

<!-- BEGIN: Theme JS-->
<script src="{{asset('ashry/back/app-assets/js/core/app-menu.js')}}"></script>
<script src="{{asset('ashry/back/app-assets/js/core/app.js')}}"></script>
<!-- END: Theme JS-->

<script>
    $(document).ready(function() {
        $('#datatable').DataTable();
    } );
</script>

<!-- BEGIN: Page JS-->
    <script src="{{asset('ashry/back/app-assets/js/scripts/forms/select/form-select2.js')}}"></script>
<!-- END: Page JS-->

    <script>
        function CheckAll(className, elem) {
            var elements = document.getElementsByClassName(className);
            var l = elements.length;

            if (elem.checked) {
                for (var i = 0; i < l; i++) {
                    elements[i].checked = true;
                }
            } else {
                for (var i = 0; i < l; i++) {
                    elements[i].checked = false;
                }
            }
        }
    </script>

    <script>
        $(document).ready(function () {
            $('select[name="grade_id"]').on('change', function () {
                var grade_id = $(this).val();
                if (grade_id) {
                    $.ajax({
                        url: "{{ URL::to('Get_classrooms') }}/" + grade_id,
                        type: "GET",
                        dataType: "json",
                        success: function (data) {
                            $('select[name="classroom_id"]').empty();
                            $('select[name="classroom_id"]').append('<option selected disabled >{{trans('Parent_trans.Choose')}}...</option>');
                            $.each(data, function (key, value) {
                                $('select[name="classroom_id"]').append('<option value="' + key + '">' + value + '</option>');
                            });
                        },
                    });
                }
                else {
                    console.log('AJAX load did not work');
                }
            });
        });
    </script>

    <script>
        $(document).ready(function () {
            $('select[name="classroom_id"]').on('change', function () {
                var classroom_id = $(this).val();
                if (classroom_id) {
                    $.ajax({
                        url: "{{ URL::to('Get_Sections') }}/" + classroom_id,
                        type: "GET",
                        dataType: "json",
                        success: function (data) {
                            $('select[name="section_id"]').empty();
                            $.each(data, function (key, value) {
                                $('select[name="section_id"]').append('<option value="' + key + '">' + value + '</option>');
                            });
                        },
                    });
                }
                else {
                    console.log('AJAX load did not work');
                }
            });
        });
    </script>

    <script>
        $(document).ready(function () {
            $('select[name="grade_id_new"]').on('change', function () {
                var grade_id = $(this).val();
                if (grade_id) {
                    $.ajax({
                        url: "{{ URL::to('Get_classrooms') }}/" + grade_id,
                        type: "GET",
                        dataType: "json",
                        success: function (data) {
                            $('select[name="classroom_id_new"]').empty();
                            $('select[name="classroom_id_new"]').append('<option selected disabled >{{trans('Parent_trans.Choose')}}...</option>');
                            $.each(data, function (key, value) {
                                $('select[name="classroom_id_new"]').append('<option value="' + key + '">' + value + '</option>');
                            });
                        },
                    });
                }
                else {
                    console.log('AJAX load did not work');
                }
            });
        });
    </script>

    <script>
        $(document).ready(function () {
            $('select[name="classroom_id_new"]').on('change', function () {
                var classroom_id = $(this).val();
                if (classroom_id) {
                    $.ajax({
                        url: "{{ URL::to('Get_Sections') }}/" + classroom_id,
                        type: "GET",
                        dataType: "json",
                        success: function (data) {
                            $('select[name="section_id_new"]').empty();
                            $.each(data, function (key, value) {
                                $('select[name="section_id_new"]').append('<option value="' + key + '">' + value + '</option>');
                            });
                        },
                    });
                }
                else {
                    console.log('AJAX load did not work');
                }
            });
        });
    </script>

    @yield('script')
</body>


</html>
