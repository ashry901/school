@extends('layouts.admin')
@section('title', 'fees-invoice')

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
                <div class="col-xl-12 mb-30">
                    <div class="card card-statistics h-100">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table id="datatable" class="table  table-hover table-sm table-bordered p-0"
                                       data-page-length="50"
                                       style="text-align: center">
                                    <thead>
                                    <tr class="alert-success">
                                        <th>#</th>
                                        <th>الاسم</th>
                                        <th>نوع الرسوم</th>
                                        <th>المبلغ</th>
                                        <th>المرحلة الدراسية</th>
                                        <th>الصف الدراسي</th>
                                        <th>البيان</th>
                                        <th>العمليات</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($fee_invoices as $fee_invoice)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>{{$fee_invoices->student->name}}</td>
                                            <td>{{$fee_invoices->fees->title}}</td>
                                            <td>{{ number_format($fee_invoices->amount, 2) }}</td>
                                            <td>{{$fee_invoices->grade->name}}</td>
                                            <td>{{$fee_invoices->classroom->name_class}}</td>
                                            <td>{{$fee_invoices->description}}</td>
                                            <td>
                                                <a href="{{route('Fees_Invoices.edit', $fee_invoices->id)}}"
                                                   class="btn btn-info btn-sm" role="button"
                                                   aria-pressed="true">
                                                    <i class="fa fa-edit"></i>
                                                </a>

                                                <button type="button"
                                                        class="btn btn-danger btn-sm"
                                                        data-toggle="modal"
                                                        data-target="#Delete_Fee_invoice{{$fee_invoices->id}}" >
                                                    <i class="fa fa-trash"></i>
                                                </button>
                                            </td>
                                        </tr>
                                    @include('dashboard.fees_invoices.delete')
                                    @endforeach
                                </table>
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
