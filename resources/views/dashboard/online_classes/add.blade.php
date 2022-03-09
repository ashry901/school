@extends('layouts.admin')
@section('title', 'add-online-class')

@section('style')
    @toastr_css
@endsection

@section('content')

<div class="content-header row">
    <div class="content-header-left col-md-6 col-12 mb-2">
        <h3 class="content-header-title">Circle Style</h3>
        <div class="row breadcrumbs-top">
            <div class="breadcrumb-wrapper col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="index.html">Home</a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="#">Page</a>
                    </li>
                    <li class="breadcrumb-item active">
                        Form Wizard Circle Steps
                    </li>
                </ol>
            </div>
        </div>
    </div>

    <div class="content-header-right col-md-6 col-12">
        <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
            <button class="btn btn-info round dropdown-toggle dropdown-menu-right box-shadow-2 px-2 mb-1" id="btnGroupDrop1" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="ft-settings icon-left"></i> Settings</button>
            <div class="dropdown-menu" aria-labelledby="btnGroupDrop1"><a class="dropdown-item" href="card-bootstrap.html">Cards</a><a class="dropdown-item" href="component-buttons-extended.html">Buttons</a></div>
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

                    <form method="post" action="{{ route('online_classes.store') }}" autocomplete="off">
                        @csrf
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="Grade_id">{{ trans('Students_trans.Grade') }} :
                                        <span class="text-danger">*</span>
                                    </label>

                                    <select class="custom-select mr-sm-2" name="grade_id">
                                        <option selected disabled>
                                            {{ trans('Parent_trans.Choose') }}...
                                        </option>
                                        @foreach ($grades as $grade)
                                            <option value="{{ $grade->id }}">
                                                {{ $grade->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="Classroom_id">
                                        {{ trans('Students_trans.classrooms') }} :
                                        <span class="text-danger">*</span>
                                    </label>
                                    <select class="custom-select mr-sm-2" name="classroom_id">

                                    </select>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="section_id">{{ trans('Students_trans.section') }} : </label>
                                    <select class="custom-select mr-sm-2" name="section_id">

                                    </select>
                                </div>
                            </div>
                        </div><br>

                        <div class="row">

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>عنوان الحصة : <span class="text-danger">*</span></label>
                                    <input class="form-control" name="topic" type="text">
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>تاريخ ووقت الحصة : <span class="text-danger">*</span></label>
                                    <input class="form-control" type="datetime-local" name="start_time">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>مدة الحصة بالدقائق : <span class="text-danger">*</span></label>
                                    <input class="form-control" name="duration" type="text">
                                </div>
                            </div>

                        </div>
                        <button class="btn btn-success btn-sm nextBtn btn-lg pull-right"
                                type="submit">
                            {{ trans('Students_trans.submit') }}
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
