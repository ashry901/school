@extends('layouts.admin')
@section('title', 'add-fees-invoice')

@section('style')
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
                        <a href="{{route('Fees.index')}}">
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
                   href="{{route('Fees.index')}}">
                    {{trans('cpanel/sidebar.Studying Fees')}}
                </a>
                <a class="dropdown-item"
                   href="{{route('Fees_Invoices.index')}}">
                    {{trans('cpanel/sidebar.Invoices')}}
                </a>
                <a class="dropdown-item"
                   href="{{route('receipt_students.index')}}">
                    {{trans('cpanel/sidebar.Receipt')}}
                </a>
                <a class="dropdown-item"
                   href="{{route('ProcessingFee.index')}}">
                    {{trans('cpanel/sidebar.Fee Exclusion')}}
                </a>
                <a class="dropdown-item"
                   href="{{route('Payment_students.index')}}">
                    {{trans('cpanel/sidebar.Exchange Receipts')}}
                </a>
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
                    <a class="heading-elements-toggle">
                        <i class="la la-ellipsis-h font-medium-3"></i>
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

                        <form class="form repeater-default"
                              action="{{ route('Fees_Invoices.store') }}" method="POST">
                            @csrf
                            <div data-repeater-list="List_Fees">
                                <div data-repeater-item>
                                    <div class="row justify-content-between">

                                        <div class="col-md-4 col-sm-12 form-group">
                                            <label for="Profession">
                                                {{ trans('cpanel/fees.Name Student') }}
                                            </label>
                                            <select class="form-control"
                                                    name="student_id">
                                                <option value="{{ $student->id }}">
                                                    {{ $student->name }}
                                                </option>
                                            </select>
                                        </div>

                                        <div class="col-md-4 col-sm-12 form-group">
                                            <label for="Profession">
                                                {{ trans('cpanel/fees.Fee Type') }}
                                            </label>
                                            <select class="form-control"
                                                    name="fee_id">
                                                @foreach($fees as $fee)
                                                    <option value="{{ $fee->id }}">
                                                        {{ $fee->title }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>

                                        <div class="col-md-4 col-sm-12 form-group">
                                            <label for="Profession">
                                                {{ trans('cpanel/fees.Amount') }}
                                            </label>
                                            <select class="form-control"
                                                    name="amount">
                                                @foreach($fees as $fee)
                                                    <option value="{{ $fee->amount }}">
                                                        {{ $fee->amount }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>

                                        <div class="col-md-8 col-sm-12 form-group">
                                            <label for="Statement">
                                                {{ trans('cpanel/fees.Statement') }}
                                            </label>
                                            <input type="text" class="form-control" name="description" required>
                                        </div>

                                        <div class="col-md-4 col-sm-12 form-group d-flex align-items-center pt-2">
                                            <button class="btn btn-danger" data-repeater-delete type="button">
                                                <i class="bx bx-x"></i>
                                                {{ trans('cpanel/fees.Delete Row') }}
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
                            <input type="hidden" name="grade_id" value="{{$student->grade_id}}">
                            <input type="hidden" name="classroom_id" value="{{$student->classroom_id}}">
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




@endsection


@section('script')
    <script src="{{asset('ashry/back/app-assets/vendors/js/forms/repeater/jquery.repeater.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/js/scripts/forms/form-repeater.js')}}"></script>

{{--    <script>--}}
{{--        $('.repeater-default').repeater({--}}
{{--            show: function () {--}}
{{--                $(this).slideDown();--}}
{{--            },--}}
{{--            hide: function (deleteElement) {--}}
{{--                if (confirm('Are you sure you want to delete this element?')) {--}}
{{--                    $(this).slideUp(deleteElement);--}}
{{--                }--}}
{{--            }--}}
{{--        });--}}
{{--    </script>--}}

{{--    <script type="text/javascript">--}}
{{--        $(function() {--}}
{{--            $("#btn_delete_all").click(function() {--}}
{{--                var selected = new Array();--}}
{{--                $("#datatable input[type=checkbox]:checked").each(function() {--}}
{{--                    selected.push(this.value);--}}
{{--                });--}}
{{--                if (selected.length > 0) {--}}
{{--                    $('#delete_all').modal('show')--}}
{{--                    $('input[id="delete_all_id"]').val(selected);--}}
{{--                }--}}
{{--            });--}}
{{--        });--}}
{{--    </script>--}}
    @toastr_js
    @toastr_render
@endsection
