@extends('layouts.admin')
@section('title', 'sections')

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
                    <li class="breadcrumb-item"><a href="index.html">Home</a>
                    </li>
                    <li class="breadcrumb-item"><a href="#">Page</a>
                    </li>
                    <li class="breadcrumb-item active">Form Wizard Circle Steps
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



<h5 style="font-family: 'Cairo', sans-serif;color: red"> تاريخ اليوم : {{ date('Y-m-d') }}</h5>
<form method="post" action="{{ route('Attendance.store') }}">

    @csrf
    <table id="datatable" class="table  table-hover table-sm table-bordered p-0" data-page-length="50"
           style="text-align: center">
        <thead>
        <tr>
            <th class="alert-success">#</th>
            <th class="alert-success">{{ trans('Students_trans.name') }}</th>
            <th class="alert-success">{{ trans('Students_trans.email') }}</th>
            <th class="alert-success">{{ trans('Students_trans.gender') }}</th>
            <th class="alert-success">{{ trans('Students_trans.Grade') }}</th>
            <th class="alert-success">{{ trans('Students_trans.classrooms') }}</th>
            <th class="alert-success">{{ trans('Students_trans.section') }}</th>
            <th class="alert-success">{{ trans('Students_trans.Processes') }}</th>
        </tr>
        </thead>
        <tbody>
        @foreach ($students as $student)
            <tr>
                <td>{{ $loop->index + 1 }}</td>
                <td>{{ $student->name }}</td>
                <td>{{ $student->email }}</td>
                <td>{{ $student->gender->Name }}</td>
                <td>{{ $student->grade->Name }}</td>
                <td>{{ $student->classroom->Name_Class }}</td>
                <td>{{ $student->section->Name_Section }}</td>
                <td>

                    @if(isset($student->attendance()->where('attendence_date',date('Y-m-d'))->first()->student_id))

                        <label class="block text-gray-500 font-semibold sm:border-r sm:pr-4">
                            <input name="attendences[{{ $student->id }}]" disabled
                                   {{ $student->attendance()->first()->attendence_status == 1 ? 'checked' : '' }}
                                   class="leading-tight" type="radio" value="presence">
                            <span class="text-success">حضور</span>
                        </label>

                        <label class="ml-4 block text-gray-500 font-semibold">
                            <input name="attendences[{{ $student->id }}]" disabled
                                   {{ $student->attendance()->first()->attendence_status == 0 ? 'checked' : '' }}
                                   class="leading-tight" type="radio" value="absent">
                            <span class="text-danger">غياب</span>
                        </label>

                    @else

                        <label class="block text-gray-500 font-semibold sm:border-r sm:pr-4">
                            <input name="attendences[{{ $student->id }}]" class="leading-tight" type="radio"
                                   value="presence">
                            <span class="text-success">حضور</span>
                        </label>

                        <label class="ml-4 block text-gray-500 font-semibold">
                            <input name="attendences[{{ $student->id }}]" class="leading-tight" type="radio"
                                   value="absent">
                            <span class="text-danger">غياب</span>
                        </label>

                    @endif

                    <input type="hidden" name="student_id[]" value="{{ $student->id }}">
                    <input type="hidden" name="grade_id" value="{{ $student->Grade_id }}">
                    <input type="hidden" name="classroom_id" value="{{ $student->Classroom_id }}">
                    <input type="hidden" name="section_id" value="{{ $student->section_id }}">

                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    <P>
        <button class="btn btn-success" type="submit">{{ trans('Students_trans.submit') }}</button>
    </P>
</form>

@endsection


@section('script')

    @toastr_js
    @toastr_render
@endsection
