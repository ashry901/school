@extends('layouts.admin')
@section('title', 'add-library')

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

                @if(session()->has('error'))
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <strong>{{ session()->get('error') }}</strong>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                @endif
                <div class="col-xs-12">
                    <div class="col-md-12">
                        <br>
                        <form action="{{route('admin.library.store')}}"
                              method="post"
                              enctype="multipart/form-data">
                            @csrf
                            <div class="form-row">

                                <div class="col">
                                    <label for="title">?????? ????????????</label>
                                    <input type="text" name="title" class="form-control">
                                </div>

                            </div>
                            <br>

                            <div class="form-row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="Grade_id">
                                            {{trans('cpanel/students.Grade')}} :
                                            <span class="text-danger">*</span>
                                        </label>
                                        <select class="custom-select mr-sm-2" name="grade_id">
                                            <option selected disabled>
                                                {{trans('cpanel/students.Choose')}}...
                                            </option>
                                            @foreach($grades as $grade)
                                                <option value="{{ $grade->id }}">
                                                    {{ $grade->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                <div class="col">
                                    <div class="form-group">
                                        <label for="Classroom_id">
                                            {{trans('cpanel/students.classrooms')}} :
                                            <span class="text-danger">*</span>
                                        </label>
                                        <select class="custom-select mr-sm-2"
                                                name="classroom_id">

                                        </select>
                                    </div>
                                </div>

                                <div class="col">
                                    <div class="form-group">
                                        <label for="section_id">
                                            {{trans('cpanel/students.section')}} :
                                        </label>
                                        <select class="custom-select mr-sm-2"
                                                name="section_id">

                                        </select>
                                    </div>
                                </div>

                            </div><br>



                            <div class="form-row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="academic_year">
                                            Attachment :
                                            <span class="text-danger">*</span>
                                        </label>
                                        <input type="file" accept="application/pdf"
                                               name="file_name" required>
                                    </div>
                                </div>
                            </div>

                            <button class="btn btn-success btn-sm nextBtn btn-lg pull-right"
                                    type="submit">
                                {{ trans('cpanel/students.submit') }}
                            </button>
                        </form>
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
