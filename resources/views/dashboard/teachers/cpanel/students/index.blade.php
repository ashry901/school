@extends('layouts.admin')
@section('title', 'teachers students')

@section('style')
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/pickers/daterange/daterangepicker.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/plugins/forms/wizard.css')}}">

    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/datatable/datatables.min.css')}}">
    @toastr_css
@endsection


@section('content')

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
    <form method="post" action="{{ route('attendance') }}" autocomplete="off">

        @csrf
        <table id="datatable" class="table table-hover table-sm table-bordered p-0"
               data-page-length="50"
               style="text-align: center">
            <thead>
            <tr>
                <th class="alert-success">#</th>
                <th class="alert-success">{{ trans('cpanel/students.name') }}</th>
                <th class="alert-success">{{ trans('cpanel/students.email') }}</th>
                <th class="alert-success">{{ trans('cpanel/students.gender') }}</th>
                <th class="alert-success">{{ trans('cpanel/students.Grade') }}</th>
                <th class="alert-success">{{ trans('cpanel/students.classrooms') }}</th>
                <th class="alert-success">{{ trans('cpanel/students.section') }}</th>
                <th class="alert-success">الحضور والغياب</th>
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
                        <label class="block text-gray-500 font-semibold sm:border-r sm:pr-4">
                            <input name="attendences[{{ $student->id }}]"
                                   @foreach($student->attendance()->where('attendence_date',date('Y-m-d'))->get() as $attendance)
                                   {{ $attendance->attendence_status == 1 ? 'checked' : '' }}
                                   @endforeach
                                   class="leading-tight" type="radio"
                                   value="presence">
                            <span class="text-success">حضور</span>
                        </label>

                        <label class="ml-4 block text-gray-500 font-semibold">
                            <input name="attendences[{{ $student->id }}]"
                                   @foreach($student->attendance()->where('attendence_date',date('Y-m-d'))->get() as $attendance)
                                   {{ $attendance->attendence_status == 0 ? 'checked' : '' }}
                                   @endforeach
                                   class="leading-tight" type="radio"
                                   value="absent">
                            <span class="text-danger">غياب</span>
                        </label>

                        <input type="hidden" name="grade_id" value="{{ $student->grade_id }}">
                        <input type="hidden" name="classroom_id" value="{{ $student->classroom_id }}">
                        <input type="hidden" name="section_id" value="{{ $student->section_id }}">
                    </td>

                </tr>
            @endforeach
            </tbody>
        </table>
        <P>
            <button class="btn btn-success" type="submit">
                {{ trans('cpanel/students.Submit') }}
            </button>
        </P>
    </form>
    <br>

@endsection

@section('script')
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/datatables.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/js/scripts/tables/datatables/datatable-basic.js')}}"></script>
    @toastr_js
    @toastr_render
@endsection
