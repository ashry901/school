@extends('layouts.admin')
@section('title', 'fees-invoice')

@section('style')

    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/datatable/datatables.min.css')}}">
    {{--
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/extensions/responsive.dataTables.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/extensions/colReorder.dataTables.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/extensions/buttons.dataTables.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/datatable/buttons.bootstrap4.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/extensions/fixedHeader.dataTables.min.css')}}">
    --}}


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
                        <a href="{{route('admin.fees')}}">
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
                   href="{{route('admin.fees')}}">
                    {{trans('cpanel/sidebar.Studying Fees')}}
                </a>
                <a class="dropdown-item"
                   href="{{route('admin.fees_invoices')}}">
                    {{trans('cpanel/sidebar.Invoices')}}
                </a>
                <a class="dropdown-item"
                   href="{{route('receipt_students.index')}}">
                    {{trans('cpanel/sidebar.Receipt')}}
                </a>
                <a class="dropdown-item"
                   href="{{route('processingFee.index')}}">
                    {{trans('cpanel/sidebar.Fee Exclusion')}}
                </a>
                <a class="dropdown-item"
                   href="{{route('payment_students.index')}}">
                    {{trans('cpanel/sidebar.Exchange Receipts')}}
                </a>
            </div>
        </div>
    </div>

</div>

<div class="content-body">
    <section id="configuration">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">
                            {{trans('cpanel/students.Fee School')}}
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
                    <div class="card-content collapse show">
                        <div class="card-body card-dashboard">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered zero-configuration">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>{{trans('cpanel/fees.Name')}}</th>
                                        <th>{{trans('cpanel/fees.Fee Type')}}</th>
                                        <th>{{trans('cpanel/fees.Amount')}}</th>
                                        <th>{{trans('cpanel/fees.Grade')}}</th>
                                        <th>{{trans('cpanel/fees.Classrooms')}}</th>
                                        <th>{{trans('cpanel/fees.Statement')}}</th>
                                        <th style="width: 14%">{{trans('cpanel/fees.Action')}}</th>
                                    </tr>
                                    </thead>

                                    <tbody>

                                    @foreach($fee_invoices as $fee_invoice)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>{{$fee_invoice->student->name}}</td>
                                            <td>{{$fee_invoice->fees->title}}</td>
                                            <td>{{ number_format($fee_invoice->amount, 2) }}</td>
                                            <td>{{$fee_invoice->grade->name}}</td>
                                            <td>{{$fee_invoice->classroom->name_class}}</td>
                                            <td>{{$fee_invoice->description}}</td>
                                            <td>
                                                <a href="{{route('admin.fees_invoices.edit', $fee_invoice->id)}}"
                                                   class="btn btn-info btn-sm" role="button"
                                                   aria-pressed="true">
                                                    <i class="ft-edit-2"></i>
                                                </a>
                                                &nbsp; &nbsp;
                                                <button type="button"
                                                        class="btn btn-danger btn-sm"
                                                        data-toggle="modal"
                                                        data-target="#Delete_Fee_invoice{{$fee_invoice->id}}">
                                                    <i class="ft-trash-2"></i>
                                                </button>
                                            </td>
                                        </tr>
                                        @include('dashboard.fees_invoices.delete')
                                    @endforeach

                                    </tbody>

                                    <tfoot>
                                    <tr>
                                        <th>#</th>
                                        <th>{{trans('cpanel/fees.Name')}}</th>
                                        <th>نوع الرسوم</th>
                                        <th>المبلغ</th>
                                        <th>المرحلة الدراسية</th>
                                        <th>الصف الدراسي</th>
                                        <th>البيان</th>
                                        <th style="width: 14%">العمليات</th>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
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


    <script src="{{asset('ashry/back/app-assets/js/scripts/tables/datatables/datatable-basic.js')}}"></script>


@endsection
