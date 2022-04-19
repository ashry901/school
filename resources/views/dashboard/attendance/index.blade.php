@extends('layouts.admin')
@section('title', 'attendance')

@section('style')
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/forms/icheck/icheck.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/forms/icheck/custom.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/plugins/forms/checkboxes-radios.css')}}">
    @toastr_css
@endsection

@section('content')

<div class="content-header row">
    <div class="content-header-left col-md-6 col-12 mb-2">
        <h3 class="content-header-title">
            Circle Style
        </h3>
        <div class="row breadcrumbs-top">
            <div class="breadcrumb-wrapper col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="index.html">Home</a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="#">Page</a>
                    </li>
                    <li class="breadcrumb-item">
                        <h5 style="font-family: 'Cairo', sans-serif;color: red">
                            {{ trans('cpanel/sections.Today\'s Date') }} : {{ date('d-m-Y') }}
                        </h5>
                    </li>
                </ol>
            </div>
        </div>
    </div>
</div>



@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

@if (session('status'))
    <div class="alert alert-danger">
        <ul>
            <li>{{ session('status') }}</li>
        </ul>
    </div>
@endif


<form class="form" method="post" action="{{ route('attendance.store') }}">
    @csrf
    <div class="table-responsive">
        <table class="table">
            <thead>
            <tr>
                <th class="alert-success">#</th>
                <th class="alert-success">{{ trans('cpanel/students.name') }}</th>
                <th class="alert-success">{{ trans('cpanel/students.email') }}</th>
                <th class="alert-success">{{ trans('cpanel/students.gender') }}</th>
                <th class="alert-success">{{ trans('cpanel/students.Grade') }}</th>
                <th class="alert-success">{{ trans('cpanel/students.classrooms') }}</th>
                <th class="alert-success">{{ trans('cpanel/students.section') }}</th>
                <th class="alert-success" style="width: 12%">{{ trans('cpanel/students.Processes') }}</th>
            </tr>
            </thead>
            <tbody>
            @foreach ($students as $student)
                <tr>
                    <td>{{ $loop->index + 1 }}</td>
                    <td>{{ $student->name }}</td>
                    <td>{{ $student->email }}</td>
                    <td>{{ $student->gender->name }}</td>
                    <td>{{ $student->grade->name }}</td>
                    <td>{{ $student->classroom->name_class }}</td>
                    <td>{{ $student->section->name_section }}</td>
                    <td>
                        @if(isset($student->attendance()->where('attendence_date',date('Y-m-d'))->first()->student_id))
                            <label>
                                <input name="attendences[{{ $student->id }}]" disabled
                                       {{ $student->attendance()->first()->attendence_status == 1 ? 'checked' : '' }}
                                       class="leading-tight" type="radio" value="presence">
                                <span class="text-success">{{ trans('cpanel/sections.Presence') }}</span>
                            </label>

                            <label>
                                <input name="attendences[{{ $student->id }}]" disabled
                                       {{ $student->attendance()->first()->attendence_status == 0 ? 'checked' : '' }}
                                       class="leading-tight" type="radio" value="absent">
                                <span class="text-danger">{{ trans('cpanel/sections.Absence') }}</span>
                            </label>

                        @else
                            <label>
                                <input name="attendences[{{ $student->id }}]" class="leading-tight" type="radio"
                                       value="presence">
                                <span class="text-success">{{ trans('cpanel/sections.Presence') }}</span>
                            </label>
                            <br>
                            <label>
                                <input name="attendences[{{ $student->id }}]" class="leading-tight" type="radio"
                                       value="absent">
                                <span class="text-danger">
                                    {{ trans('cpanel/sections.Absence') }}
                                </span>
                            </label>

                        @endif

                        <input type="hidden" name="student_id[]" value="{{ $student->id }}">
                        <input type="hidden" name="grade_id" value="{{ $student->grade_id }}">
                        <input type="hidden" name="classroom_id" value="{{ $student->classroom_id }}">
                        <input type="hidden" name="section_id" value="{{ $student->section_id }}">

                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
    </div>


        <button type="submit" class="btn btn-primary">
            <i class="la la-check-square-o"></i>
            {{ trans('cpanel/students.Submit') }}
        </button>
    <br><br>

</form>

@endsection


@section('script')

    <script src="{{asset('ashry/back/app-assets/vendors/js/forms/icheck/icheck.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/js/scripts/forms/checkbox-radio.js')}}"></script>

    @toastr_js
    @toastr_render
@endsection
