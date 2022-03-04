@extends('layouts.admin')
@section('title', 'students')

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
    @include('dashboard.students.dropdown-students')
</div>


<div class="content-body">

    <section class="row all-contacts">
        <div class="col-12">
            <div class="card">

                <div class="card-head">
                    <div class="card-header">

                        <div class="heading-elements mt-0">

                            <div class="modal fade" id="EditContactModal" tabindex="-1"
                                 role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <section class="contact-form">
                                            <form id="form-edit-contact" class="contact-input">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Edit Contact</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <fieldset class="form-group col-12">
                                                        <input type="text" id="name" class="name form-control" placeholder="Name">
                                                    </fieldset>
                                                    <fieldset class="form-group col-12">
                                                        <input type="text" id="email" class="email form-control" placeholder="Email">
                                                    </fieldset>
                                                    <fieldset class="form-group col-12">
                                                        <input type="text" id="phone" class="phone form-control" placeholder="Phone Number">
                                                    </fieldset>
                                                    <span id="fav" class="d-none"></span>
                                                </div>
                                                <div class="modal-footer">
                                                    <fieldset class="form-group position-relative has-icon-left mb-0">
                                                        <button type="button" id="edit-contact-item" class="btn btn-info edit-contact-item" data-dismiss="modal"><i class="la la-paper-plane-o d-lg-none"></i> <span class="d-none d-lg-block">Edit</span></button>
                                                    </fieldset>
                                                </div>
                                            </form>
                                        </section>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="card-content">

                    <div class="card-body">
                        <h3 class="card-title" id="basic-layout-form">
                            <i class="ft-user"></i>
                            {{trans('cpanel/students.Students Info')}}
                        </h3>
                        <div class="table-responsive">
                            <table id="datatable"
                                   class="table table-white-space table-bordered row-grouping display no-wrap icheck table-middle text-center">
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
                                        <a data-toggle="modal" data-target="#EditContactModal"
                                           class="primary edit mr-1">
                                            <i class="la la-trash-o"></i>
                                        </a>
                                        <a class="danger delete mr-1">
                                            <i class="la la-pencil"></i>
                                        </a>
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

                                                <a href="{{route('Students.show', $student->id)}}"
                                                   class="dropdown-item">
                                                    <i class="ft-plus-circle info"></i>
                                                    Show Info
                                                </a>

                                                <a href="{{route('Students.edit', $student->id)}}"
                                                   class="dropdown-item delete"><i class="ft-edit-2"></i>
                                                    Edit
                                                </a>

                                                <a href="{{route('Fees_Invoices.show',$student->id)}}"
                                                   class="dropdown-item"><i class="ft-plus-circle primary"></i>
                                                    Add Invoices
                                                </a>

                                                <a data-toggle="modal"
                                                   data-target="#Delete_Student{{ $student->id }}"
                                                   href="#Delete_Student{{ $student->id }}"
                                                   class="dropdown-item edit"><i class="ft-trash-2"></i>
                                                    Delete
                                                </a>


                                            </span>
                                        </span>
                                    </td>
                                </tr>

                                @include('dashboard.students.delete')

                                @endforeach
                                </tbody>

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
                            </table>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

</div>

{{--
<div class="content-body">

    <section id="configuration">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">
                            {{trans('cpanel/students.Students Info')}}
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
                        <div class="card-body card-dashboard">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered zero-configuration"
                                       id="datatable">
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

                                    <tr>
                                        <td>Bruno Nash</td>
                                        <td>Software Engineer</td>
                                        <td>London</td>
                                        <td>38</td>
                                        <td>38</td>
                                        <td>38</td>
                                        <td>2011/05/03</td>
                                        <td>$163,500</td>
                                    </tr>

                                    </tbody>

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
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>
--}}
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
