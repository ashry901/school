@extends('layouts.admin')
@section('title', 'sections')

@section('style')
    @toastr_css
@endsection

@section('content')

<div class="content-header row">
    <div class="content-header-left col-md-6 col-12 mb-2">
        <h3 class="content-header-title">Circle Style</h3>
        <div class="row breadcrumbs-top">
            <div class="breadcrumb-wrapper col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a>
                    </li>
                    <li class="breadcrumb-item"><a href="#">Page</a>
                    </li>
                    <li class="breadcrumb-item active">Form Wizard Circle Steps
                    </li>
                </ol>
            </div>
        </div>
    </div>

    <div class="content-header-right col-md-6 col-12">
        <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
            <button class="btn btn-info round dropdown-toggle dropdown-menu-right box-shadow-2 px-2 mb-1" id="btnGroupDrop1" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="ft-settings icon-left"></i> Settings</button>
            <div class="dropdown-menu" aria-labelledby="btnGroupDrop1"><a class="dropdown-item" href="card-bootstrap.html">Cards</a><a class="dropdown-item" href="component-buttons-extended.html">Buttons</a></div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12 mb-30">
        <div class="card card-statistics h-100">
            <div class="card-body">
                <a class="button x-small" href="#" data-toggle="modal" data-target="#exampleModal">
                    {{ trans('Sections_trans.add_section') }}</a>
            </div>

            @if ($errors->any())
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            @endif

            <div class="card card-statistics h-100">
                <div class="card-body">
                    <div class="accordion gray plus-icon round">

                        @foreach ($grades as $grade)

                            <div class="acd-group">
                                <a href="#" class="acd-heading">{{ $grade->name }}</a>
                                <div class="acd-des">

                                    <div class="row">
                                        <div class="col-xl-12 mb-30">
                                            <div class="card card-statistics h-100">
                                                <div class="card-body">
                                                    <div class="d-block d-md-flex justify-content-between">
                                                        <div class="d-block">
                                                        </div>
                                                    </div>
                                                    <div class="table-responsive mt-15">
                                                        <table class="table center-aligned-table mb-0">
                                                            <thead>
                                                            <tr class="text-dark">
                                                                <th>#</th>
                                                                <th>{{ trans('Sections_trans.Name_Section') }}
                                                                </th>
                                                                <th>{{ trans('Sections_trans.Name_Class') }}</th>
                                                                <th>{{ trans('Sections_trans.Status') }}</th>
                                                                <th>{{ trans('Sections_trans.Processes') }}</th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>
                                                            <?php $i = 0; ?>
                                                            @foreach ($grade->Sections as $list_Sections)
                                                                <tr>
                                                                    <?php $i++; ?>
                                                                    <td>{{ $i }}</td>
                                                                    <td>{{ $list_Sections->Name_Section }}</td>
                                                                    <td>{{ $list_Sections->My_classs->Name_Class }}</td>
                                                                    <td>
                                                                        <label class="badge badge-{{$list_Sections->Status == 1 ? 'success':'danger'}}">{{$list_Sections->Status == 1 ? 'نشط':'غير نشط'}}</label>
                                                                    </td>

                                                                    <td>
                                                                        <a href="{{route('Attendance.show',$list_Sections->id)}}" class="btn btn-warning btn-sm" role="button" aria-pressed="true">قائمة الطلاب</a>
                                                                    </td>
                                                                </tr>
                                                            @endforeach
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                    </div>
                </div>


            </div>
        </div>
    </div>
</div>

@endsection


@section('script')

    <script>
        $(document).ready(function () {
            $('select[name="Grade_id"]').on('change', function () {
                var Grade_id = $(this).val();
                if (Grade_id) {
                    $.ajax({
                        url: "{{ URL::to('classes') }}/" + Grade_id,
                        type: "GET",
                        dataType: "json",
                        success: function (data) {
                            $('select[name="Class_id"]').empty();
                            $.each(data, function (key, value) {
                                $('select[name="Class_id"]').append('<option value="' + key + '">' + value + '</option>');
                            });
                        },
                    });
                } else {
                    console.log('AJAX load did not work');
                }
            });
        });
    </script>

    @toastr_js
    @toastr_render
@endsection
