@extends('layouts.admin')
@section('title', 'students-promotion')

@section('style')
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/datatable/datatables.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/extensions/responsive.dataTables.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/extensions/colReorder.dataTables.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/extensions/buttons.dataTables.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/datatable/buttons.bootstrap4.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/extensions/fixedHeader.dataTables.min.css')}}">
    @toastr_css
@endsection

@section('content')

<div class="content-header row">

    <div class="content-header-left col-md-6 col-12 mb-2">
        <h2 class="content-header-title">
            {{trans('cpanel/students.Students')}}
        </h2>
        <div class="row breadcrumbs-top">
            <div class="breadcrumb-wrapper col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="{{route('admin.dashboard')}}">
                            {{trans('cpanel/students.Dashboard')}}
                        </a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="{{route('Students.index')}}">
                            {{trans('cpanel/students.Students')}}
                        </a>
                    </li>
                    <li class="breadcrumb-item active">
                        {{trans('cpanel/students.All Students')}}
                    </li>
                </ol>
            </div>
        </div>
    </div>

    <div class="content-header-right col-md-6 col-12">
        <div class="btn-group float-md-right" role="group"
             aria-label="Button group with nested dropdown">
            <button class="btn btn-info round dropdown-toggle dropdown-menu-right box-shadow-2 px-2 mb-1"
                    id="btnGroupDrop1" type="button" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                <i class="ft-list icon-left"></i>
                {{trans('cpanel/sidebar.Students')}}
            </button>

            <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                <a class="dropdown-item" href="{{route('Students.create')}}">
                    {{trans('cpanel/sidebar.Add Student')}}
                </a>
                <a class="dropdown-item" href="{{route('Students.index')}}">
                    {{trans('cpanel/sidebar.List Students')}}
                </a>
                <a class="dropdown-item" href="{{route('Promotion.index')}}">
                    {{trans('cpanel/sidebar.Add Promotion')}}
                </a>
                <a class="dropdown-item" href="{{route('Promotion.create')}}">
                    {{trans('cpanel/sidebar.List Promotions')}}
                </a>
                <a class="dropdown-item" href="{{route('Graduated.create')}}">
                    {{trans('cpanel/sidebar.Add Graduate')}}
                </a>
                <a class="dropdown-item" href="{{route('Graduated.index')}}">
                    {{trans('cpanel/sidebar.List Graduate')}}
                </a>
            </div>
        </div>
    </div>

</div>

<div class="content-body">

    <div class="row">
        <div class="col-md-12 mb-30">
            <div class="card card-statistics h-100">
                <div class="card-body">
                    <div class="col-xl-12 mb-30">
                        <div class="card card-statistics h-100">
                            <div class="card-body">

                                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#Delete_all">
                                    {{trans('cpanel/students.Undo All')}}
                                </button>
                                <br><br>

                                <div class="table-responsive">
                                    <table id="datatable" class="table table-hover table-sm table-bordered p-0"
                                           data-page-length="50"
                                           style="text-align: center">
                                        <thead>
                                        <tr>
                                            <th class="alert-info">#</th>
                                            <th class="alert-info">{{trans('cpanel/students.name')}}</th>
                                            <th class="alert-danger">{{trans('cpanel/students.Previous School Stage')}}</th>
                                            <th class="alert-danger">{{trans('cpanel/students.Academic Year')}}</th>
                                            <th class="alert-danger">{{trans('cpanel/students.Previous Class')}}</th>
                                            <th class="alert-danger">{{trans('cpanel/students.Previous Academic Section')}}</th>
                                            <th class="alert-success">{{trans('cpanel/students.Current School Stage')}}</th>
                                            <th class="alert-success">{{trans('cpanel/students.Current School Year')}}</th>
                                            <th class="alert-success">{{trans('cpanel/students.Current Class')}}</th>
                                            <th class="alert-success">{{trans('cpanel/students.Current Academic Section')}}</th>
                                            <th>{{trans('cpanel/students.Processes')}}</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @foreach($promotions as $promotion)
                                            <tr>
                                                <td>{{ $loop->index+1 }}</td>
                                                <td>{{$promotion->student->name}}</td>
                                                <td>{{$promotion->f_grade->name}}</td>
                                                <td>{{$promotion->academic_year}}</td>
                                                <td>{{$promotion->f_classroom->name_class}}</td>
                                                <td>{{$promotion->f_section->name_section}}</td>
                                                <td>{{$promotion->t_grade->name}}</td>
                                                <td>{{$promotion->academic_year_new}}</td>
                                                <td>{{$promotion->t_classroom->name_class}}</td>
                                                <td>{{$promotion->t_section->name_section}}</td>
                                                <td>
                                                    <button type="button"
                                                            class="btn btn-outline-danger"
                                                            data-toggle="modal"
                                                            data-target="#Delete_one{{$promotion->id}}">
                                                        {{trans('cpanel/students.Return Student')}}
                                                    </button>
                                                    <br>
                                                    &nbsp; &nbsp; &nbsp; &nbsp;
                                                    <button type="button"
                                                            class="btn btn-outline-success"
                                                            data-toggle="modal" data-target="#">
                                                        {{trans('cpanel/students.Student Graduate')}}
                                                    </button>
                                                </td>
                                            </tr>

                                        @include('dashboard.Students.promotion.delete_all')
                                        @include('dashboard.Students.promotion.delete_one')

                                        @endforeach
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

@endsection


@section('script')
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/datatables.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/dataTables.responsive.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/buttons.colVis.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/dataTables.colReorder.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/dataTables.buttons.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/buttons.bootstrap4.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/dataTables.fixedHeader.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/js/scripts/tables/datatables-extensions/datatable-responsive.js')}}"></script>
    @toastr_js
    @toastr_render
@endsection
