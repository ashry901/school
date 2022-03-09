@extends('layouts.admin')
@section('title', 'edit-student')

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

<div class="content-body">

    <section id="basic-form-layouts">

        <div class="row match-height">

            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-form">
                            {{trans('cpanel/students.Edit Student Info')}}
                        </h4>
                        <a class="heading-elements-toggle">
                            <i class="la la-ellipsis-v font-medium-3"></i>
                        </a>
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

                            <form class="form" action="{{route('Students.update','test')}}"
                                  method="post" autocomplete="off">
                                @method('PUT')
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

                                                <input value="{{$students->getTranslation('name','ar')}}"
                                                       type="text" name="name_ar"  class="form-control">

                                                <input type="hidden" name="id" value="{{$students->id}}">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>{{trans('cpanel/students.name_en')}} :
                                                    <span class="text-danger">*</span>
                                                </label>

                                                <input value="{{$students->getTranslation('name','en')}}"
                                                       class="form-control" name="name_en" type="text" >
                                            </div>
                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>{{trans('cpanel/students.email')}} : </label>
                                                <input type="email" value="{{ $students->email }}"
                                                       name="email" class="form-control" >
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>{{trans('cpanel/students.password')}} :</label>
                                                <input value="{{ $students->password }}"
                                                       type="password" name="password"
                                                       class="form-control" >
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>{{trans('cpanel/students.Date_of_Birth')}}  :</label>

                                                <input type="date"
                                                       value="{{$students->date_birth}}"
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

                                                <select class="form-control" name="gender_id">
                                                    <option selected disabled>
                                                        {{trans('cpanel/students.Choose')}}...
                                                    </option>
                                                    @foreach($genders as $gender)
                                                        <option value="{{$gender->id}}"
                                                            {{$gender->id == $students->gender_id ? 'selected' : ""}}>
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

                                                <select class="form-control" name="nationalitie_id">
                                                    <option selected disabled>
                                                        {{trans('cpanel/students.Choose')}}...
                                                    </option>
                                                    @foreach($nationals as $nal)
                                                        <option value="{{ $nal->id }}"
                                                            {{$nal->id == $students->nationalitie_id ? 'selected' : ""}}>
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
                                                        {{trans('Parent_trans.Choose')}}...
                                                    </option>
                                                    @foreach($bloods as $bg)
                                                        <option value="{{ $bg->id }}"
                                                            {{$bg->id == $students->blood_id ? 'selected' : ""}}>
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

                                                    @foreach($grades as $grade)
                                                        <option value="{{ $grade->id }}"
                                                            {{$grade->id == $students->grade_id ? 'selected' : ""}}>
                                                            {{ $grade->name }}
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
                                                    <option value="{{$students->classroom_id}}">
                                                        {{$students->classroom->name_class}}
                                                    </option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="section_id">
                                                    {{trans('cpanel/students.section')}} :
                                                </label>

                                                <select class="form-control" name="section_id">
                                                    <option value="{{$students->section_id}}">
                                                        {{$students->section->name_section}}
                                                    </option>
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
                                                        <option value="{{ $parent->id }}"
                                                            {{ $parent->id == $students->parent_id ? 'selected' : ""}}>
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
                                                        <option value="{{ $year}}"
                                                            {{$year == $students->academic_year ? 'selected' : ' '}}>
                                                            {{ $year }}
                                                        </option>
                                                    @endfor
                                                </select>
                                            </div>
                                        </div>

                                    </div>

                                </div>

                                <div class="form-actions">
                                    <button type="submit" class="btn btn-primary">
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
@endsection
