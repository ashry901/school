@extends('layouts.admin')
@section('title', 'sections')

@section('style')
{{--    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/pickers/daterange/daterangepicker.css')}}">--}}
{{--    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/plugins/forms/wizard.css')}}">--}}
{{--    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/plugins/pickers/daterange/daterange.css')}}">--}}
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/datatable/datatables.min.css')}}">
    @toastr_css
@endsection

@section('content')

{{--

<div class="content-header row">
    <div class="content-header-left col-md-6 col-12 mb-2">
        <h3 class="content-header-title">Circle Style</h3>
        <div class="row breadcrumbs-top">
            <div class="breadcrumb-wrapper col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="{{route('admin.dashboard')}}">
                            Dashboard
                        </a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="{{url('add_parent')}}">
                            List Parents
                        </a>
                    </li>
                    <li class="breadcrumb-item active">
                        Add Parents
                    </li>
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="content-body">
    @livewire('addparent')
</div>
--}}


<div class="row">
    <div class="col-md-12 mb-30">
        <div class="card card-statistics h-100">
            <div class="card-body">

                @livewire('addparent')
            </div>
        </div>
    </div>
</div>


@endsection


@section('script')
    <!-- BEGIN: Page Vendor JS-->
{{--    <script src="{{asset('ashry/back/app-assets/vendors/js/extensions/jquery.steps.min.js')}}"></script>--}}
{{--    <script src="{{asset('ashry/back/app-assets/vendors/js/pickers/dateTime/moment-with-locales.min.js')}}"></script>--}}
{{--    <script src="{{asset('ashry/back/app-assets/vendors/js/pickers/daterange/daterangepicker.js')}}"></script>--}}
{{--    <script src="{{asset('ashry/back/app-assets/vendors/js/forms/validation/jquery.validate.min.js')}}"></script>--}}
{{--    <script src="{{asset('ashry/back/app-assets/js/scripts/forms/wizard-steps.js')}}"></script>--}}

    <!-- END: Page Vendor JS-->
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/datatables.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/js/scripts/tables/datatables/datatable-basic.js')}}"></script>

    @livewireScripts
    @toastr_js
    @toastr_render
@endsection


