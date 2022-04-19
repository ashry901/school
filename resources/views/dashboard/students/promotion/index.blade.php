@extends('layouts.admin')
@section('title', 'students-promotion')

@section('style')

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
                            <a href="{{route('admin.students')}}">
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
                    <a class="dropdown-item" href="{{route('admin.students.create')}}">
                        {{trans('cpanel/sidebar.Add Student')}}
                    </a>
                    <a class="dropdown-item" href="{{route('admin.students')}}">
                        {{trans('cpanel/sidebar.List Students')}}
                    </a>
                    <a class="dropdown-item" href="{{route('admin.promotion.create')}}">
                        {{trans('cpanel/sidebar.Add Promotion')}}
                    </a>
                    <a class="dropdown-item" href="{{route('admin.promotion')}}">
                        {{trans('cpanel/sidebar.List Promotions')}}
                    </a>
                    <a class="dropdown-item" href="{{route('admin.graduated.create')}}">
                        {{trans('cpanel/sidebar.Add Graduate')}}
                    </a>
                    <a class="dropdown-item" href="{{route('admin.graduated')}}">
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

                                    <button type="button" class="btn btn-danger"
                                            data-toggle="modal" data-target="#Delete_all">
                                        {{trans('cpanel/students.Undo All')}}
                                    </button>
                                    <br><br>

                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>{{trans('cpanel/students.name')}}</th>
                                                <th>{{trans('cpanel/students.Previous School Stage')}}</th>
                                                <th>{{trans('cpanel/students.Academic Year')}}</th>
                                                <th>{{trans('cpanel/students.Previous Class')}}</th>
                                                <th>{{trans('cpanel/students.Previous Academic Section')}}</th>
                                                <th>{{trans('cpanel/students.Current School Stage')}}</th>
                                                <th>{{trans('cpanel/students.Current School Year')}}</th>
                                                <th>{{trans('cpanel/students.Current Class')}}</th>
                                                <th>{{trans('cpanel/students.Current Academic Section')}}</th>
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
                                                                class="btn btn-outline-danger btn-sm"
                                                                data-toggle="modal"
                                                                data-target="#Delete_one{{$promotion->id}}">
                                                            {{trans('cpanel/students.Return Student')}}
                                                        </button>
                                                        <br>
                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                        <button type="button"
                                                                class="btn btn-outline-success btn-sm"
                                                                data-toggle="modal" data-target="#">
                                                            {{trans('cpanel/students.Student Graduate')}}
                                                        </button>
                                                    </td>
                                                </tr>

                                            @include('dashboard.students.promotion.delete_all')
                                            @include('dashboard.students.promotion.delete_one')

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
    @toastr_js
    @toastr_render


@endsection


