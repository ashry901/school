@extends('layouts.admin')
@section('title', 'sections')

@section('style')
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/pickers/daterange/daterangepicker.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/plugins/forms/wizard.css')}}">

    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/datatable/datatables.min.css')}}">
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
                        {{trans('cpanel/teacher.All Teachers')}}
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

    <section id="configuration">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">
                            {{trans('cpanel/teacher.Teachers Info')}}
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
                            <a href="{{route('teachers.create')}}"
                               class="btn btn-success btn-md" role="button"
                               aria-pressed="true">
                                {{ trans('cpanel/teacher.Add_Teacher') }}
                            </a>
                            <p class="card-text"></p>

                            <div class="table-responsive">
                                <table class="table table-striped table-bordered zero-configuration" id="datatable">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>{{trans('cpanel/teacher.Name_Teacher')}}</th>
                                        <th>{{trans('cpanel/teacher.Gender')}}</th>
                                        <th>{{trans('cpanel/teacher.Joining Date')}}</th>
                                        <th>{{trans('cpanel/teacher.Specialization')}}</th>
                                        <th>{{trans('cpanel/teacher.Action')}}</th>
                                    </tr>
                                    </thead>

                                    <tbody>

                                    <?php $i = 0; ?>
                                    @foreach($teachers as $teacher)
                                    <tr>
                                        <?php $i++; ?>
                                        <td>{{ $i }}</td>
                                        <td>{{$teacher->name}}</td>
                                        <td>{{$teacher->genders->name}}</td>
                                        <td>{{$teacher->joining_date}}</td>
                                        <td>{{$teacher->specializations->name}}</td>
                                        <td>
                                            <a href="{{route('teachers.edit', $teacher->id)}}"
                                               class="btn btn-info btn-sm" role="button"
                                               aria-pressed="true">
                                                {{ trans('cpanel/teacher.Edit') }}
                                            </a>
                                            &nbsp; &nbsp; &nbsp; &nbsp;
                                            <button type="button"
                                                    class="btn btn-danger btn-sm"
                                                    data-toggle="modal"
                                                    data-target="#delete_Teacher{{ $teacher->id }}"
                                                    title="{{ trans('cpanel/teacher.Delete') }}">
                                                {{ trans('cpanel/teacher.Delete') }}
                                            </button>
                                        </td>
                                    </tr>

                                    <!-- delete_modal_Grade -->
                                    <div class="modal fade"
                                         id="delete_Teacher{{$teacher->id}}"
                                         tabindex="-1" role="dialog"
                                         aria-labelledby="exampleModalLabel"
                                         aria-hidden="true">

                                        <div class="modal-dialog" role="document">
                                            <form action="{{route('teachers.destroy', 'test')}}" method="post">
                                                {{method_field('delete')}}
                                                {{csrf_field()}}
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 style="font-family: 'Cairo', sans-serif;"
                                                            class="modal-title"
                                                            id="exampleModalLabel">
                                                            {{ trans('cpanel/teacher.Delete_Teacher') }}
                                                        </h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p> {{ trans('cpanel/teacher.Deleting Process') }}</p>
                                                        <input type="hidden" name="id" value="{{$teacher->id}}">
                                                    </div>

                                                    <div class="modal-footer">

                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">
                                                            {{ trans('cpanel/teacher.Close') }}
                                                        </button>

                                                        <button type="submit" class="btn btn-danger">
                                                            {{ trans('cpanel/teacher.Delete') }}
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
                                        <th>{{trans('cpanel/teacher.Name_Teacher')}}</th>
                                        <th>{{trans('cpanel/teacher.Gender')}}</th>
                                        <th>{{trans('cpanel/teacher.Joining Date')}}</th>
                                        <th>{{trans('cpanel/teacher.Specialization')}}</th>
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
    <script src="{{asset('ashry/back/app-assets/vendors/js/extensions/jquery.steps.min.js')}}"></script>
    {{--    <script src="{{asset('ashry/back/app-assets/vendors/js/pickers/dateTime/moment-with-locales.min.js')}}"></script>--}}
    {{--    <script src="{{asset('ashry/back/app-assets/vendors/js/pickers/daterange/daterangepicker.js')}}"></script>--}}
    {{--    <script src="{{asset('ashry/back/app-assets/vendors/js/forms/validation/jquery.validate.min.js')}}"></script>--}}
    {{--    <script src="{{asset('ashry/back/app-assets/js/scripts/forms/wizard-steps.js')}}"></script>--}}

    <script>
        $(".number-tab-steps").steps({
            headerTag: "h6",
            bodyTag: "fieldset",
            transitionEffect: "fade",
            titleTemplate: '#index# #title#',
            labels: {
                finish: 'Submit'
            },
            onFinished: function (event, currentIndex) {
                alert("Form submitted.");
            }
        });
    </script>

    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/datatables.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/js/scripts/tables/datatables/datatable-basic.js')}}"></script>

    @toastr_js
    @toastr_render
@endsection
