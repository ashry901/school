@extends('layouts.admin')
@section('title', 'sections')

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
                            <a href="{{route('Students.index')}}">
                                {{trans('cpanel/students.Students')}}
                            </a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="{{route('Graduated.index')}}">
                                {{trans('cpanel/students.Graduated')}}
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

                    @if (Session::has('error_Graduated'))
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            <strong>{{Session::get('error_Graduated')}}</strong>
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    @endif
                    <form action="{{route('Graduated.store')}}" method="post">
                        @csrf
                        <div class="form-row">
                            <div class="form-group col">
                                <label for="inputState">
                                    {{trans('cpanel/students.Grade')}}
                                </label>

                                <select class="custom-select mr-sm-2" name="grade_id" required>
                                    <option selected disabled>
                                        {{trans('cpanel/students.Choose')}}...
                                    </option>
                                    @foreach($grades as $grade)
                                        <option value="{{$grade->id}}">{{$grade->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group col">
                                <label for="Classroom_id">
                                    {{trans('cpanel/students.classrooms')}} :
                                    <span class="text-danger">*</span>
                                </label>
                                <select class="custom-select mr-sm-2" name="classroom_id" required>

                                </select>
                            </div>

                            <div class="form-group col">
                                <label for="section_id">
                                    {{trans('cpanel/students.section')}} :
                                </label>
                                <select class="custom-select mr-sm-2" name="section_id" required>

                                </select>
                            </div>

                        </div>

                        <button type="submit" class="btn btn-primary">
                            {{trans('cpanel/students.Confirm')}}
                        </button>
                    </form>

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
