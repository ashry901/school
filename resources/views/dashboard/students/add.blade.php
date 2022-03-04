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

<div class="row">
    <div class="col-md-12 mb-30">
        <div class="card card-statistics h-100">
            <div class="card-body">

                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                <form method="post"  action="{{ route('Students.store') }}" autocomplete="off" enctype="multipart/form-data">
                    @csrf
                    <h6 style="font-family: 'Cairo', sans-serif;color: blue">
                        {{trans('Students_trans.personal_information')}}
                    </h6>
                    <br>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>
                                    {{trans('Students_trans.name_ar')}} :
                                    <span class="text-danger">*</span>
                                </label>
                                <input  type="text" name="name_ar"  class="form-control">
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label>{{trans('Students_trans.name_en')}} :
                                    <span class="text-danger">*</span>
                                </label>
                                <input  class="form-control" name="name_en" type="text" >
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>{{trans('Students_trans.email')}} : </label>
                                <input type="email" name="email" class="form-control" >
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label>{{trans('Students_trans.password')}} :</label>
                                <input  type="password" name="password" class="form-control" >
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="gender">
                                    {{trans('Students_trans.gender')}} :
                                    <span class="text-danger">*</span>
                                </label>

                                <select class="custom-select mr-sm-2" name="gender_id">
                                    <option selected disabled>
                                        {{trans('Parent_trans.Choose')}}...
                                    </option>
                                    @foreach($genders as $gender)
                                        <option value="{{ $gender->id }}">
                                            {{ $gender->name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="nal_id">
                                    {{trans('Students_trans.Nationality')}} :
                                    <span class="text-danger">*</span>
                                </label>
                                <select class="custom-select mr-sm-2"
                                        name="nationalitie_id">
                                    <option selected disabled>
                                        {{trans('Parent_trans.Choose')}}...
                                    </option>
                                    @foreach($nationals as $nal)
                                        <option value="{{ $nal->id }}">
                                            {{ $nal->name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="bg_id">{{trans('Students_trans.blood_type')}} : </label>
                                <select class="custom-select mr-sm-2" name="blood_id">
                                    <option selected disabled>
                                        {{trans('Parent_trans.Choose')}}...
                                    </option>
                                    @foreach($bloods as $bg)
                                        <option value="{{ $bg->id }}">
                                            {{ $bg->name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>{{trans('Students_trans.Date_of_Birth')}} :</label>

                                <input type="date"
                                       id="datepicker-action"
                                       class="form-control"
                                       name="date_birth"
                                       data-toggle="tooltip"
                                       data-trigger="hover"
                                       data-placement="top"
                                       data-title="Date Opened"
                                       data-date-format="yyyy-mm-dd">
                            </div>
                        </div>

                    </div>

                    <h6 style="font-family: 'Cairo', sans-serif;color: blue">
                        {{trans('Students_trans.Student_information')}}
                    </h6>
                    <br>
                    <div class="row">
                        <div class="col-md-2">
                            <div class="form-group">
                                <label for="Grade_id">{{trans('Students_trans.Grade')}} :
                                    <span class="text-danger">*</span>
                                </label>

                                <select class="custom-select mr-sm-2" name="grade_id">
                                    <option selected disabled>
                                        {{trans('Parent_trans.Choose')}}...
                                    </option>
                                    @foreach($my_classes as $c)
                                        <option value="{{ $c->id }}">
                                            {{ $c->name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="col-md-2">
                            <div class="form-group">
                                <label for="Classroom_id">
                                    {{trans('Students_trans.classrooms')}} :
                                    <span class="text-danger">*</span>
                                </label>

                                <select class="custom-select mr-sm-2" name="classroom_id">

                                </select>
                            </div>
                        </div>

                        <div class="col-md-2">
                            <div class="form-group">
                                <label for="section_id">{{trans('Students_trans.section')}} : </label>
                                <select class="custom-select mr-sm-2" name="section_id">

                                </select>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="parent_id">
                                    {{trans('Students_trans.parent')}} :
                                    <span class="text-danger">*</span>
                                </label>

                                <select class="custom-select mr-sm-2" name="parent_id">
                                    <option selected disabled>
                                        {{trans('Parent_trans.Choose')}}...
                                    </option>
                                    @foreach($parents as $parent)
                                        <option value="{{ $parent->id }}">
                                            {{ $parent->name_father }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="academic_year">
                                    {{trans('Students_trans.academic_year')}} :
                                    <span class="text-danger">*</span>
                                </label>
                                <select class="custom-select mr-sm-2" name="academic_year">
                                    <option selected disabled>{{trans('Parent_trans.Choose')}}...</option>
                                    @php
                                        $current_year = date("Y");
                                    @endphp
                                    @for($year=$current_year; $year<=$current_year +1 ;$year++)
                                        <option value="{{ $year}}">{{ $year }}</option>
                                    @endfor
                                </select>
                            </div>
                        </div>
                    </div>
                    <br>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="academic_year">
                                {{trans('Students_trans.Attachments')}} :
                                <span class="text-danger">*</span>
                            </label>
                            <input type="file" accept="image/*" name="photos[]" multiple>
                        </div>
                    </div>

                    <button class="btn btn-success btn-sm nextBtn btn-lg pull-right"
                            type="submit">
                        {{trans('Students_trans.submit')}}
                    </button>
                </form>

            </div>
        </div>
    </div>
</div>

@endsection


@section('script')
    @toastr_js
    @toastr_render
@endsection
