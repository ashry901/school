@extends('layouts.admin')
@section('title', 'sections')

@section('style')
    @toastr_css
@endsection

@section('content')

<div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h2 class="content-header-title">
                {{trans('cpanel/teacher.Teachers')}}
            </h2>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{route('admin.dashboard')}}">
                                {{trans('cpanel/teacher.Dashboard')}}
                            </a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="{{route('teachers.index')}}">
                                {{trans('cpanel/teacher.Teachers')}}
                            </a>
                        </li>
                        <li class="breadcrumb-item active">
                            {{trans('cpanel/teacher.Teachers Edit')}}
                        </li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12">
            <div class="btn-group float-md-right">
                <a href="{{route('teachers.index')}}"
                   class="btn btn-info btn-md round" role="button"
                   aria-pressed="true">
                    {{ trans('cpanel/teacher.All Teachers') }}
                </a>
            </div>
        </div>
    </div>

<div class="content-body">

    <section id="basic-form-layouts">

        <div class="row match-height">

            <div class="col-md-12">
                <div class="card">

                    <div class="card-header">
                        <h3 class="card-title" id="basic-layout-form">
                            <i class="ft-user"></i>
                            {{trans('cpanel/teacher.Teachers Info')}}
                        </h3>

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

                            @if(session()->has('error'))
                                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                    <strong>{{ session()->get('error') }}</strong>
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                            @endif

                            <form action="{{route('teachers.update','test')}}" method="post">
                                {{method_field('patch')}}
                                @csrf
                                <div class="form-body">

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="projectinput1">
                                                    {{ trans('cpanel/teacher.Name Arabic') }}
                                                </label>

                                                <input type="text" name="name_ar"
                                                       value="{{ $teachers->getTranslation('name', 'ar') }}"
                                                       class="form-control">
                                                @error('Name_ar')
                                                <div class="alert alert-danger">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="projectinput2">
                                                    {{ trans('cpanel/teacher.Name English') }}
                                                </label>
                                                <input type="text" name="name_en"
                                                       value="{{ $teachers->getTranslation('name', 'en') }}"
                                                       class="form-control">
                                                @error('Name_en')
                                                <div class="alert alert-danger">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="projectinput3">
                                                    {{ trans('cpanel/teacher.E-mail') }}
                                                </label>
                                                <input type="hidden" value="{{$teachers->id}}" name="id">
                                                <input type="email" name="email"
                                                       value="{{$teachers->email}}" class="form-control">
                                                @error('email')
                                                <div class="alert alert-danger">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="projectinput4">
                                                    {{ trans('cpanel/teacher.Password') }}
                                                </label>
                                                <label for="title">{{trans('Teacher_trans.Password')}}</label>
                                                <input type="password" name="password"
                                                       value="{{$teachers->password}}" class="form-control">
                                                @error('Password')
                                                <div class="alert alert-danger">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="projectinput5">
                                                    {{ trans('cpanel/teacher.Specialization') }}
                                                </label>
                                                <select name="specialization_id" class="form-control">
                                                    <option value="{{$teachers->specialization_id}}">
                                                        {{$teachers->specializations->name}}
                                                    </option>
                                                    @foreach($specializations as $specialization)
                                                        <option value="{{$specialization->id}}">
                                                            {{$specialization->name}}
                                                        </option>
                                                    @endforeach
                                                </select>
                                                @error('Specialization_id')
                                                    <div class="alert alert-danger">{{ $message }}</div>
                                                @enderror

                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="projectinput6">
                                                    {{ trans('cpanel/teacher.Gender') }}
                                                </label>
                                                <select name="gender_id" class="form-control">
                                                    <option value="{{$teachers->gender_id}}">
                                                        {{$teachers->genders->name}}
                                                    </option>
                                                    @foreach($genders as $gender)
                                                        <option value="{{$gender->id}}">
                                                            {{$gender->name}}
                                                        </option>
                                                    @endforeach

                                                </select>
                                                @error('Gender_id')
                                                <div class="alert alert-danger">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="issueinput3">
                                                    {{trans('cpanel/teacher.Joining Date')}}
                                                </label>
                                                <input type="date"
                                                       id="datepicker-action"
                                                       class="form-control"
                                                       name="joining_date"
                                                       value="{{$teachers->joining_date}}"
                                                       data-toggle="tooltip"
                                                       data-trigger="hover"
                                                       data-placement="top"
                                                       data-title="Date Opened"
                                                       data-date-format="yyyy-mm-dd"  required>
                                                @error('Joining_Date')
                                                    <div class="alert alert-danger">{{ $message }}</div>
                                                @enderror
                                            </div>

                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="issueinput4">Date Fixed</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="projectinput3">
                                                    {{ trans('cpanel/teacher.Address') }}
                                                </label>

                                                <input type="text" name="address"
                                                       class="form-control" value="{{$teachers->address}}">

                                                @error('Address')
                                                    <div class="alert alert-danger">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>

                                    </div>

                                </div>


                                <div class="form-actions">
                                    <button type="submit" class="btn btn-primary">
                                        <i class="la la-check-square-o"></i>
                                        {{ trans('cpanel/teacher.Edit') }}
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
