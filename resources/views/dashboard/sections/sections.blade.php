@extends('layouts.admin')
@section('title', 'sections')

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
            {{ trans('cpanel/sections.Sections') }}
        </h3>
        <div class="row breadcrumbs-top">
            <div class="breadcrumb-wrapper col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="{{route('admin.dashboard')}}">
                            {{ trans('cpanel/main.Dashboard') }}
                        </a>
                    </li>

                    <li class="breadcrumb-item active">
                        {{ trans('cpanel/sections.Sections') }}
                    </li>
                </ol>
            </div>
        </div>
    </div>

    <div class="content-header-right col-md-6 col-12">
        <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">


            <div class="form-group">
                <button type="button"
                        class="btn btn-outline-success block btn-lg"
                        data-toggle="modal" data-target="#defaultSize">
                    {{ trans('cpanel/sections.Add New Section') }}
                </button>

                <!-- Modal -->
                <div class="modal fade text-left" id="defaultSize" tabindex="-1"
                     role="dialog" aria-labelledby="myModalLabel18" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title" id="myModalLabel18">
                                        {{ trans('cpanel/sections.Add New Section') }}
                                    </h4>

                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>

                                <div class="modal-body">

                                    <form class="form" action="{{ route('sections.store') }}" method="POST">
                                        {{ csrf_field() }}
                                        <div class="form-body">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="projectinput1">
                                                            {{ trans('cpanel/sections.Section Name Ar') }}
                                                        </label>

                                                        <input type="text"
                                                               name="name_section_ar"
                                                               class="form-control"
                                                               placeholder="{{ trans('cpanel/sections.Section_name_ar') }}">
                                                    </div>
                                                </div>

                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="projectinput2">
                                                            {{ trans('cpanel/sections.Section Name En') }}
                                                        </label>

                                                        <input type="text"
                                                               name="name_section_en"
                                                               class="form-control"
                                                               placeholder="{{ trans('cpanel/sections.Section_name_en') }}">
                                                    </div>
                                                </div>

                                            </div>


                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="projectinput5">
                                                            {{ trans('cpanel/sections.Name_Grade') }}
                                                        </label>

                                                        <select name="grade_id" class="form-control"
                                                                onchange="console.log($(this).val())">

                                                            <option value="" selected="" disabled="">
                                                                {{ trans('cpanel/sections.Select_Grade') }}
                                                            </option>
                                                            @foreach ($list_grades as $list_grade)
                                                                <option value="{{ $list_grade->id }}">
                                                                    {{ $list_grade->name }}
                                                                </option>
                                                            @endforeach

                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="projectinput6">
                                                            {{ trans('cpanel/sections.Name_Class') }}
                                                        </label>

                                                        <select name="class_id" class="form-control">

                                                        </select>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label for="projectinput5">
                                                            {{ trans('cpanel/sections.Name_Teacher') }}
                                                        </label>
                                                        <select multiple name="teacher_id[]"
                                                                class="form-control">
                                                            @foreach($teachers as $teacher)
                                                                <option value="{{$teacher->id}}">{{$teacher->name}}</option>
                                                            @endforeach

                                                        </select>
                                                    </div>
                                                </div>

                                            </div>

                                        </div>

                                        <div class="form-actions">
                                            <button type="submit" class="btn btn-primary">
                                                <i class="la la-check-square-o"></i>
                                                {{ trans('cpanel/sections.Submit') }}
                                            </button>
                                        </div>
                                    </form>


                                </div>
                            </div>
                        </div>
                    </div>
            </div>

        </div>
    </div>

</div>

