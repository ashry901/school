@extends('layouts.admin')
@section('title', 'add-student')

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
                <a class="dropdown-item" href="{{route('promotion.index')}}">
                    {{trans('cpanel/sidebar.Add Promotion')}}
                </a>
                <a class="dropdown-item" href="{{route('promotion.create')}}">
                    {{trans('cpanel/sidebar.List Promotions')}}
                </a>
                <a class="dropdown-item" href="{{route('graduated.create')}}">
                    {{trans('cpanel/sidebar.Add Graduate')}}
                </a>
                <a class="dropdown-item" href="{{route('graduated.index')}}">
                    {{trans('cpanel/sidebar.List Graduate')}}
                </a>
            </div>
        </div>
    </div>

</div>

<div class="content-body">

    <section id="basic-form-layouts">

        <div class="row match-height">

            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-form">
                            {{trans('cpanel/students.personal_information')}}
                        </h4>
                        <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                        <div class="heading-elements">
                            <ul class="list-inline mb-0">
                                <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                                <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                                <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                                <li><a data-action="close"><i class="ft-x"></i></a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="card-content collapse show">
                        <div class="card-body">
                            <div class="card-text">

                            </div>
                            <form class="form" method="post"
                                  action="{{ route('admin.students.store') }}"
                                  autocomplete="off" enctype="multipart/form-data">
                                @csrf
                                <div class="form-body">
                                    @if ($errors->any())
                                        <div class="alert alert-danger">
                                            <ul>
                                                @foreach ($errors->all() as $error)
                                                    <li>{{ $error }}</li>
                                                @endforeach
                                            </ul>
                                        </div>
                                    @endif

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>
                                                    {{trans('cpanel/students.name_ar')}} :
                                                    <span class="text-danger">*</span>
                                                </label>
                                                <input type="text" name="name_ar"  class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>{{trans('cpanel/students.name_en')}} :
                                                    <span class="text-danger">*</span>
                                                </label>
                                                <input  class="form-control" name="name_en" type="text" >
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>{{trans('cpanel/students.email')}} : </label>
                                                <input type="email" name="email" class="form-control" >
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>{{trans('cpanel/students.password')}} :</label>
                                                <input  type="password" name="password" class="form-control" >
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>
                                                    {{trans('cpanel/students.Date_of_Birth')}} :
                                                </label>

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

                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="gender">
                                                    {{trans('cpanel/students.gender')}} :
                                                    <span class="text-danger">*</span>
                                                </label>

                                                <select name="gender_id" class="form-control">
                                                    <option selected disabled>
                                                        {{trans('cpanel/students.Choose')}}...
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
                                                    {{trans('cpanel/students.Nationality')}} :
                                                    <span class="text-danger">*</span>
                                                </label>
                                                <select class="form-control"
                                                        name="nationalitie_id">
                                                    <option selected disabled>
                                                        {{trans('cpanel/students.Choose')}}...
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
                                                <label for="bg_id">
                                                    {{trans('cpanel/students.blood_type')}} :
                                                </label>
                                                <select class="form-control" name="blood_id">
                                                    <option selected disabled>
                                                        {{trans('cpanel/students.Choose')}}...
                                                    </option>
                                                    @foreach($bloodtypes as $bg)
                                                        <option value="{{ $bg->id }}">
                                                            {{ $bg->name }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="Grade_id">
                                                    {{trans('cpanel/students.Grade')}} :
                                                    <span class="text-danger">*</span>
                                                </label>

                                                <select class="form-control" name="grade_id">
                                                    <option selected disabled>
                                                        {{trans('cpanel/students.Choose')}}...
                                                    </option>
                                                    @foreach($my_classes as $c)
                                                        <option value="{{ $c->id }}">
                                                            {{ $c->name }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="Classroom_id">
                                                    {{trans('cpanel/students.classrooms')}} :
                                                    <span class="text-danger">*</span>
                                                </label>

                                                <select class="form-control" name="classroom_id">

                                                </select>

                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="section_id">
                                                    {{trans('cpanel/students.section')}} :
                                                </label>
                                                <select class="form-control" name="section_id">

                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="parent_id">
                                                    {{trans('cpanel/students.parent')}} :
                                                    <span class="text-danger">*</span>
                                                </label>

                                                <select class="form-control" name="parent_id">
                                                    <option selected disabled>
                                                        {{trans('cpanel/students.Choose')}}...
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
                                                    {{trans('cpanel/students.academic_year')}} :
                                                    <span class="text-danger">*</span>
                                                </label>
                                                <select class="form-control" name="academic_year">
                                                    <option selected disabled>
                                                        {{trans('cpanel/students.Choose')}}...
                                                    </option>
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

                                    <div class="form-group">
                                        <label>
                                            {{trans('cpanel/students.Attachments')}} :
                                            <span class="text-danger">*</span>
                                        </label>

                                        <label class="file center-block">
                                            <input type="file" accept="image/*" name="photos[]" multiple>
                                            <span class="file-custom"></span>
                                        </label>
                                    </div>

                                </div>

                                <div class="form-actions">
                                    <button class="btn btn-primary"
                                            type="submit">
                                        <i class="la la-check-square-o"></i>
                                        {{trans('cpanel/students.Submit')}}
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </section>

</div>

@endsection


@section('script')
    @toastr_js
    @toastr_render

    <script>
        $(document).ready(function () {
            $('select[name="grade_id"]').on('change', function () {
                var grade_id = $(this).val();
                if (grade_id) {
                    $.ajax({
                        {{--url: "{{ URL::to('get_classrooms') }}/" + grade_id,--}}
                        url: 'get_classrooms/' + grade_id,
                        type: "GET",
                        dataType: "json",
                        success: function (data) {
                            $('select[name="classroom_id"]').empty();
                            $('select[name="classroom_id"]').append('<option selected disabled >{{trans('cpanel/parent.Choose')}}...</option>');
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
                        {{--url: "{{ URL::to('get_sections') }}/" + classroom_id,--}}
                        url: 'get_sections/' + classroom_id,
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


@endsection
