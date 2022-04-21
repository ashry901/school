@extends('layouts.admin')
@section('title', 'subjects')

@section('style')
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/datatable/datatables.min.css')}}">
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
                        <a href="{{route('admin.subjects')}}">
                            {{trans('cpanel/teacher.Subjects')}}
                        </a>
                    </li>
                    <li class="breadcrumb-item active">
                        {{trans('cpanel/teacher.All Subjects')}}
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
                            {{trans('cpanel/teacher.All Subjects Teachers')}}
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
                                <a href="{{route('admin.subjects.create')}}" class="btn btn-success btn-sm" role="button"
                                   aria-pressed="true">
                                    {{trans('cpanel/teacher.Add New Subject')}}
                                </a>
                            </p>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered zero-configuration">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>{{trans('cpanel/teacher.Subject Name')}}</th>
                                        <th>{{trans('cpanel/teacher.Grade')}}</th>
                                        <th>{{trans('cpanel/teacher.Classroom')}}</th>
                                        <th>{{trans('cpanel/teacher.Teachers Name')}}</th>
                                        <th>{{trans('cpanel/teacher.Action')}}</th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    @foreach($subjects as $subject)
                                        <tr>
                                            <td>{{$loop->iteration}}</td>
                                            <td>{{$subject->name}}</td>
                                            <td>{{$subject->grade->name}}</td>
                                            <td>{{$subject->classroom->name_class}}</td>
                                            <td>{{$subject->teacher->name}}</td>
                                            <td>
                                                <a href="{{route('admin.subjects.edit',$subject->id)}}"
                                                   class="btn btn-outline-info btn-sm">
                                                    {{ trans('cpanel/sections.Edit') }}
                                                </a>
                                                &nbsp; &nbsp; &nbsp; &nbsp;
                                                <a href="#"
                                                   class="btn btn-outline-danger btn-sm"
                                                   data-toggle="modal"
                                                   data-target="#delete_subject{{ $subject->id }}">
                                                    {{ trans('cpanel/sections.Delete') }}
                                                </a>

                                            </td>
                                        </tr>

                                        <div class="modal fade" id="delete_subject{{$subject->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <form action="{{route('admin.subjects.delete','test')}}" method="GET">

                                                    @csrf
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 style="font-family: 'Cairo', sans-serif;" class="modal-title" id="exampleModalLabel">
                                                                {{trans('cpanel/teacher.Delete Subject')}}
                                                            </h5>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <p> {{ trans('cpanel/myclasses.Warning_Grade') }} {{$subject->name}}</p>
                                                            <input type="hidden" name="id" value="{{$subject->id}}">
                                                        </div>

                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary"
                                                                    data-dismiss="modal">
                                                                {{ trans('cpanel/myclasses.Close') }}
                                                            </button>
                                                            <button type="submit" class="btn btn-danger">
                                                                {{ trans('cpanel/myclasses.submit') }}
                                                            </button>
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
                                        <th>{{trans('cpanel/teacher.Subject Name')}}</th>
                                        <th>{{trans('cpanel/teacher.Grade')}}</th>
                                        <th>{{trans('cpanel/teacher.Classroom')}}</th>
                                        <th>{{trans('cpanel/teacher.Teachers Name')}}</th>
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
