@extends('layouts.admin')
@section('title', 'graduated')

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
                                {{trans('cpanel/students.All Students')}}
                            </a>
                        </li>

                        <li class="breadcrumb-item">
                            <a href="{{route('admin.graduated.create')}}">
                                {{trans('cpanel/students.Add Student Graduate')}}
                            </a>
                        </li>

                        <li class="breadcrumb-item active">
                            {{trans('cpanel/students.Students')}}
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
                    <a class="dropdown-item" href="{{route('admin.promotion')}}">
                        {{trans('cpanel/sidebar.Add Promotion')}}
                    </a>
                    <a class="dropdown-item" href="{{route('admin.promotion.create')}}">
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
                                    <div class="table-responsive">
                                        <table id="datatable" class="table table-hover table-sm table-bordered p-0"
                                               data-page-length="50"
                                               style="text-align: center">
                                            <thead>
                                            <tr class="alert-success">
                                                <th>#</th>
                                                <th>{{trans('cpanel/students.name')}}</th>
                                                <th>{{trans('cpanel/students.email')}}</th>
                                                <th>{{trans('cpanel/students.gender')}}</th>
                                                <th>{{trans('cpanel/students.Grade')}}</th>
                                                <th>{{trans('cpanel/students.classrooms')}}</th>
                                                <th>{{trans('cpanel/students.section')}}</th>
                                                <th>{{trans('cpanel/students.Processes')}}</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            @foreach($students as $student)
                                                <tr>
                                                    <td>{{ $loop->index+1 }}</td>
                                                    <td>{{$student->name}}</td>
                                                    <td>{{$student->email}}</td>
                                                    <td>{{$student->gender->name}}</td>
                                                    <td>{{$student->grade->name}}</td>
                                                    <td>{{$student->classroom->name_class}}</td>
                                                    <td>{{$student->section->name_section}}</td>
                                                    <td>
                                                        <button type="button"
                                                                class="btn btn-success btn-sm"
                                                                data-toggle="modal"
                                                                data-target="#Return_Student{{ $student->id }}"
                                                                title="{{ trans('cpanel/students.Delete') }}">
                                                            {{ trans('cpanel/students.Return Student') }}
                                                        </button>
                                                        <br><br>
                                                        <button type="button"
                                                                class="btn btn-danger btn-sm"
                                                                data-toggle="modal"
                                                                data-target="#Delete_Student{{ $student->id }}"
                                                                title="{{ trans('cpanel/students.Delete') }}">
                                                            {{ trans('cpanel/students.Delete Student') }}
                                                        </button>
                                                    </td>
                                                </tr>
                                            @include('dashboard.students.graduated.return')
                                            @include('dashboard.students.graduated.delete')
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
