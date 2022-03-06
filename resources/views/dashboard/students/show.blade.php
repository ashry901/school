@extends('layouts.admin')
@section('title', 'students')

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
                <div class="card-body">
                    <div class="tab nav-border">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active show"
                                   id="home-02-tab"
                                   data-toggle="tab"
                                   href="#home-02"
                                   role="tab" aria-controls="home-02"
                                   aria-selected="true">
                                    {{trans('Students_trans.Student_details')}}
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="profile-02-tab" data-toggle="tab" href="#profile-02"
                                   role="tab" aria-controls="profile-02"
                                   aria-selected="false">{{trans('Students_trans.Attachments')}}</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade active show" id="home-02" role="tabpanel"
                                 aria-labelledby="home-02-tab">
                                <table class="table table-striped table-hover" style="text-align:center">
                                    <tbody>
                                    <tr>
                                        <th scope="row">{{trans('Students_trans.name')}}</th>
                                        <td>{{ $student->name }}</td>
                                        <th scope="row">{{trans('Students_trans.email')}}</th>
                                        <td>{{$student->email}}</td>
                                        <th scope="row">{{trans('Students_trans.gender')}}</th>
                                        <td>{{$student->gender->name}}</td>
                                        <th scope="row">{{trans('Students_trans.Nationality')}}</th>
                                        <td>{{$student->nationality->name}}</td>
                                    </tr>

                                    <tr>
                                        <th scope="row">{{trans('Students_trans.Grade')}}</th>
                                        <td>{{ $student->grade->name }}</td>
                                        <th scope="row">{{trans('Students_trans.classrooms')}}</th>
                                        <td>{{$student->classroom->name_class}}</td>
                                        <th scope="row">{{trans('Students_trans.section')}}</th>
                                        <td>{{$student->section->name_section}}</td>
                                        <th scope="row">{{trans('Students_trans.Date_of_Birth')}}</th>
                                        <td>{{ $student->date_birth}}</td>
                                    </tr>

                                    <tr>
                                        <th scope="row">{{trans('Students_trans.parent')}}</th>
                                        <td>{{ $student->myparent->name_father}}</td>
                                        <th scope="row">{{trans('Students_trans.academic_year')}}</th>
                                        <td>{{ $student->academic_year }}</td>
                                        <th scope="row"></th>
                                        <td></td>
                                        <th scope="row"></th>
                                        <td></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="tab-pane fade" id="profile-02" role="tabpanel"
                                 aria-labelledby="profile-02-tab">
                                <div class="card card-statistics">
                                    <div class="card-body">
                                        <form method="post" action="{{route('Upload_attachment')}}" enctype="multipart/form-data">
                                            {{ csrf_field() }}
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label
                                                        for="academic_year">{{trans('Students_trans.Attachments')}}
                                                        : <span class="text-danger">*</span></label>
                                                    <input type="file" accept="image/*" name="photos[]" multiple required>
                                                    <input type="hidden" name="student_name" value="{{$student->name}}">
                                                    <input type="hidden" name="student_id" value="{{$student->id}}">
                                                </div>
                                            </div>
                                            <br><br>
                                            <button type="submit" class="button button-border x-small">
                                                {{trans('Students_trans.submit')}}
                                            </button>
                                        </form>
                                    </div>
                                    <br>
                                    <table class="table center-aligned-table mb-0 table table-hover"
                                           style="text-align:center">
                                        <thead>
                                        <tr class="table-secondary">
                                            <th scope="col">#</th>
                                            <th scope="col">{{trans('Students_trans.filename')}}</th>
                                            <th scope="col">{{trans('Students_trans.created_at')}}</th>
                                            <th scope="col">{{trans('Students_trans.Processes')}}</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @foreach($student->images as $attachment)
                                            <tr style='text-align:center;vertical-align:middle'>
                                                <td>{{$loop->iteration}}</td>
                                                <td>{{$attachment->filename}}</td>
                                                <td>{{$attachment->created_at->diffForHumans()}}</td>
                                                <td colspan="2">
                                                    <a class="btn btn-outline-info btn-sm"
                                                       href="{{url('Download_attachment')}}/{{ $attachment->imageable->name }}/{{$attachment->filename}}"
                                                       role="button">
                                                        <i class="fas fa-download"></i>&nbsp;
                                                        {{trans('Students_trans.Download')}}
                                                    </a>

                                                    <button type="button" class="btn btn-outline-danger btn-sm"
                                                            data-toggle="modal"
                                                            data-target="#Delete_img{{ $attachment->id }}"
                                                            title="{{ trans('Grades_trans.Delete') }}">{{trans('Students_trans.delete')}}
                                                    </button>

                                                </td>
                                            </tr>

                                            @include('dashboard.students.delete_img')

                                        @endforeach
                                        </tbody>
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
