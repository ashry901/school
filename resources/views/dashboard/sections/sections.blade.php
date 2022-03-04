@extends('layouts.admin')
@section('title', 'sections')

@section('style')
    @toastr_css
{{--    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/plugins/animate/animate.css')}}">--}}
@endsection

@section('content')

<div class="content-body">

    <section id="basic-form-layouts">

        <div class="row match-height">

            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-form">
                            Project Info
                        </h4>
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
                        <div class="card-body">

                            <div class="card-text">
                                <p>This is the most basic and default form having form sections.</p>
                            </div>

                            <form class="form"
                                  action="{{ route('sections.store') }}" method="POST">
                                @csrf
                                <div class="form-body">
                                    <h4 class="form-section">
                                        <i class="ft-user"></i> Personal Info
                                    </h4>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="projectinput1">
                                                    {{ trans('cpanel/sections.Section Name Ar') }}
                                                </label>
                                                {{-- <input type="text" id="projectinput1" class="form-control" placeholder="First Name" name="fname">--}}
                                                <input type="text" name="name_section_ar" class="form-control"
                                                       placeholder="{{ trans('cpanel/sections.Section_name_ar') }}">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="projectinput2">
                                                    {{ trans('cpanel/sections.Section Name En') }}
                                                </label>
                                                {{-- <input type="text" id="projectinput2" class="form-control" placeholder="Last Name" name="lname">--}}
                                                <input type="text" name="name_section_en" class="form-control"
                                                       placeholder="{{ trans('cpanel/sections.Section_name_en') }}">
                                            </div>
                                        </div>
                                    </div>


                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="projectinput5">
                                                    {{ trans('cpanel/sections.Name_Grade') }}
                                                </label>
                                                {{--
                                                <select id="projectinput5" name="interested" class="form-control">
                                                    <option value="none" selected="" disabled="">Interested in</option>
                                                    <option value="design">design</option>
                                                </select>
                                                --}}
                                                <select name="grade_id" class="form-control"
                                                        onchange="console.log($(this).val())">
                                                    <!--placeholder-->
                                                    <option value="" selected disabled>
                                                        {{ trans('cpanel/sections.Select_Grade') }}
                                                    </option>

                                                    @foreach ($list_grades as $list_grade)
                                                        <option value="{{ $list_grade->id }}">
                                                            {{ $list_grade->name }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="projectinput6">
                                                    {{ trans('cpanel/sections.Name_Class') }}
                                                </label>
                                                {{--
                                                <select id="projectinput6" name="budget" class="form-control">
                                                    <option value="0" selected="" disabled="">Budget</option>
                                                    <option value="less than 5000$">less than 5000$</option>
                                                </select>
                                                --}}

                                                <select name="class_id" class="form-control">

                                                </select>

                                            </div>
                                        </div>
                                    </div>
                                    {{--
                                    <div class="form-group">
                                        <label for="projectinput8">
                                            {{ trans('cpanel/sections.Name_Teacher') }}
                                        </label>

                                        <select multiple name="teacher_id[]" class="form-control"
                                                id="exampleFormControlSelect2">
                                            @foreach($teachers as $teacher)
                                                <option value="{{$teacher->id}}">
                                                    {{$teacher->name}}
                                                </option>
                                            @endforeach

                                        </select>
                                    </div>
                                    --}}
                                </div>

                                <div class="form-actions">
                                    <button type="button" class="btn btn-warning mr-1">
                                        <i class="ft-x"></i> Cancel
                                    </button>
                                    <button type="submit" class="btn btn-primary">
                                        <i class="la la-check-square-o"></i> Save
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </section>

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
                                                                <th>
                                                                    {{ trans('Sections_trans.Name_Section') }}
                                                                </th>
                                                                <th>{{ trans('Sections_trans.Name_Class') }}</th>
                                                                <th>{{ trans('Sections_trans.Status') }}</th>
                                                                <th>{{ trans('Sections_trans.Processes') }}</th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>
                                                            <?php $i = 0; ?>
                                                            @foreach ($grade->sections as $list_sections)
                                                                <tr>
                                                                    <?php $i++; ?>
                                                                    <td>{{ $i }}</td>
                                                                    <td>{{ $list_sections->name_section }}</td>
                                                                    <td>{{ $list_sections->My_classs->name_class }}
                                                                    </td>
                                                                    <td>
                                                                        @if ($list_sections->status === 1)
                                                                            <label class="badge badge-success">
                                                                                {{ trans('Sections_trans.Status_Section_AC') }}
                                                                            </label>
                                                                        @else
                                                                            <label class="badge badge-danger">
                                                                                {{ trans('Sections_trans.Status_Section_No') }}
                                                                            </label>
                                                                        @endif

                                                                    </td>
                                                                    <td>

                                                                        <a href="#"
                                                                           class="btn btn-outline-info btn-sm"
                                                                           data-toggle="modal"
                                                                           data-target="#edit{{ $list_sections->id }}">
                                                                            {{ trans('Sections_trans.Edit') }}
                                                                        </a>
                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                        <a href="#"
                                                                           class="btn btn-outline-danger btn-sm"
                                                                           data-toggle="modal"
                                                                           data-target="#delete{{ $list_sections->id }}">
                                                                            {{ trans('Sections_trans.Delete') }}
                                                                        </a>
                                                                    </td>
                                                                </tr>

                                                                <!--تعديل قسم جديد -->
                                                                <div class="modal fade"
                                                                     id="edit{{ $list_sections->id }}"
                                                                     tabindex="-1" role="dialog"
                                                                     aria-labelledby="exampleModalLabel"
                                                                     aria-hidden="true">
                                                                    <div class="modal-dialog" role="document">
                                                                        <div class="modal-content">
                                                                            <div class="modal-header">
                                                                                <h5 class="modal-title"
                                                                                    style="font-family: 'Cairo', sans-serif;"
                                                                                    id="exampleModalLabel">
                                                                                    {{ trans('Sections_trans.edit_Section') }}
                                                                                </h5>
                                                                                <button type="button" class="close"
                                                                                        data-dismiss="modal"
                                                                                        aria-label="Close">
                                                                                <span
                                                                                    aria-hidden="true">&times;</span>
                                                                                </button>
                                                                            </div>
                                                                            <div class="modal-body">

                                                                                <form action="{{ route('sections.update', 'test') }}"
                                                                                      method="POST">
                                                                                    {{ method_field('patch') }}
                                                                                    {{ csrf_field() }}
                                                                                    <div class="row">
                                                                                        <div class="col">
                                                                                            <input type="text"
                                                                                                   name="name_section_ar"
                                                                                                   class="form-control"
                                                                                                   value="{{ $list_sections->getTranslation('name_section', 'ar') }}">
                                                                                        </div>

                                                                                        <div class="col">
                                                                                            <input type="text"
                                                                                                   name="name_section_en"
                                                                                                   class="form-control"
                                                                                                   value="{{ $list_sections->getTranslation('name_section', 'en') }}">
                                                                                            <input id="id"
                                                                                                   type="hidden"
                                                                                                   name="id"
                                                                                                   class="form-control"
                                                                                                   value="{{ $list_sections->id }}">
                                                                                        </div>

                                                                                    </div>
                                                                                    <br>

                                                                                    <div class="col">
                                                                                        <label for="inputName" class="control-label">
                                                                                            {{ trans('Sections_trans.Name_Grade') }}
                                                                                        </label>

                                                                                        <select name="grade_id"
                                                                                                class="custom-select"
                                                                                                onclick="console.log($(this).val())">
                                                                                            <!--placeholder-->
                                                                                            <option
                                                                                                value="{{ $grade->id }}">
                                                                                                {{ $grade->name }}
                                                                                            </option>
                                                                                            @foreach ($list_grades as $list_grade)
                                                                                                <option
                                                                                                    value="{{ $list_grade->id }}">
                                                                                                    {{ $list_grade->name }}
                                                                                                </option>
                                                                                            @endforeach
                                                                                        </select>
                                                                                    </div>
                                                                                    <br>

                                                                                    <div class="col">
                                                                                        <label for="inputName" class="control-label">
                                                                                            {{ trans('Sections_trans.Name_Class') }}
                                                                                        </label>
                                                                                        <select name="class_id"
                                                                                                class="custom-select">
                                                                                            <option
                                                                                                value="{{ $list_sections->My_classs->id }}">
                                                                                                {{ $list_sections->My_classs->name_class }}
                                                                                            </option>
                                                                                        </select>
                                                                                    </div>
                                                                                    <br>

                                                                                    <div class="col">
                                                                                        <div class="form-check">

                                                                                            @if ($list_sections->status === 1)
                                                                                                <input type="checkbox" checked
                                                                                                       class="form-check-input"
                                                                                                       name="status"
                                                                                                       id="exampleCheck1">
                                                                                            @else
                                                                                                <input
                                                                                                    type="checkbox"
                                                                                                    class="form-check-input"
                                                                                                    name="status"
                                                                                                    id="exampleCheck1">
                                                                                            @endif
                                                                                            <label class="form-check-label" for="exampleCheck1">
                                                                                                {{ trans('Sections_trans.Status') }}
                                                                                            </label>

                                                                                            <br>

                                                                                            <div class="col">
                                                                                                <label for="inputName" class="control-label">
                                                                                                    {{ trans('Sections_trans.Name_Teacher') }}
                                                                                                </label>

                                                                                                <select multiple name="teacher_id[]"
                                                                                                        class="form-control"
                                                                                                        id="exampleFormControlSelect2">
                                                                                                    @foreach($list_sections->teachers as $teacher)
                                                                                                        <option selected value="{{$teacher['id']}}">
                                                                                                            {{$teacher['name']}}
                                                                                                        </option>
                                                                                                    @endforeach

                                                                                                    @foreach($teachers as $teacher)
                                                                                                        <option value="{{$teacher->id}}">
                                                                                                            {{$teacher->name}}
                                                                                                        </option>
                                                                                                    @endforeach
                                                                                                </select>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>

                                                                            </div>
                                                                            <div class="modal-footer">
                                                                                <button type="button"
                                                                                        class="btn btn-secondary"
                                                                                        data-dismiss="modal">
                                                                                    {{ trans('Sections_trans.Close') }}
                                                                                </button>
                                                                                <button type="submit" class="btn btn-danger">
                                                                                    {{ trans('Sections_trans.submit') }}
                                                                                </button>
                                                                            </div>
                                                                            </form>
                                                                        </div>
                                                                    </div>
                                                                </div>


                                                                <!-- delete_modal_Grade -->
                                                                <div class="modal fade"
                                                                     id="delete{{ $list_sections->id }}"
                                                                     tabindex="-1" role="dialog"
                                                                     aria-labelledby="exampleModalLabel"
                                                                     aria-hidden="true">
                                                                    <div class="modal-dialog" role="document">
                                                                        <div class="modal-content">
                                                                            <div class="modal-header">
                                                                                <h5 style="font-family: 'Cairo', sans-serif;"
                                                                                    class="modal-title"
                                                                                    id="exampleModalLabel">
                                                                                    {{ trans('Sections_trans.delete_Section') }}
                                                                                </h5>
                                                                                <button type="button" class="close"
                                                                                        data-dismiss="modal"
                                                                                        aria-label="Close">
                                                                                <span
                                                                                    aria-hidden="true">&times;</span>
                                                                                </button>
                                                                            </div>
                                                                            <div class="modal-body">
                                                                                <form
                                                                                    action="{{ route('sections.destroy', 'test') }}"
                                                                                    method="post">
                                                                                    {{ method_field('Delete') }}
                                                                                    @csrf
                                                                                    {{ trans('Sections_trans.Warning_Section') }}
                                                                                    <input id="id" type="hidden"
                                                                                           name="id"
                                                                                           class="form-control"
                                                                                           value="{{ $list_sections->id }}">
                                                                                    <div class="modal-footer">
                                                                                        <button type="button"
                                                                                                class="btn btn-secondary"
                                                                                                data-dismiss="modal">
                                                                                            {{ trans('Sections_trans.Close') }}
                                                                                        </button>

                                                                                        <button type="submit" class="btn btn-danger">
                                                                                            {{ trans('Sections_trans.submit') }}
                                                                                        </button>
                                                                                    </div>
                                                                                </form>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

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

                <!--اضافة قسم جديد -->
                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
                     aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" style="font-family: 'Cairo', sans-serif;"
                                    id="exampleModalLabel">
                                    {{ trans('Sections_trans.add_section') }}</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">

                                <form action="{{ route('sections.store') }}" method="POST">
                                    @csrf
                                    <div class="row">
                                        <div class="col">
                                            <input type="text" name="name_section_ar" class="form-control"
                                                   placeholder="{{ trans('Sections_trans.Section_name_ar') }}">
                                        </div>

                                        <div class="col">
                                            <input type="text" name="name_section_en" class="form-control"
                                                   placeholder="{{ trans('Sections_trans.Section_name_en') }}">
                                        </div>

                                    </div>
                                    <br>


                                    <div class="col">
                                        <label for="inputName" class="control-label">
                                            {{ trans('Sections_trans.Name_Grade') }}
                                        </label>

                                        <select name="grade_id" class="custom-select"
                                                onchange="console.log($(this).val())">
                                            <!--placeholder-->
                                            <option value="" selected disabled>
                                                {{ trans('Sections_trans.Select_Grade') }}
                                            </option>

                                            @foreach ($list_grades as $list_grade)
                                                <option value="{{ $list_grade->id }}">
                                                    {{ $list_grade->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <br>

                                    <div class="col">
                                        <label for="inputName" class="control-label">
                                            {{ trans('Sections_trans.Name_Class') }}
                                        </label>
                                        <select name="class_id" id="class_id" class="custom-select">

                                        </select>
                                    </div>

                                    <br>

                                    <div class="col">
                                        <label for="inputName" class="control-label">
                                            {{ trans('Sections_trans.Name_Teacher') }}
                                        </label>
                                        <select multiple name="teacher_id[]" class="form-control"
                                                id="exampleFormControlSelect2">
                                            @foreach($teachers as $teacher)
                                                <option value="{{$teacher->id}}">{{$teacher->name}}</option>
                                            @endforeach
                                        </select>
                                    </div>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary"
                                        data-dismiss="modal">
                                    {{ trans('Sections_trans.Close') }}
                                </button>

                                <button type="submit" class="btn btn-danger">
                                    {{ trans('Sections_trans.submit') }}
                                </button>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

{{--
<div class="content-header row">
    <div class="content-header-left col-md-6 col-12 mb-2">
        <h3 class="content-header-title">
            {{ trans('cpanel/sections.Sections') }}
        </h3>
        <div class="row breadcrumbs-top">
            <div class="breadcrumb-wrapper col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="{{route('admin.dashboard')}}">
                            {{ trans('cpanel/main.Dashboard') }}
                        </a>
                    </li>

                    <li class="breadcrumb-item active">
                        {{ trans('cpanel/sections.Sections') }}
                    </li>
                </ol>
            </div>
        </div>
    </div>

    <div class="content-header-right col-md-6 col-12">


    </div>

</div>

<div class="content-body">
    <!-- Basic Modals start -->
    <section id="basic-modals">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-content collapse show">
                        <div class="card-body">
                            <div class="row my-2">
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <!-- Button trigger modal -->
                                        <button type="button" class="btn btn-outline-primary block btn-lg" data-toggle="modal" data-target="#default">
                                            Launch Modal
                                        </button>

                                        <!-- Modal -->
                                        <div class="modal fade text-left" id="default" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title" id="myModalLabel1">Basic Modal</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <h5>Check First Paragraph</h5>
                                                        <p>Oat cake ice cream candy chocolate cake chocolate cake cotton candy dragée apple pie. Brownie carrot
                                                            cake candy canes bonbon fruitcake topping halvah. Cake sweet roll cake cheesecake cookie chocolate cake
                                                            liquorice. Apple pie sugar plum powder donut soufflé.</p>
                                                        <p>Sweet roll biscuit donut cake gingerbread. Chocolate cupcake chocolate bar ice cream. Danish candy
                                                            cake.</p>
                                                        <hr>
                                                        <h5>Some More Text</h5>
                                                        <p>Cupcake sugar plum dessert tart powder chocolate fruitcake jelly. Tootsie roll bonbon toffee danish.
                                                            Biscuit sweet cake gummies danish. Tootsie roll cotton candy tiramisu lollipop candy cookie biscuit pie.</p>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn grey btn-outline-secondary" data-dismiss="modal">Close</button>
                                                        <button type="button" class="btn btn-outline-primary">Save changes</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Basic Modals end -->

    <!-- Modal Sizes start -->
    <section id="modal-sizes">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Modal Sizes</h4>
                        <a class="heading-elements-toggle">
                            <i class="la la-ellipsis font-medium-3"></i>
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
                        <div class="card-body">
                            <div class="row my-2">

                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <h5>Default Modal Size</h5>
                                        <p>
                                            For <code>default size</code>,
                                            modal markup doesn't require any
                                            additional sizing class.
                                        </p>
                                        <!-- Button trigger modal -->
                                        <button type="button"
                                                class="btn btn-outline-success block btn-lg"
                                                data-toggle="modal" data-target="#defaultSize">

                                            Launch Modal
                                        </button>

                                        <!-- Modal -->
                                        <div class="modal fade text-left" id="defaultSize" tabindex="-1" role="dialog" aria-labelledby="myModalLabel18" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title" id="myModalLabel18">
                                                            Add Section Info
                                                        </h4>

                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>

                                                    <div class="modal-body">

                                                        <form class="form" action="{{ route('sections.store') }}" method="POST">
                                                            {{ csrf_field() }}
                                                            <div class="form-body">
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="projectinput1">
                                                                                Section Name Ar
                                                                            </label>

                                                                            <input type="text"
                                                                                   name="name_section_ar"
                                                                                   class="form-control"
                                                                                   placeholder="{{ trans('cpanel/sections.Section_name_ar') }}">
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="projectinput2">
                                                                                Section Name En
                                                                            </label>

                                                                            <input type="text"
                                                                                   name="name_section_en"
                                                                                   class="form-control"
                                                                                   placeholder="{{ trans('cpanel/sections.Section_name_en') }}">
                                                                        </div>
                                                                    </div>

                                                                </div>


                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="projectinput5">
                                                                                {{ trans('cpanel/sections.Name_Grade') }}
                                                                            </label>

                                                                            <select name="grade_id" class="form-control"
                                                                                    onchange="console.log($(this).val())">

                                                                                <option value="" selected="" disabled="">
                                                                                    {{ trans('cpanel/sections.Select_Grade') }}
                                                                                </option>
                                                                                @foreach ($list_grades as $list_grade)
                                                                                    <option value="{{ $list_grade->id }}">
                                                                                        {{ $list_grade->name }}
                                                                                    </option>
                                                                                @endforeach

                                                                            </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="projectinput6">
                                                                                {{ trans('cpanel/sections.Name_Class') }}
                                                                            </label>

                                                                            <select name="class_id" class="form-control">

                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <div class="form-group">
                                                                            <label for="projectinput5">
                                                                                {{ trans('cpanel/sections.Name_Teacher') }}
                                                                            </label>
                                                                            <select multiple name="teacher_id[]"
                                                                                    class="form-control">
                                                                                @foreach($teachers as $teacher)
                                                                                    <option value="{{$teacher->id}}">{{$teacher->name}}</option>
                                                                                @endforeach

                                                                            </select>
                                                                        </div>
                                                                    </div>

                                                                </div>

                                                            </div>

                                                            <div class="form-actions">
                                                                <button type="submit" class="btn btn-primary">
                                                                    <i class="la la-check-square-o"></i> Save
                                                                </button>
                                                            </div>
                                                        </form>


                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <h5>Large Modal</h5>
                                        <p>Add class <code>.modal-lg</code> with <code>.modal-dialog</code> to use large size of modal.</p>
                                        <!-- Button trigger modal -->
                                        <button type="button" class="btn btn-outline-success block btn-lg" data-toggle="modal" data-target="#large">
                                            Launch Modal
                                        </button>

                                        <!-- Modal -->
                                        <div class="modal fade text-left" id="large" tabindex="-1" role="dialog" aria-labelledby="myModalLabel17" aria-hidden="true">
                                            <div class="modal-dialog modal-lg" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title" id="myModalLabel17">Basic Modal</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <h5>Check First Paragraph</h5>
                                                        <p>Oat cake ice cream candy chocolate cake chocolate cake cotton candy dragée apple pie. Brownie carrot
                                                            cake candy canes bonbon fruitcake topping halvah. Cake sweet roll cake cheesecake cookie chocolate cake
                                                            liquorice. Apple pie sugar plum powder donut soufflé.</p>
                                                        <p>Sweet roll biscuit donut cake gingerbread. Chocolate cupcake chocolate bar ice cream. Danish candy
                                                            cake.</p>
                                                        <hr>
                                                        <h5>Some More Text</h5>
                                                        <p>Cupcake sugar plum dessert tart powder chocolate fruitcake jelly. Tootsie roll bonbon toffee danish.
                                                            Biscuit sweet cake gummies danish. Tootsie roll cotton candy tiramisu lollipop candy cookie biscuit pie.</p>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn grey btn-outline-secondary" data-dismiss="modal">Close</button>
                                                        <button type="button" class="btn btn-outline-primary">Save changes</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Modal Sizes end -->

</div>

<div class="content-body">

    <div class="row">
        <div class="col-12">
            @foreach ($grades as $grade)
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">
                        {{ $grade->name }}
                    </h4>
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
                    <div class="card-body">

                        <p class="card-text">
                            Using the most basic
                        </p>
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>{{ trans('cpanel/sections.Name Section') }}</th>
                                    <th>{{ trans('cpanel/sections.Name Class') }}</th>
                                    <th>{{ trans('cpanel/sections.Status') }}</th>
                                    <th>{{ trans('cpanel/sections.Processes') }}</th>
                                </tr>
                                </thead>

                                <tbody>
                                <?php $i = 0; ?>
                                @foreach ($grade->sections as $list_sections)
                                <?php $i++; ?>
                                <tr>
                                    <th scope="row">{{ $i }}</th>
                                    <td>{{ $list_sections->name_section }}</td>
                                    <td>{{ $list_sections->My_classs->name_class }}</td>
                                    <td>
                                        @if ($list_sections->status === 1)
                                            <label class="badge badge-success">
                                                {{ trans('Sections_trans.Status_Section_AC') }}
                                            </label>
                                        @else
                                            <label class="badge badge-danger">
                                                {{ trans('Sections_trans.Status_Section_No') }}
                                            </label>
                                        @endif
                                    </td>
                                    <td>
                                        <a href="#"
                                           class="btn btn-outline-info btn-sm"
                                           data-toggle="modal"
                                           data-target="#edit{{ $list_sections->id }}">
                                            {{ trans('Sections_trans.Edit') }}
                                        </a>
                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                        <a href="#"
                                           class="btn btn-outline-danger btn-sm"
                                           data-toggle="modal"
                                           data-target="#delete{{ $list_sections->id }}">
                                            {{ trans('Sections_trans.Delete') }}
                                        </a>
                                    </td>
                                </tr>


                                @endforeach

                                </tbody>

                            </table>
                        </div>


                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>



</div>
--}}
@endsection



@section('script')
    @toastr_js
    @toastr_render

{{--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>--}}
    <script>
        $(document).ready(function () {
            $('select[name="grade_id"]').on('change', function () {
                var grade_id = $(this).val();
                if (grade_id) {
                    $.ajax({
                        url: "{{ URL::to('classes') }}/" + grade_id,
                        type: "GET",
                        dataType: "json",
                        success: function (data) {
                            $('select[name="class_id"]').empty();
                            $.each(data, function (key, value) {
                                $('select[name="class_id"]').append('<option value="' + key + '">' + value + '</option>');
                            });
                        },
                    });
                } else {
                    console.log('AJAX load did not work');
                }
            });
        });

    </script>

@endsection
