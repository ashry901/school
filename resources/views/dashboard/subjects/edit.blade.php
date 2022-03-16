@extends('layouts.admin')
@section('title', 'edit-subject')

@section('style')
    @toastr_css
@endsection

@section('content')

<div class="content-header row">
    <div class="content-header-left col-md-6 col-12 mb-2">
        <h3 class="content-header-title">
            {{trans('cpanel/teacher.Subject')}}
        </h3>
        <div class="row breadcrumbs-top">
            <div class="breadcrumb-wrapper col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="{{route('admin.dashboard')}}">
                            {{trans('cpanel/sidebar.Dashboard')}}
                        </a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="{{route('subjects.index')}}">
                            {{trans('cpanel/teacher.Subjects')}}
                        </a>
                    </li>
                    <li class="breadcrumb-item active">
                        {{trans('cpanel/teacher.Edit Subject')}}
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
                            {{trans('cpanel/teacher.Edit Subject')}}
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
                                  action="{{route('subjects.update', 'test')}}"
                                  method="post" autocomplete="off">
                                {{ method_field('patch') }}
                                @csrf
                                <div class="form-body">
                                    <h4 class="form-section">
                                        <i class="ft-user"></i>
                                        {{trans('cpanel/teacher.Edit Subject Name')}}
                                    </h4>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="projectinput1">
                                                    {{trans('cpanel/teacher.Subject Name Ar')}}
                                                </label>
                                                <input type="text" name="name_ar"
                                                       value="{{ $subject->getTranslation('name', 'ar') }}"
                                                       class="form-control">
                                                <input type="hidden" name="id" value="{{$subject->id}}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="projectinput2">
                                                    {{trans('cpanel/teacher.Subject Name En')}}
                                                </label>
                                                <input type="text" name="name_en"
                                                       value="{{ $subject->getTranslation('name', 'en') }}"
                                                       class="form-control">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="projectinput5">
                                                    {{trans('cpanel/teacher.Grade')}}
                                                </label>
                                                <select name="grade_id" class="form-control">
                                                    <option selected disabled>
                                                        {{trans('cpanel/teacher.Choose')}}...
                                                    </option>
                                                    @foreach($grades as $grade)
                                                        <option value="{{$grade->id}}"
                                                            {{$grade->id == $subject->grade_id ?'selected':''}}>
                                                            {{$grade->name }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="projectinput5">
                                                    {{trans('cpanel/teacher.Classroom')}}
                                                </label>
                                                <select name="class_id" class="form-control">
                                                    <option value="{{ $subject->classroom->id }}">
                                                        {{ $subject->classroom->name_class }}
                                                    </option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="projectinput6">
                                                    {{trans('cpanel/teacher.Teachers Name')}}
                                                </label>
                                                <select name="teacher_id" class="form-control">
                                                    <option selected disabled>
                                                        {{trans('cpanel/teacher.Choose')}}...
                                                    </option>
                                                    @foreach($teachers as $teacher)
                                                        <option value="{{$teacher->id}}" {{$teacher->id == $subject->teacher_id ?'selected':''}}>
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
                                        {{trans('cpanel/teacher.Submit')}}
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

    @toastr_js
    @toastr_render
@endsection
