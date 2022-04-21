@extends('layouts.admin')
@section('title', 'library')

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
                    <li class="breadcrumb-item">
                        <a href="index.html">Home</a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="#">Page</a>
                    </li>
                    <li class="breadcrumb-item active">
                        Form Wizard Circle Steps
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
                    aria-haspopup="true"
                    aria-expanded="false">
                <i class="ft-settings icon-left"></i>
                Settings
            </button>
            <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                <a class="dropdown-item" href="card-bootstrap.html">
                    Cards
                </a>
                <a class="dropdown-item" href="component-buttons-extended.html">
                    Buttons
                </a>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12 mb-30">
        <div class="card card-statistics h-100">
            <div class="card-body">
                <div class="col-xl-12 mb-30">
                    <div class="card card-statistics h-100">
                        <div class="card-body">
                            <a href="{{route('admin.library.create')}}"
                               class="btn btn-success btn-sm" role="button"
                               aria-pressed="true">Add New Book</a>
                            <br><br>
                            <div class="table-responsive">
                                <table class="table table-hover table-sm table-bordered p-0"
                                       data-page-length="50"
                                       style="text-align: center">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Name Book</th>
                                        <th>Name Teacher</th>
                                        <th>Grade</th>
                                        <th>Classroom</th>
                                        <th>Section</th>
                                        <th style="width: 25%">Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($books as $book)
                                        <tr>
                                            <td>{{ $loop->iteration}}</td>
                                            <td>{{$book->title}}</td>
                                            <td>{{$book->teacher->name}}</td>
                                            <td>{{$book->grade->name}}</td>
                                            <td>{{$book->classroom->name_class}}</td>
                                            <td>{{$book->section->name_section}}</td>
                                            <td>
                                                <a href="{{route('downloadAttachment', $book->file_name)}}"
                                                   title="download book"
                                                   class="btn btn-warning btn-sm"
                                                   role="button" aria-pressed="true">
                                                    Download
                                                </a>
                                                <a href="{{route('admin.library.edit', $book->id)}}"
                                                   class="btn btn-info btn-sm"
                                                   role="button" aria-pressed="true">
                                                    Edit
                                                </a>
                                                <button type="button"
                                                        class="btn btn-danger btn-sm"
                                                        data-toggle="modal"
                                                        data-target="#delete_book{{ $book->id }}"
                                                        title="حذف">
                                                    Delete
                                                </button>
                                            </td>
                                        </tr>

                                    @include('dashboard.library.destroy')
                                    @endforeach
                                </table>
                            </div>
                        </div>
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
@endsection
