@extends('layouts.admin')
@section('title', 'grades')

@section('style')
    @toastr_css
@endsection

@section('content')

    <div class="content-body">
        <div class="content-overlay"></div>

        <section class="row all-contacts">
            <div class="col-12">
                <div class="card">
                    <div class="card-head">
                        <div class="card-header">
                            <h4 class="card-title">All Contacts</h4>
                            <div class="heading-elements mt-0">
                                <button class="btn btn-primary btn-sm"
                                        data-toggle="modal"
                                        data-target="#AddContactModal">
                                    <i class="d-md-none d-block ft-plus white"></i>

                                    <span class="d-md-block d-none">Add Contacts</span>
                                </button>

{{--                                @include('dashboard.includes.alerts.errors')--}}
{{--                                @include('dashboard.includes.alerts.success')--}}

                                <div class="modal fade"
                                     id="AddContactModal"
                                     tabindex="-1"
                                     role="dialog"
                                     aria-labelledby="exampleModalLabel1"
                                     aria-hidden="true">

                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <section class="contact-form">

                                                <form action="{{ route('grades.store') }}" method="POST">
                                                    @csrf
                                                    <div class="form-body">

                                                        <h4 class="form-section">
                                                            <i class="ft-menu"></i>
                                                            Add School Stage
                                                        </h4>

                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <label for="projectinput1">
                                                                    {{ trans('cpanel/grades.stage_name_ar') }}
                                                                </label>
                                                                <input type="text"
                                                                       id="name"
                                                                       class="form-control"
                                                                       name="name">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <label for="projectinput2">
                                                                    {{ trans('cpanel/grades.stage_name_en') }}
                                                                </label>
                                                                <input type="text"
                                                                       class="form-control"
                                                                       name="name_en">
                                                            </div>
                                                        </div>

                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <label for="projectinput8">
                                                                    {{ trans('cpanel/grades.Notes') }}
                                                                </label>
                                                                <textarea name="notes"
                                                                          rows="5"
                                                                          class="form-control"></textarea>
                                                            </div>
                                                        </div>
                                                        <button type="submit" class="btn btn-primary">
                                                            <i class="la la-check-square-o"></i>
                                                            {{ trans('cpanel/grades.Save') }}
                                                        </button>
                                                        <br><br>
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
                            <!-- Task List table -->

                            <div class="table-responsive">
                                <table id="users-contacts"
                                       class="table table-white-space table-bordered row-grouping display no-wrap icheck table-middle text-center">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Name</th>
                                            <th>Note</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>

                                    <?php $i = 0; ?>
                                    @foreach ($grades as $grade)
                                    <tbody>
                                        <tr>
                                            <?php $i++; ?>
                                            <td>{{ $i }}</td>

                                            <td>{{ $grade->name }}</td>

                                            <td class="text-center">
                                                <div class="favorite active">
                                                    {{ $grade->notes }}
                                                </div>
                                            </td>

                                            <td>
                                                <a data-toggle="modal"
                                                   data-target="#edit{{ $grade->id }}"
                                                   class="primary edit mr-1">
                                                    <i class="la la-pencil"></i>
                                                </a>

                                                <button type="button" class="btn btn-danger btn-sm" data-toggle="modal"
                                                        data-target="#delete{{ $grade->id }}"
                                                        title="{{ trans('Grades_trans.Delete') }}">
                                                    <i class="la la-trash-o"></i>
                                                </button>

                                            </td>
                                        </tr>
                                    </tbody>

                                    <!-- Edit Modal Grade -->
                                    <div class="modal fade"
                                             id="edit{{ $grade->id }}"
                                             tabindex="-1"
                                             role="dialog"
                                             aria-labelledby="exampleModalLabel"
                                             aria-hidden="true">

                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <section class="contact-form">


                                                    <form action="{{ route('grades.update', 'test') }}" method="post">
                                                        {{ method_field('patch') }}
                                                        @csrf
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel1">
                                                                Edit School Stage
                                                            </h5>
                                                            <button type="button" class="close"
                                                                    data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>

                                                        <div class="modal-body">
                                                            <fieldset class="form-group col-12">
                                                                <input id="name" type="text" name="name"
                                                                       class="form-control"
                                                                       value="{{ $grade->getTranslation('name', 'ar') }}"
                                                                       required>
                                                                <input id="id" type="hidden" name="id" class="form-control"
                                                                       value="{{ $grade->id }}">
                                                            </fieldset>

                                                            <fieldset class="form-group col-12">
                                                                <input type="text" class="form-control"
                                                                       value="{{ $grade->getTranslation('name', 'en') }}"
                                                                       name="name_en" required>
                                                            </fieldset>

                                                            <fieldset class="form-group col-12">
                                                                <textarea class="form-control"
                                                                          name="notes"
                                                                          id="exampleFormControlTextarea1"
                                                                          rows="3">
                                                                    {{ $grade->notes }}
                                                                </textarea>
                                                            </fieldset>

                                                        </div>
                                                        <div class="modal-footer">
                                                            <fieldset class="form-group position-relative has-icon-left mb-0">
                                                                <button type="submit"
                                                                        class="btn btn-success">
                                                                    <i class="la la-paper-plane-o d-block d-lg-none"></i>
                                                                    <span class="d-none d-lg-block">
                                                                        {{ trans('cpanel/grades.submit') }}
                                                                    </span>
                                                                </button>

                                                            </fieldset>
                                                        </div>
                                                    </form>

                                                </section>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- delete_modal_Grade -->
                                    <div class="modal fade"
                                         id="delete{{ $grade->id }}"
                                         tabindex="-1"
                                         role="dialog"
                                         aria-labelledby="exampleModalLabel"
                                         aria-hidden="true">

                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <section class="contact-form">

                                                    <form action="{{ route('grades.destroy', 'test') }}" method="post">
                                                        {{ method_field('Delete') }}
                                                        @csrf

                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel1">
                                                                {{ trans('cpanel/grades.Warning_Grade') }}
                                                            </h5>
                                                            <button type="button" class="close"
                                                                    data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>


                                                        <fieldset class="form-group col-12">

                                                            <input id="id"
                                                                   type="hidden"
                                                                   name="id"
                                                                   class="form-control"
                                                                   value="{{ $grade->id }}">
                                                        </fieldset>

                                                        <button type="submit" class="btn btn-danger">
                                                            {{ trans('cpanel/grades.submit') }}
                                                        </button>

                                                    </form>

                                                </section>
                                            </div>
                                        </div>
                                    </div>

                                    @endforeach
                                    <tfoot>
                                        <tr>
                                            <th>#</th>
                                            <th>Name</th>
                                            <th>Note</th>
                                            <th>Actions</th>
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

@endsection

@section('script')
    @toastr_js
    @toastr_render

@endsection