<div class="content-body">

    <div class="row">
        <div class="col-12">

            @if ($errors->any())
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            @endif

            @foreach ($grades as $grade)
            <div class="card">
                <div class="card-header btn-success">
                    <h4 class="card-title">
                        {{ $grade->name }}
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

                <div class="card-content collapse show ">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>{{ trans('cpanel/sections.Name Section') }}</th>
                                    <th>{{ trans('cpanel/sections.Name Class') }}</th>
                                    <th>{{ trans('cpanel/sections.Status') }}</th>
                                    <th>{{ trans('cpanel/sections.Processes') }}</th>
                                </tr>
                                </thead>

                                <tbody>
                                <?php $i = 0; ?>
                                @foreach ($grade->sections as $list_sections)
                                <?php $i++; ?>
                                <tr>
                                    <th scope="row">{{ $i }}</th>
                                    <td>{{ $list_sections->name_section }}</td>
                                    <td>{{ $list_sections->My_classs->name_class }}</td>
                                    <td>
                                        @if ($list_sections->status === 1)
                                            <label class="badge badge-success">
                                                {{ trans('cpanel/sections.Status_Section_AC') }}
                                            </label>
                                        @else
                                            <label class="badge badge-danger">
                                                {{ trans('cpanel/sections.Status_Section_No') }}
                                            </label>
                                        @endif
                                    </td>
                                    <td>
                                        <a href="#"
                                           class="btn btn-outline-info btn-sm"
                                           data-toggle="modal"
                                           data-target="#edit{{ $list_sections->id }}">
                                            {{ trans('cpanel/sections.Edit') }}
                                        </a>
                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                        <a href="#"
                                           class="btn btn-outline-danger btn-sm"
                                           data-toggle="modal"
                                           data-target="#delete{{ $list_sections->id }}">
                                            {{ trans('cpanel/sections.Delete') }}
                                        </a>
                                    </td>
                                </tr>

                                <!-- Edit Section -->
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                    <!-- Modal -->
                                        <div class="modal fade text-left"
                                             id="edit{{ $list_sections->id }}"
                                             tabindex="-1"
                                             role="dialog"
                                             aria-labelledby="myModalLabel18"
                                             aria-hidden="true">

                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title" id="myModalLabel18">
                                                            Add New Section
                                                        </h4>

                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>

                                                    <div class="modal-body">

                                                        <form class="form" action="{{ route('sections.update', 'test') }}"
                                                              method="POST">
                                                            {{ method_field('patch') }}
                                                            {{ csrf_field() }}

                                                            <div class="form-body">
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="projectinput1">
                                                                                Section Name Ar
                                                                            </label>

                                                                            <input type="text"
                                                                                   name="name_section_ar"
                                                                                   class="form-control"
                                                                                   value="{{ $list_sections->getTranslation('name_section', 'ar') }}">
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="projectinput2">
                                                                                Section Name En
                                                                            </label>

                                                                            <input type="text"
                                                                                   name="name_section_en"
                                                                                   class="form-control"
                                                                                   value="{{ $list_sections->getTranslation('name_section', 'en') }}">
                                                                            <input id="id"
                                                                                   type="hidden"
                                                                                   name="id"
                                                                                   class="form-control"
                                                                                   value="{{ $list_sections->id }}">

                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="projectinput5">
                                                                                {{ trans('cpanel/sections.Name_Grade') }}
                                                                            </label>

                                                                            <select name="grade_id" class="form-control"
                                                                                    onclick="console.log($(this).val())">

                                                                                <option value="{{ $grade->id }}">
                                                                                    {{ $grade->name }}
                                                                                </option>

                                                                                @foreach ($list_grades as $list_grade)
                                                                                    <option
                                                                                        value="{{ $list_grade->id }}">
                                                                                        {{ $list_grade->name }}
                                                                                    </option>
                                                                                @endforeach

                                                                            </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="projectinput6">
                                                                                {{ trans('cpanel/sections.Name_Class') }}
                                                                            </label>

                                                                            <select name="class_id" class="form-control">
                                                                                <option value="{{ $list_sections->My_classs->id }}">
                                                                                    {{ $list_sections->My_classs->name_class }}
                                                                                </option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <div class="form-group">
                                                                            <fieldset class="checkbox">
                                                                                <label>
                                                                                    {{ trans('cpanel/sections.Status') }}
                                                                                    @if ($list_sections->status === 1)
                                                                                        <input type="checkbox" checked
                                                                                               name="status" >
                                                                                    @else
                                                                                        <input type="checkbox" name="status">
                                                                                    @endif
                                                                                </label>
                                                                            </fieldset>

                                                                        </div>
                                                                    </div>

                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <div class="form-group">
                                                                            <label for="projectinput5">
                                                                                {{ trans('cpanel/sections.Name_Teacher') }}
                                                                            </label>

                                                                            <select multiple name="teacher_id[]"
                                                                                    class="form-control">
                                                                                @foreach($list_sections->teachers as $teacher)
                                                                                    <option selected value="{{$teacher['id']}}">
                                                                                        {{$teacher['name']}}
                                                                                    </option>
                                                                                @endforeach

                                                                                @foreach($teachers as $teacher)
                                                                                    <option value="{{$teacher->id}}">
                                                                                        {{$teacher->name}}
                                                                                    </option>
                                                                                @endforeach

                                                                            </select>
                                                                        </div>
                                                                    </div>

                                                                </div>

                                                            </div>

                                                            <div class="form-actions">
                                                                <button type="submit" class="btn btn-primary">
                                                                    <i class="la la-check-square-o"></i>
                                                                    {{ trans('cpanel/sections.Submit') }}
                                                                </button>
                                                            </div>
                                                        </form>


                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Delete Section -->
                                <div class="col-lg-4 col-md-6 col-sm-12">

                                    <div class="form-group">
                                    {{--
                                    <button type="button"
                                            class="btn btn-outline-success block btn-lg"
                                            data-toggle="modal" data-target="#defaultSize">
                                        Add New Section
                                    </button>
                                    --}}
                                    <!-- Modal -->
                                        <div class="modal fade text-left"
                                             id="delete{{ $list_sections->id }}"
                                             tabindex="-1"
                                             role="dialog"
                                             aria-labelledby="myModalLabel18"
                                             aria-hidden="true">

                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title" id="myModalLabel18">
                                                            Delete Section
                                                        </h4>

                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>

                                                    <div class="modal-body">

                                                        <form class="form" action="{{ route('sections.destroy', 'test') }}"
                                                              method="post">
                                                            {{ method_field('Delete') }}
                                                            @csrf

                                                            <div class="form-body">
                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <div class="form-group">
                                                                            {{ trans('cpanel/sections.Warning_Section') }}
                                                                            <input id="id" type="hidden"
                                                                                   name="id"
                                                                                   class="form-control"
                                                                                   value="{{ $list_sections->id }}">
                                                                        </div>
                                                                    </div>

                                                                </div>

                                                            </div>

                                                            <div class="form-actions">
                                                                <button type="submit" class="btn btn-danger">
                                                                    <i class="la la-check-square-o"></i>
                                                                    {{ trans('cpanel/sections.Delete') }}
                                                                </button>
                                                            </div>
                                                        </form>


                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                @endforeach

                                </tbody>

                            </table>
                        </div>


                    </div>
                </div>
            </div>


            @endforeach
        </div>
    </div>

</div>

@endsection



@section('script')

    <script>
        $(document).ready(function () {
            $('select[name="grade_id"]').on('change', function () {
                var grade_id = $(this).val();
                if (grade_id) {
                    $.ajax({
                        url: "{{ URL::to('classes') }}/" + grade_id,
                        type: "GET",
                        dataType: "json",
                        success: function (data) {
                            $('select[name="class_id"]').empty();
                            $.each(data, function (key, value) {
                                $('select[name="class_id"]').append('<option value="' + key + '">' + value + '</option>');
                            });
                        },
                    });
                } else {
                    console.log('AJAX load did not work');
                }
            });
        });

    </script>

    <script src="{{asset('ashry/back/app-assets/vendors/js/forms/icheck/icheck.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/js/scripts/forms/checkbox-radio.js')}}"></script>
    @toastr_js
    @toastr_render

@endsection
