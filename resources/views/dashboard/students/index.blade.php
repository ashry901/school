@extends('layouts.admin')
@section('title', 'students')

@section('style')

    {{--
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/datatable/datatables.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/extensions/responsive.dataTables.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/extensions/colReorder.dataTables.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/extensions/buttons.dataTables.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/datatable/buttons.bootstrap4.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/extensions/fixedHeader.dataTables.min.css')}}">
    --}}

    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/datatable/dataTables.bootstrap4.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/pages/app-contacts.css')}}">

    @toastr_css
@endsection

@section('content')

<div class="content-header row">
    @include('dashboard.students.dropdown-students')
</div>


<div class="content-body">

    <section class="row all-contacts">
        <div class="col-12">
            <div class="card">

                <div class="card-content">

                    <div class="card-body">
                        <h3 class="card-title" id="basic-layout-form">
                            <i class="ft-user"></i>
                            {{trans('cpanel/students.Students Info')}}
                        </h3>

                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>{{trans('cpanel/students.name')}}</th>
                                    <th>{{trans('cpanel/students.email')}}</th>
                                    <th>{{trans('cpanel/students.gender')}}</th>
                                    <th>{{trans('cpanel/students.Grade')}}</th>
                                    <th>{{trans('cpanel/students.classrooms')}}</th>
                                    <th>{{trans('cpanel/students.section')}}</th>
                                    <th>{{trans('cpanel/students.Processes')}}</th>
                                </tr>
                                </thead>


                                <tbody>
                                @foreach($students as $student)
                                    <tr>
                                        <td>{{ $loop->index+1 }}</td>
                                        <td>{{$student->name}}</td>
                                        <td>{{$student->email}}</td>
                                        <td>{{$student->gender->name}}</td>
                                        <td>{{$student->grade->name}}</td>
                                        <td>{{$student->classroom->name_class}}</td>
                                        <td>{{$student->section->name_section}}</td>
                                        <td>
                                        {{--
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

                                                <a href="{{route('admin.students.show', $student->id)}}"
                                                   class="dropdown-item">
                                                    <i class="ft-plus-circle info"></i>
                                                    {{trans('cpanel/students.Show Info')}}
                                                </a>

                                                <a href="{{route('Fees_Invoices.show', $student->id)}}"
                                                   class="dropdown-item">
                                                    <i class="ft-plus-circle primary"></i>
                                                    {{trans('cpanel/students.Add Invoices')}}
                                                </a>

                                                <a href="{{route('receipt_students.show', $student->id)}}"
                                                   class="dropdown-item">
                                                    <i class="ft-plus-circle primary"></i>
                                                    {{trans('cpanel/students.Receipt Document')}}
                                                </a>

                                                <a href="{{route('Payment_students.show', $student->id)}}"
                                                   class="dropdown-item">
                                                    <i class="ft-plus-circle primary"></i>
                                                    {{trans('cpanel/students.Receipt Cashing')}}
                                                </a>

                                                <a href="{{route('ProcessingFee.show', $student->id)}}"
                                                   class="dropdown-item">
                                                    <i class="ft-edit-2"></i>
                                                    {{trans('cpanel/students.Exclude Fee')}}
                                                </a>

                                                <a href="{{route('admin.students.edit', $student->id)}}"
                                                   class="dropdown-item">
                                                    <i class="ft-edit-2"></i>
                                                    {{trans('cpanel/students.Edit')}}
                                                </a>

                                                <a href="#Delete_Student{{ $student->id }}"
                                                   class="dropdown-item"
                                                   data-toggle="modal"
                                                   data-target="#Delete_Student{{ $student->id }}">
                                                    <i class="ft-trash-2"></i>
                                                    {{trans('cpanel/students.Delete')}}
                                                </a>

                                            </span>
                                        </span>
                                        --}}

                                        <div class="col-sm-3 col-6">
                                            <div class="btn-group mr-1 mb-1">
                                                <button type="button" class="btn btn-success dropdown-toggle"
                                                        data-toggle="dropdown" aria-haspopup="true"
                                                        aria-expanded="false">
                                                    Action
                                                </button>
                                                <div class="dropdown-menu arrow">

                                                    <a href="{{route('admin.students.show', $student->id)}}"
                                                       class="dropdown-item">
                                                        <i class="ft-plus-circle info"></i>
                                                        {{trans('cpanel/students.Show Info')}}
                                                    </a>

                                                    <a href="{{route('fees_invoices.show', $student->id)}}"
                                                       class="dropdown-item">
                                                        <i class="ft-plus-circle primary"></i>
                                                        {{trans('cpanel/students.Add Invoices')}}
                                                    </a>

                                                    <a href="{{route('receipt_students.show', $student->id)}}"
                                                       class="dropdown-item">
                                                        <i class="ft-plus-circle primary"></i>
                                                        {{trans('cpanel/students.Receipt Document')}}
                                                    </a>

                                                    <a href="{{route('payment_students.show', $student->id)}}"
                                                       class="dropdown-item">
                                                        <i class="ft-plus-circle primary"></i>
                                                        {{trans('cpanel/students.Receipt Cashing')}}
                                                    </a>

                                                    <a href="{{route('processingFee.show', $student->id)}}"
                                                       class="dropdown-item">
                                                        <i class="ft-edit-2"></i>
                                                        {{trans('cpanel/students.Exclude Fee')}}
                                                    </a>

                                                    <a href="{{route('admin.students.edit', $student->id)}}"
                                                       class="dropdown-item">
                                                        <i class="ft-edit-2"></i>
                                                        {{trans('cpanel/students.Edit')}}
                                                    </a>

                                                    <a href="#Delete_Student{{ $student->id }}"
                                                       class="dropdown-item"
                                                       data-toggle="modal"
                                                       data-target="#Delete_Student{{ $student->id }}">
                                                        <i class="ft-trash-2"></i>
                                                        {{trans('cpanel/students.Delete')}}
                                                    </a>

                                                </div>
                                            </div>
                                        </div>
                                    </td>

                                </tr>

                                @include('dashboard.students.delete')

                                @endforeach



                                <tfoot>
                                <tr>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                </tr>

                                </tfoot>
                                <br><br>
                                <tfoot>
                                    <tr>
                                        <th>#</th>
                                        <th>{{trans('cpanel/students.name')}}</th>
                                        <th>{{trans('cpanel/students.email')}}</th>
                                        <th>{{trans('cpanel/students.gender')}}</th>
                                        <th>{{trans('cpanel/students.Grade')}}</th>
                                        <th>{{trans('cpanel/students.classrooms')}}</th>
                                        <th>{{trans('cpanel/students.section')}}</th>
                                        <th>{{trans('cpanel/students.Processes')}}</th>
                                    </tr>
                                </tfoot>

                                </tbody>

                                <br><br>
                            </table>
                        </div>
                        {!! $students->links() !!}

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
{{--
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/datatables.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/dataTables.responsive.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/buttons.colVis.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/dataTables.colReorder.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/dataTables.buttons.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/buttons.bootstrap4.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/dataTables.fixedHeader.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/js/scripts/tables/datatables-extensions/datatable-responsive.js')}}"></script>
--}}
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/extensions/jquery.raty.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/dataTables.bootstrap4.min.js')}}"></script>

    <!-- BEGIN: Page JS-->
    <script src="{{asset('ashry/back/app-assets/js/scripts/pages/app-contacts.js')}}"></script>
    <!-- END: Page JS-->

@endsection
