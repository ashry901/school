@extends('layouts.admin')
@section('title', 'sections')

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

                <form action="{{route('ProcessingFee.update','test')}}" method="post" autocomplete="off">
                    @method('PUT')
                    @csrf
                    @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>المبلغ : <span class="text-danger">*</span></label>
                                <input  class="form-control" name="debit" value="{{$processingFee->amount}}" type="number" >
                                <input  type="hidden" name="student_id" value="{{$processingFee->student->id}}" class="form-control">
                                <input  type="hidden" name="id"  value="{{$processingFee->id}}" class="form-control">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>البيان : <span class="text-danger">*</span></label>
                                <textarea class="form-control"
                                          name="description"
                                          id="exampleFormControlTextarea1"
                                          rows="3">{{$processingFee->description}}
                                        </textarea>
                            </div>
                        </div>

                    </div>

                    <button class="btn btn-success btn-sm nextBtn btn-lg pull-right"
                            type="submit">
                        {{trans('Students_trans.submit')}}
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
