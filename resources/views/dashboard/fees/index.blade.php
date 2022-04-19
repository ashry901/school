@extends('layouts.admin')
@section('title', 'fees')

@section('style')
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/datatable/datatables.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/extensions/responsive.dataTables.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/extensions/colReorder.dataTables.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/extensions/buttons.dataTables.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/datatable/buttons.bootstrap4.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/extensions/fixedHeader.dataTables.min.css')}}">
    @toastr_css
@endsection

@section('content')

<div class="content-header row">
    <div class="content-header-left col-md-6 col-12 mb-2">
        <h3 class="content-header-title">
            {{trans('cpanel/fees.Fee Invoices')}}
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

    <section class="row all-contacts">
        <div class="col-12">
            <div class="card">

                <div class="card-content">


                    <div class="card-body">
                        <a href="{{route('admin.fees.create')}}"
                           class="btn btn-success btn-sm" role="button"
                           aria-pressed="true">
                            {{trans('cpanel/fees.Add New Invoices')}}
                        </a>
                        <br><br>
                        <div class="table-responsive">
                            <table id="datatable"
                                   class="table table-white-space table-bordered row-grouping display no-wrap icheck table-middle text-center">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>{{trans('cpanel/fees.Name')}}</th>
                                    <th>{{trans('cpanel/fees.Amount')}}</th>
                                    <th>{{trans('cpanel/fees.Grade')}}</th>
                                    <th>{{trans('cpanel/fees.Classrooms')}}</th>
                                    <th>{{trans('cpanel/fees.Academic Year')}}</th>
                                    <th>{{trans('cpanel/fees.Notes')}}</th>
                                    <th>{{trans('cpanel/fees.Action')}}</th>
                                </tr>
                                </thead>
                                <tbody>

                                @foreach($fees as $fee)

                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{$fee->title}}</td>
                                        <td>{{ number_format($fee->amount, 2) }}</td>
                                        <td>{{$fee->grade->name}}</td>
                                        <td>{{$fee->classroom->name_class}}</td>
                                        <td>{{$fee->year}}</td>
                                        <td>{{$fee->description}}</td>
                                        <td>
                                        <span class="dropdown">
                                            <a id="btnSearchDrop2"
                                               href="#"
                                               data-toggle="dropdown"
                                               aria-haspopup="true"
                                               aria-expanded="true"
                                               class="dropdown-toggle dropdown-menu-right">
                                                <i class="la la-ellipsis-v"></i>
                                            </a>

                                            <span aria-labelledby="btnSearchDrop2"
                                                  class="dropdown-menu mt-1 dropdown-menu-right">

                                                <a href="#"
                                                   class="dropdown-item">
                                                    <i class="ft-eye"></i>
                                                    {{trans('cpanel/students.Show Info')}}
                                                </a>

                                                <a href="{{route('admin.fees.edit',$fee->id)}}"
                                                   class="dropdown-item">
                                                    <i class="ft-edit-2"></i>
                                                    {{trans('cpanel/students.Edit')}}
                                                </a>

                                                <a href="#Delete_Fee{{ $fee->id }}"
                                                    class="dropdown-item"
                                                    data-toggle="modal"
                                                    data-target="#Delete_Fee{{ $fee->id }}">
                                                    <i class="ft-trash-2"></i>
                                                    {{trans('cpanel/students.Delete')}}
                                                </a>

                                            </span>
                                        </span>
                                        </td>
                                    </tr>


                                    @include('dashboard.fees.delete')

                                @endforeach
                                </tbody>

                                <tfoot>
                                <tr>
                                    <th>#</th>
                                    <th>{{trans('cpanel/fees.Name')}}</th>
                                    <th>{{trans('cpanel/fees.Amount')}}</th>
                                    <th>{{trans('cpanel/fees.Grade')}}</th>
                                    <th>{{trans('cpanel/fees.Classrooms')}}</th>
                                    <th>{{trans('cpanel/fees.Academic Year')}}</th>
                                    <th>{{trans('cpanel/fees.Notes')}}</th>
                                    <th>{{trans('cpanel/fees.Action')}}</th>
                                </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

</div>



<div class="content-body">
    <section id="configuration">
        <div class="row">
            {{--<livewire:calendar />--}}
        </div>
    </section>
</div>


@endsection


@section('script')
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/datatables.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/dataTables.responsive.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/buttons.colVis.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/dataTables.colReorder.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/dataTables.buttons.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/buttons.bootstrap4.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/dataTables.fixedHeader.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/js/scripts/tables/datatables-extensions/datatable-responsive.js')}}"></script>
    @toastr_js
    @toastr_render
@endsection
