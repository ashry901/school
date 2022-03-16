@extends('layouts.admin')
@section('title', 'classes')

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
            Classrooms
        </h3>
        <div class="row breadcrumbs-top">
            <div class="breadcrumb-wrapper col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="{{route('admin.dashboard')}}">
                            {{trans('cpanel/myclasses.Dashboard')}}
                        </a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="{{route('classrooms.index')}}">
                            {{trans('cpanel/myclasses.All Classrooms')}}
                        </a>
                    </li>
                    <li class="breadcrumb-item active">
                        {{trans('cpanel/myclasses.Classrooms')}}
                    </li>
                </ol>
            </div>
        </div>
    </div>

</div>

<div class="content-body">

    <section id="configuration">
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
    </section>
</div>

<div class="content-body">

    <div class="col-xl-12 mb-30">
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

                <button type="button" class="btn btn-primary"
                        data-toggle="modal"
                        data-target="#exampleModal">
                    {{ trans('cpanel/myclasses.add_class') }}
                </button>

                <button type="button" class="btn btn-danger" id="btn_delete_all">
                    {{ trans('cpanel/myclasses.delete_checkbox') }}
                </button>


                <br><br>

                <div class="table-responsive">
                    <table class="table table-white-space table-bordered row-grouping display no-wrap icheck table-middle text-center"
                           id="datatable">
                        <thead>
                        <tr>
                            <th>
                                <input name="select_all"
                                       id="example-select-all"
                                       type="checkbox"
                                       onclick="CheckAll('box1', this)" />
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

                        <?php $i = 0; ?>

                        @foreach ($list_classes as $my_class)
                            <tr>
                                <?php $i++; ?>
                                <td>
                                    <input type="checkbox"
                                           value="{{ $my_class->id }}"
                                           class="box1" >
                                </td>
                                <td>{{ $i }}</td>
                                <td>{{ $my_class->name_class }}</td>
                                <td>{{ $my_class->grades->name }}</td>
                                <td>
                                    <button type="button"
                                            class="btn btn-info btn-sm"
                                            data-toggle="modal"
                                            data-target="#edit{{ $my_class->id }}"
                                            title="{{ trans('cpanel/myclasses.Edit') }}">
                                        {{ trans('cpanel/myclasses.Edit') }}
                                    </button>

                                    &nbsp; &nbsp; &nbsp; &nbsp;

                                    <button type="button"
                                            class="btn btn-danger btn-sm"
                                            data-toggle="modal"
                                            data-target="#delete{{ $my_class->id }}"
                                            title="{{ trans('cpanel/myclasses.Delete') }}">
                                        {{ trans('cpanel/myclasses.Delete') }}
                                    </button>
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
                                                {{ trans('cpanel/myclasses.edit_class') }}
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
                                                            {{ trans('cpanel/myclasses.Name Class Ar') }}:
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
                                                            {{ trans('cpanel/myclasses.Name Class En') }} :
                                                        </label>

                                                        <input type="text" class="form-control"
                                                               value="{{ $my_class->getTranslation('name_class', 'en') }}"
                                                               name="name_en" required>
                                                    </div>
                                                </div><br>

                                                <div class="form-group">
                                                    <label for="exampleFormControlTextarea1">
                                                        {{ trans('cpanel/myclasses.Name Grade') }}:
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
                                                        {{ trans('cpanel/myclasses.Close') }}
                                                    </button>

                                                    <button type="submit" class="btn btn-success">
                                                        {{ trans('cpanel/myclasses.Submit') }}
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
                                                {{ trans('cpanel/myclasses.delete_class') }}
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
                                                {{ trans('cpanel/myclasses.Warning_Grade') }}
                                                <input id="id" type="hidden" name="id" class="form-control"
                                                       value="{{ $my_class->id }}">
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary"
                                                            data-dismiss="modal">{{ trans('cpanel/myclasses.Close') }}
                                                    </button>

                                                    <button type="submit"
                                                            class="btn btn-danger">{{ trans('cpanel/myclasses.Submit') }}
                                                    </button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>


    <!-- add_modal_class -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
         aria-labelledby="exampleModalLabel"
         aria-hidden="true">

        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 style="font-family: 'Cairo', sans-serif;" class="modal-title" id="exampleModalLabel">
                        {{ trans('cpanel/myclasses.add_class') }}
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <form class="row mb-30" action="{{ route('classrooms.store') }}" method="POST">
                        @csrf
                        <div class="card-body">
                            <div class="repeater">
                                <div data-repeater-list="list_classes">
                                    <div data-repeater-item>
                                        <div class="row">

                                            <div class="col">
                                                <label for="Name" class="mr-sm-2">
                                                    {{ trans('cpanel/myclasses.Name Class Ar') }}:
                                                </label>
                                                <input class="form-control" type="text" name="name" />
                                            </div>

                                            <div class="col">
                                                <label for="Name" class="mr-sm-2">
                                                    {{ trans('cpanel/myclasses.Name Class En') }}:
                                                </label>
                                                <input class="form-control" type="text" name="name_class_en" />
                                            </div>

                                            <div class="col">
                                                <label for="name_en"
                                                       class="mr-sm-2">
                                                    {{ trans('cpanel/myclasses.Name Grade') }}:
                                                </label>

                                                <div class="box">
                                                    <select class="form-control form-control-lg"
                                                            id="exampleFormControlSelect1" name="grade_id">
                                                        @foreach ($grades as $grade)
                                                            <option value="{{ $grade->id }}">
                                                                {{ $grade->name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                </div>

                                            </div>

                                            <div class="col">
                                                <label for="Name_en"
                                                       class="mr-sm-2">
                                                    {{ trans('cpanel/myclasses.Processes') }}:
                                                </label>
                                                <input class="btn btn-danger btn-block" data-repeater-delete
                                                       type="button" value="{{ trans('cpanel/myclasses.delete_row') }}" />
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row mt-20">
                                    <div class="col-12">
                                        <input class="button" data-repeater-create type="button"
                                               value="{{ trans('cpanel/myclasses.add_row') }}"/>
                                    </div>

                                </div>

                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary"
                                            data-dismiss="modal">
                                        {{ trans('cpanel/myclasses.Close') }}
                                    </button>
                                    <button type="submit" class="btn btn-success">
                                        {{ trans('cpanel/myclasses.Submit') }}
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- حذف مجموعة صفوف -->
    <div class="modal fade" id="delete_all" tabindex="-1"
         role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">

        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 style="font-family: 'Cairo', sans-serif;" class="modal-title" id="exampleModalLabel">
                        {{ trans('cpanel/myclasses.delete_class') }}
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <form action="{{ route('delete_all') }}" method="POST">
                    {{ csrf_field() }}
                    <div class="modal-body">
                        {{ trans('cpanel/myclasses.Warning_Grade') }}
                        <input class="text" type="hidden" id="delete_all_id" name="delete_all_id" value=''>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary"
                                data-dismiss="modal">
                            {{ trans('cpanel/myclasses.Close') }}
                        </button>

                        <button type="submit" class="btn btn-danger">
                            {{ trans('cpanel/myclasses.Submit') }}
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

</div>


@endsection


@section('script')

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


    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/datatables.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/js/scripts/tables/datatables/datatable-basic.js')}}"></script>

    <script src="{{asset('ashry/back/app-assets/vendors/js/forms/repeater/jquery.repeater.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/js/scripts/forms/form-repeater.js')}}"></script>

    @toastr_js
    @toastr_render
@endsection
