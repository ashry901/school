@extends('layouts.admin')
@section('title', 'quizzes')

@section('style')
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/datatable/datatables.min.css')}}">
    @toastr_css
@endsection

@section('content')

<div class="content-header row">
    <div class="content-header-left col-md-6 col-12 mb-2">
        <h3 class="content-header-title">
            {{trans('cpanel/teacher.Quizzes')}}
        </h3>
        <div class="row breadcrumbs-top">
            <div class="breadcrumb-wrapper col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="{{route('admin.dashboard')}}">
                            {{trans('cpanel/teacher.Dashboard')}}
                        </a>
                    </li>

                    <li class="breadcrumb-item">
                        <a href="{{route('Quizzes.create')}}">
                            {{trans('cpanel/teacher.Add New Quizzes')}}
                        </a>
                    </li>
                    <li class="breadcrumb-item active">
                        {{trans('cpanel/teacher.All Quizzes')}}
                    </li>
                </ol>
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
                            {{trans('cpanel/teacher.Subject')}}
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
                        <div class="card-body card-dashboard">
                            <p class="card-text">
                                <a href="{{route('Quizzes.create')}}"
                                   class="btn btn-success" role="button"
                                   aria-pressed="true">
                                    {{trans('cpanel/teacher.Add New Quizzes')}}
                                </a>
                            </p>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered zero-configuration"
                                       id="datatable">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>{{trans('cpanel/teacher.Name Quizzes')}}</th>
                                        <th>{{trans('cpanel/teacher.Teachers Name')}}</th>
                                        <th>{{trans('cpanel/teacher.Grade')}}</th>
                                        <th>{{trans('cpanel/teacher.Classroom')}}</th>
                                        <th>{{trans('cpanel/teacher.Section')}}</th>
                                        <th>{{trans('cpanel/teacher.Action')}}</th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    @foreach($quizzes as $quizze)
                                        <tr>
                                            <td>{{ $loop->iteration}}</td>
                                            <td>{{$quizze->name}}</td>
                                            <td>{{$quizze->teacher->name}}</td>
                                            <td>{{$quizze->grade->name}}</td>
                                            <td>{{$quizze->classroom->name_class}}</td>
                                            <td>{{$quizze->section->name_section}}</td>
                                            <td>
                                                <a href="{{route('Quizzes.edit',$quizze->id)}}"
                                                   class="btn btn-info btn-sm" role="button" aria-pressed="true">
                                                    <i class="fa fa-edit"></i>
                                                </a>

                                                <button type="button" class="btn btn-danger btn-sm"
                                                        data-toggle="modal"
                                                        data-target="#delete_exam{{ $quizze->id }}"
                                                        title="حذف">
                                                    <i class="fa fa-trash"></i>
                                                </button>
                                            </td>
                                        </tr>
                                        <div class="modal fade" id="delete_exam{{$quizze->id}}" tabindex="-1"
                                             role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <form action="{{route('Quizzes.destroy','test')}}" method="post">
                                                    {{method_field('delete')}}
                                                    {{csrf_field()}}
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 style="font-family: 'Cairo', sans-serif;"
                                                                class="modal-title" id="exampleModalLabel">حذف اختبار</h5>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <p> {{ trans('My_Classes_trans.Warning_Grade') }} {{$quizze->name}}</p>
                                                            <input type="hidden" name="id" value="{{$quizze->id}}">
                                                        </div>
                                                        <div class="modal-footer">
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary"
                                                                        data-dismiss="modal">{{ trans('My_Classes_trans.Close') }}</button>
                                                                <button type="submit"
                                                                        class="btn btn-danger">{{ trans('My_Classes_trans.submit') }}</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    @endforeach
                                    </tbody>

                                    <tfoot>
                                    <tr>
                                        <th>#</th>
                                        <th>{{trans('cpanel/teacher.Name Quizzes')}}</th>
                                        <th>{{trans('cpanel/teacher.Teachers Name')}}</th>
                                        <th>{{trans('cpanel/teacher.Grade')}}</th>
                                        <th>{{trans('cpanel/teacher.Classroom')}}</th>
                                        <th>{{trans('cpanel/teacher.Section')}}</th>
                                        <th>{{trans('cpanel/teacher.Action')}}</th>
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
    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/datatables.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/js/scripts/tables/datatables/datatable-basic.js')}}"></script>
    @toastr_js
    @toastr_render
@endsection
