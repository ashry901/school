@extends('layouts.admin')
@section('title', 'edit-fees')

@section('style')
    @toastr_css
@endsection

@section('content')

<div class="content-header row">
    <div class="content-header-left col-md-6 col-12 mb-2">
        <h3 class="content-header-title">
            {{__('cpanel/sidebar.Accounts')}}
        </h3>
        <div class="row breadcrumbs-top">
            <div class="breadcrumb-wrapper col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="{{route('admin.dashboard')}}">
                            {{trans('cpanel/fees.Dashboard')}}
                        </a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="{{route('Fees.index')}}">
                            {{trans('cpanel/fees.Accounting')}}
                        </a>
                    </li>
                    <li class="breadcrumb-item active">
                        {{trans('cpanel/fees.Add Invoices')}}
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
                <i class="ft-menu icon-left"></i>
                {{trans('cpanel/sidebar.Accounts')}}
            </button>

            <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                <a class="dropdown-item"
                   href="{{route('Fees.index')}}">
                    {{trans('cpanel/sidebar.Studying Fees')}}
                </a>
                <a class="dropdown-item"
                   href="{{route('Fees_Invoices.index')}}">
                    {{trans('cpanel/sidebar.Invoices')}}
                </a>
                <a class="dropdown-item"
                   href="{{route('receipt_students.index')}}">
                    {{trans('cpanel/sidebar.Receipt')}}
                </a>
                <a class="dropdown-item"
                   href="{{route('ProcessingFee.index')}}">
                    {{trans('cpanel/sidebar.Fee Exclusion')}}
                </a>
                <a class="dropdown-item"
                   href="{{route('Payment_students.index')}}">
                    {{trans('cpanel/sidebar.Exchange Receipts')}}
                </a>
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
                            {{trans('cpanel/fees.Dashboard')}}
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
                                @if ($errors->any())
                                    <div class="alert alert-danger">
                                        <ul>
                                            @foreach ($errors->all() as $error)
                                                <li>{{ $error }}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                @endif
                            </div>

                            <form class="form"
                                  action="{{route('Fees.update','test')}}"
                                  method="post" autocomplete="off">
                                @method('PUT')
                                @csrf

                                <div class="form-body">
                                    <h4 class="form-section">
                                        <i class="ft-user"></i>
                                        {{trans('cpanel/fees.Dashboard')}}
                                    </h4>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="projectinput1">
                                                    {{trans('cpanel/fees.Name Ar')}}
                                                </label>
                                                <input type="text"
                                                       value="{{$fee->getTranslation('title','ar')}}"
                                                       name="title_ar" class="form-control">

                                                <input type="hidden" value="{{$fee->id}}"
                                                       name="id" class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="projectinput2">
                                                    {{trans('cpanel/fees.Name En')}}
                                                </label>
                                                <input type="text"
                                                       value="{{$fee->getTranslation('title','en')}}"
                                                       name="title_en" class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="projectinput2">
                                                    {{trans('cpanel/fees.Amount')}}
                                                </label>
                                                <input type="number" value="{{$fee->amount}}"
                                                       name="amount" class="form-control">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="projectinput5">
                                                    {{trans('cpanel/fees.Fee Type')}}
                                                </label>
                                                <select name="fee_type" class="form-control">
                                                    <option value="" selected="" disabled="">
                                                        {{trans('cpanel/fees.Choose From The List')}}
                                                    </option>
                                                    <option value="1">
                                                        {{trans('cpanel/fees.Invoices Academic Year')}}
                                                    </option>
                                                    <option value="2">
                                                        {{trans('cpanel/fees.Invoices Bus')}}
                                                    </option>

                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="projectinput5">
                                                    {{trans('cpanel/fees.Grade')}}
                                                </label>
                                                <select name="grade_id" class="form-control">
                                                    <option value="none" selected="" disabled="">
                                                        {{trans('cpanel/fees.Choose From The List')}}
                                                    </option>
                                                    @foreach($grades as $grade)
                                                        <option value="{{ $grade->id }}" {{$grade->id == $fee->grade_id ? 'selected' : ""}}>
                                                            {{ $grade->name }}
                                                        </option>
                                                    @endforeach
                                                </select>

                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="projectinput5">
                                                    {{trans('cpanel/fees.Classrooms')}}
                                                </label>
                                                <select name="classroom_id" class="form-control">
                                                    <option value="{{$fee->classroom_id}}">
                                                        {{$fee->classroom->name_class}}
                                                    </option>

                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="projectinput6">
                                                    {{trans('cpanel/fees.Academic Year')}}
                                                </label>
                                                <select name="year" class="form-control">
                                                    <option value="0" selected="" disabled="">
                                                        {{trans('cpanel/fees.Choose From The List')}}
                                                    </option>
                                                    @php
                                                        $current_year = date("Y")
                                                    @endphp
                                                    @for($year=$current_year; $year<=$current_year +1 ;$year++)
                                                        <option value="{{ $year}}" {{$year == $fee->year ? 'selected' : ' '}}>
                                                            {{ $year }}
                                                        </option>
                                                    @endfor
                                                </select>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="projectinput8">
                                            {{trans('cpanel/fees.Notes')}}
                                        </label>
                                        <textarea id="projectinput8" rows="5"
                                                  class="form-control"
                                                  name="description">
                                            {{$fee->description}}
                                        </textarea>
                                    </div>
                                </div>

                                <div class="form-actions">
                                    <button type="submit" class="btn btn-primary">
                                        <i class="la la-check-square-o"></i>
                                        {{trans('cpanel/fees.Save')}}
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
