@extends('layouts.admin')
@section('title', 'add-quizzes')

@section('style')
    @toastr_css
@endsection

@section('content')

<div class="content-header row">
    <div class="content-header-left col-md-6 col-12 mb-2">
        <h3 class="content-header-title">
            {{trans('cpanel/teacher.Quizzes')}}
        </h3>
        <div class="row breadcrumbs-top">
            <div class="breadcrumb-wrapper col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="{{route('admin.dashboard')}}">
                            {{trans('cpanel/teacher.Dashboard')}}
                        </a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="{{route('admin.quizzes')}}">
                            {{trans('cpanel/teacher.Quizzes')}}
                        </a>
                    </li>
                    <li class="breadcrumb-item active">
                        {{trans('cpanel/teacher.All Quizzes')}}
                    </li>
                </ol>
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
                            {{trans('cpanel/teacher.Quizzes')}}
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
                                @if(session()->has('error'))
                                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                        <strong>{{ session()->get('error') }}</strong>
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                @endif
                            </div>

                            <form class="form"
                                  action="{{route('admin.quizzes.store')}}"
                                  method="post"
                                  autocomplete="off">
                                @csrf
                                <div class="form-body">
                                    <h4 class="form-section">
                                        <i class="ft-user"></i>
                                        {{trans('cpanel/teacher.Quizzes')}}
                                    </h4>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="projectinput1">
                                                    {{trans('cpanel/teacher.Name Quizzes Arabic')}}
                                                </label>
                                                <input type="text" name="name_ar" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="projectinput2">
                                                    {{trans('cpanel/teacher.Name Quizzes English')}}
                                                </label>
                                                <input type="text" name="name_en" class="form-control">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="projectinput5">
                                                    {{trans('cpanel/teacher.Subject Name')}}
                                                </label>
                                                <select name="subject_id" class="form-control">
                                                    <option selected disabled>
                                                        {{trans('cpanel/teacher.Choose Subject Name')}}
                                                    </option>
                                                    @foreach($subjects as $subject)
                                                        <option value="{{ $subject->id }}">
                                                            {{ $subject->name }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="grade_id">
                                                    {{trans('cpanel/teacher.Teachers Name')}}
                                                </label>
                                                <select name="teacher_id" class="form-control">
                                                    <option selected disabled>
                                                        {{trans('cpanel/teacher.Choose Teachers Name')}}
                                                    </option>
                                                    @foreach($teachers as $teacher)
                                                        <option value="{{ $teacher->id }}">
                                                            {{ $teacher->name }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="grade_id">
                                                    {{trans('cpanel/teacher.Grade')}}
                                                </label>
                                                <select name="grade_id" class="form-control">
                                                    <option selected disabled>
                                                        {{trans('cpanel/teacher.Choose')}}...
                                                    </option>
                                                    @foreach($grades as $grade)
                                                        <option value="{{ $grade->id }}">
                                                            {{ $grade->name }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>
                                                    {{trans('cpanel/teacher.Classroom')}}
                                                </label>

                                                <select class="form-control" name="classroom_id">

                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="section_id">
                                                    {{trans('cpanel/teacher.Section')}}
                                                </label>
                                                <select class="form-control" name="section_id">

                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-actions">
                                    <button type="submit" class="btn btn-primary">
                                        <i class="la la-check-square-o"></i>
                                        {{trans('cpanel/teacher.Save')}}
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
