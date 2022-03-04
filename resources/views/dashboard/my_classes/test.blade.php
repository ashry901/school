@extends('layouts.admin')
@section('title', 'classes')

@section('style')
@toastr_css
<link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/datatable/dataTables.bootstrap4.min.css')}}">
{{--    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/pages/app-contacts.css')}}">--}}
<link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/plugins/animate/animate.css')}}">
<link rel="stylesheet" type="text/css" href="{{('ashry/back/app-assets/vendors/css/tables/datatable/datatables.min.css')}}">
@endsection

@section('content')

<div class="content-body">
    <div class="content-overlay"></div>

    <div class="col-12">
        <div class="card">

            <div class="card-header">
                <h3 class="card-title" id="repeat-form">
                    {{trans('cpanel/myclasses.Add Classrooms')}}
                </h3>
                <br>
                <h5>
                    {{trans('cpanel/myclasses.You can add more than one semester')}}
                </h5>
                <a class="heading-elements-toggle"><i class="la la-ellipsis-h font-medium-3"></i></a>
                <div class="heading-elements">
                    <ul class="list-inline mb-0">
                        <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                        <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                        <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                        <li><a data-action="close"><i class="ft-x"></i></a></li>
                    </ul>
                </div>
            </div>

            @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
            @endif

            <div class="card-content collapse show">
                <div class="card-body">

                    <form class="form repeater-default" action="{{ route('classrooms.store') }}" method="POST">
                        @csrf
                        <div data-repeater-list="list_classes">
                            <div data-repeater-item>
                                <div class="row justify-content-between">
                                    <div class="col-md-3 col-sm-12 form-group">
                                        <label for="Email">
                                            {{ trans('cpanel/myclasses.Name Class Ar') }}
                                        </label>
                                        <input class="form-control" type="text" name="name" />
                                    </div>

                                    <div class="col-md-3 col-sm-12 form-group">
                                        <label for="Email">
                                            {{ trans('cpanel/myclasses.Name Class En') }}
                                        </label>
                                        <input class="form-control" type="text" name="name_class_en" />
                                    </div>

                                    <div class="col-md-3 col-sm-12 form-group">
                                        <label for="Profession">
                                            {{ trans('cpanel/myclasses.Name Grade') }}
                                        </label>
                                        <select id="Profession"
                                                class="form-control"
                                                name="grade_id">
                                            @foreach ($grades as $grade)
                                            <option value="{{ $grade->id }}">
                                                {{ $grade->name }}
                                            </option>
                                            @endforeach

                                        </select>
                                    </div>
                                    <div class="col-md-2 col-sm-12 form-group d-flex align-items-center pt-2">
                                        <button class="btn btn-danger" data-repeater-delete type="button">
                                            <i class="bx bx-x"></i>
                                            {{ trans('cpanel/myclasses.Delete') }}
                                        </button>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col p-0">
                                <button class="btn btn-primary" data-repeater-create type="button">
                                    <i class="bx bx-plus"></i>
                                    {{ trans('cpanel/myclasses.Add Row') }}
                                </button>
                            </div>
                        </div>
                        <hr>
                        <button type="submit" class="btn btn-success">
                            {{__('cpanel/myclasses.Submit')}}
                        </button>
                    </form>

                </div>
            </div>
        </div>
    </div>

</div>

<div class="content-body">
    <div class="content-overlay"></div>

    <div class="col-12">
        <div class="card">
            <div class="card-head">
                <div class="card-header">
                    <h4 class="card-title">
                        {{ trans('cpanel/myclasses.All Classrooms') }}
                    </h4>
                </div>

                <div class="card-content">

                    <!-- Add Modal -->
                    <div class="modal fade text-left"
                         id="large"
                         tabindex="-1" role="dialog"
                         aria-labelledby="myModalLabel17" aria-hidden="true">

                        <div class="modal-dialog modal-lg"
                             role="document">

                            <div class="modal-content">

                                <div class="modal-header">
                                    <h4 class="modal-title"
                                        id="myModalLabel17">
                                        {{ trans('cpanel/myclasses.Add Classrooms') }}
                                    </h4>
                                    <button type="button"
                                            class="close"
                                            data-dismiss="modal"
                                            aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>

                                <div class="modal-body">
                                    <form class="form repeater-default"
                                          action="{{ route('classrooms.store') }}"
                                          method="POST">
                                        @csrf
                                        <div data-repeater-list="list_classes">

                                            <div data-repeater-item>

                                                <div class="row justify-content-between">
                                                    <div class="col-md-3 col-sm-12 form-group">
                                                        <label for="Email">
                                                            {{ trans('cpanel/myclasses.Name Class Ar') }}:
                                                        </label>
                                                        <input class="form-control" type="text" name="name" />
                                                    </div>

                                                    <div class="col-md-3 col-sm-12 form-group">
                                                        <label for="Email">
                                                            {{ trans('cpanel/myclasses.Name Class En') }}:
                                                        </label>
                                                        <input class="form-control" type="text" name="name_class_en" />
                                                    </div>

                                                    <div class="col-md-3 col-sm-12 form-group">
                                                        <label for="Profession">
                                                            {{ trans('cpanel/myclasses.Name Grade') }}
                                                        </label>
                                                        <select id="Profession"
                                                                class="form-control"
                                                                name="grade_id">
                                                            @foreach ($grades as $grade)
                                                            <option value="{{ $grade->id }}">
                                                                {{ $grade->name }}
                                                            </option>
                                                            @endforeach

                                                        </select>
                                                    </div>
                                                    <div class="col-md-2 col-sm-12 form-group d-flex align-items-center pt-2">
                                                        <button class="btn btn-danger" data-repeater-delete type="button"> <i class="bx bx-x"></i>
                                                            {{__('cpanel/myclasses.Delete')}}
                                                        </button>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col p-0">
                                                <button class="btn btn-primary" data-repeater-create type="button">
                                                    <i class="bx bx-plus"></i>
                                                    {{__('cpanel/myclasses.Add Row')}}
                                                </button>
                                            </div>
                                        </div>
                                        <hr>

                                        <button type="button" class="btn grey btn-outline-secondary" data-dismiss="modal">
                                            {{__('cpanel/myclasses.Close')}}
                                        </button>

                                        <button type="submit" class="btn btn-outline-primary">
                                            {{__('cpanel/myclasses.Save Changes')}}
                                        </button>
                                    </form>



                                </div>


                            </div>
                        </div>
                    </div>

                    <!-- Delete Row Modal -->
                    {{--
                    <div class="modal fade text-left"
                         id="delete_all"
                         tabindex="-1" role="dialog"
                         aria-labelledby="myModalLabel17" aria-hidden="true">

                        <div class="modal-dialog modal-lg"
                             role="document" >

                            <div class="modal-content">

                                <div class="modal-header">
                                    <h4 class="modal-title"
                                        id="myModalLabel17">
                                        {{ trans('cpanel/myclasses.delete_class') }}
                                    </h4>

                                    <button type="button"
                                            class="close"
                                            data-dismiss="modal"
                                            aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>

                                <div class="modal-body">
                                    <form action="{{ route('delete_all') }}" method="POST">
                                        @csrf

                                        {{ trans('cpanel/myclasses.Warning_Grade') }}
                                        <div class="modal-body">
                                            <input class="text" type="hidden" id="delete_all_id" name="delete_all_id" value=''>
                                        </div>

                                        <button type="button" class="btn btn-secondary"
                                                data-dismiss="modal">
                                            {{ trans('cpanel/myclasses.Close') }}
                                        </button>

                                        <button type="submit" class="btn btn-danger">
                                            {{ trans('cpanel/myclasses.Submit') }}
                                        </button>

                                    </form>

                                </div>

                            </div>
                        </div>
                    </div>
                    --}}

                </div>
            </div>

            <div class="card-content">
                <div class="card-body">
                    {{--
                    <button type="button"
                            id="btn_delete_all"
                            data-toggle="modal"
                            data-target="#delete_all"
                            class="btn btn-md btn-danger delete-all mb-1">
                        {{ trans('cpanel/myclasses.delete_checkbox') }}
                    </button>
                    --}}

                    <button type="button"
                            class="btn btn-outline-success btn-lg float-right"
                            data-toggle="modal"
                            data-target="#large">
                        <i class="d-md-none d-block ft-plus white"></i>
                        <span class="d-md-block d-none">
                            {{ trans('cpanel/myclasses.Add Classrooms') }}
                        </span>
                    </button>
                    <br>

                    {{--
                    <button type="button"
                            id="btn_delete_all"
                            data-toggle="modal"
                            data-target="#delete_all"
                            class="btn btn-md btn-danger delete-all mb-1">
                        {{ trans('cpanel/myclasses.delete_checkbox') }}
                    </button>
                    --}}

                    <br>
                    <div class="table-responsive">

                        <table id="users-contacts" class="table table-white-space table-bordered row-grouping display no-wrap icheck table-middle text-center">

                            <thead>
                            <tr>
                                <th>
                                    {{--
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="checkboxsmallall">
                                        <label class="custom-control-label" for="checkboxsmallall">

                                        </label>
                                    </div>
                                    --}}
                                    <input name="select_all" id="example-select-all"
                                           type="checkbox" onclick="CheckAll('box1', this)" />
                                </th>
                                <th>#</th>
                                <th>{{ trans('cpanel/myclasses.Name Class') }}</th>
                                <th>{{ trans('cpanel/myclasses.Name Grade') }}</th>
                                <th>{{ trans('cpanel/myclasses.Processes') }}</th>
                            </tr>
                            </thead>


                            <tbody>
                            @if (isset($details))

                            <?php $list_classes = $details; ?>
                            @else

                            <?php $list_classes = $my_classes; ?>
                            @endif


                            @foreach ($list_classes as $my_class)
                            <tr>
                                <td>
                                    {{--
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox"
                                               class="custom-control-input"
                                               id="checkboxsmall1" value="{{ $my_class->id }}">
                                        <label class="custom-control-label" for="checkboxsmall1"></label>
                                    </div>
                                    --}}
                                    <input type="checkbox" value="{{ $my_class->id }}" class="box1" >
                                </td>

                                <td>{{$loop->iteration}}</td>

                                <td>{{ $my_class->name_class }}</td>

                                <td>{{ $my_class->grades->name }}</td>

                                <td>

                                    <a data-toggle="modal"
                                       data-target="#edit{{ $my_class->id }}"
                                       class="primary edit mr-1">
                                        <i class="la la-pencil"></i>
                                    </a>
                                    &nbsp; &nbsp; &nbsp; &nbsp;

                                    <a data-toggle="modal"
                                       class="danger delete mr-1"
                                       data-target="#delete{{ $my_class->id }}">
                                        <i class="la la-trash-o"></i>
                                    </a>

                                </td>
                            </tr>

                            <!-- edit_modal_Grade -->
                            <div class="modal fade" id="edit{{ $my_class->id }}" tabindex="-1" role="dialog"
                                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 style="font-family: 'Cairo', sans-serif;" class="modal-title"
                                                id="exampleModalLabel">
                                                {{ trans('My_Classes_trans.edit_class') }}
                                            </h5>
                                            <button type="button" class="close" data-dismiss="modal"
                                                    aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <!-- edit_form -->
                                            <form action="{{ route('classrooms.update', 'test') }}" method="post">
                                                {{ method_field('patch') }}
                                                @csrf
                                                <div class="row">
                                                    <div class="col">
                                                        <label for="Name" class="mr-sm-2">
                                                            {{ trans('My_Classes_trans.Name_class') }}:
                                                        </label>
                                                        <input id="name" type="text" name="name"
                                                               class="form-control"
                                                               value="{{ $my_class->getTranslation('name_class', 'ar') }}"
                                                               required>
                                                        <input id="id" type="hidden" name="id" class="form-control"
                                                               value="{{ $my_class->id }}">
                                                    </div>
                                                    <div class="col">
                                                        <label for="name_en" class="mr-sm-2">
                                                            {{ trans('My_Classes_trans.name_class_en') }}:
                                                        </label>
                                                        <input type="text" class="form-control"
                                                               value="{{ $my_class->getTranslation('name_class', 'en') }}"
                                                               name="name_en" required>
                                                    </div>
                                                </div><br>

                                                <div class="form-group">
                                                    <label for="exampleFormControlTextarea1">
                                                        {{ trans('My_Classes_trans.Name_Grade') }}:
                                                    </label>

                                                    <select class="form-control form-control-lg"
                                                            id="exampleFormControlSelect1" name="grade_id">
                                                        <option value="{{ $my_class->grades->id }}">
                                                            {{ $my_class->grades->name }}
                                                        </option>
                                                        @foreach ($grades as $grade)
                                                            <option value="{{ $grade->id }}">
                                                                {{ $grade->name }}
                                                            </option>
                                                        @endforeach
                                                    </select>

                                                </div>
                                                <br><br>

                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">
                                                        {{ trans('Grades_trans.Close') }}
                                                    </button>

                                                    <button type="submit" class="btn btn-success">
                                                        {{ trans('Grades_trans.submit') }}
                                                    </button>
                                                </div>
                                            </form>

                                        </div>
                                    </div>
                                </div>
                            </div>


                            <!-- delete_modal_Grade -->
                            <div class="modal fade"
                                 id="delete{{ $my_class->id }}"
                                 tabindex="-1" role="dialog"
                                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 style="font-family: 'Cairo', sans-serif;" class="modal-title"
                                                id="exampleModalLabel">
                                                {{ trans('My_Classes_trans.delete_class') }}
                                            </h5>

                                            <button type="button" class="close" data-dismiss="modal"
                                                    aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>

                                        <div class="modal-body">
                                            <form action="{{ route('classrooms.destroy', 'test') }}"
                                                  method="post">
                                                {{ method_field('Delete') }}
                                                @csrf
                                                {{ trans('My_Classes_trans.Warning_Grade') }}
                                                <input id="id" type="hidden" name="id" class="form-control"
                                                       value="{{ $my_class->id }}">
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary"
                                                            data-dismiss="modal">{{ trans('My_Classes_trans.Close') }}
                                                    </button>
                                                    <button type="submit"
                                                            class="btn btn-danger">{{ trans('My_Classes_trans.submit') }}
                                                    </button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            @endforeach

                            </tbody>


                            <tfoot>
                            <tr></tr>
                            </tfoot>
                        </table>
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

<script>
    $('.repeater-default').repeater({
        show: function () {
            $(this).slideDown();
        },
        hide: function (deleteElement) {
            if (confirm('Are you sure you want to delete this element?')) {
                $(this).slideUp(deleteElement);
            }
        }
    });
</script>

<script type="text/javascript">

    $('.show_confirm').click(function(event) {
        var form =  $(this).closest("form");
        var name = $(this).data("name");
        event.preventDefault();
        swal({
            title: `Are you sure you want to delete this record?`,
            text: "If you delete this, it will be gone forever.",
            icon: "warning",
            buttons: true,
            dangerMode: true,
        })
            .then((willDelete) => {
                if (willDelete) {
                    form.submit();
                }
            });
    });

</script>

<script type="text/javascript">
    $(function() {
        $("#btn_delete_all").click(function() {
            var selected = new Array();
            $("#datatable input[type=checkbox]:checked").each(function() {
                selected.push(this.value);
            });

            if (selected.length > 0) {
                $('#delete_all').modal('show')
                $('input[id="delete_all_id"]').val(selected);
            }
        });
    });
</script>

{{--    <script src="{{asset('ashry/back/app-assets/js/scripts/modal/components-modal.js')}}"></script>--}}

{{--    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/jquery.dataTables.min.js')}}"></script>--}}
{{--    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/dataTables.bootstrap4.min.js')}}"></script>--}}

<script src="{{('ashry/back/app-assets/vendors/js/tables/datatable/datatables.min.js')}}"></script>
<script src="{{('ashry/back/app-assets/js/scripts/tables/datatables/datatable-basic.js')}}"></script>
{{--    <script src="{{asset('ashry/back/app-assets/js/scripts/pages/app-contacts.js')}}"></script>--}}

<script src="{{asset('ashry/back/app-assets/vendors/js/forms/repeater/jquery.repeater.min.js')}}"></script>
<script src="{{asset('ashry/back/app-assets/js/scripts/forms/form-repeater.js')}}"></script>

@endsection

