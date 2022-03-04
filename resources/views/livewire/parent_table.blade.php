

<section id="configuration">
    <div class="row">
        <div class="col-12">
            <div class="card">

                <div class="card-header">
                    <h4 class="card-title">Zero configuration</h4>
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

                        <button type="button"
                                wire:click="showformadd"
                                class="btn btn-primary btn-min-width mr-1 mb-1">
                            {{ trans('cpanel/parent.add_parent') }}
                        </button>

                        <p class="card-text">DataTables has most features</p>
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered zero-configuration" id="datatable">

                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>{{ trans('cpanel/parent.Email') }}</th>
                                    <th>{{ trans('cpanel/parent.Name_Father') }}</th>
                                    <th>{{ trans('cpanel/parent.National_ID_Father') }}</th>
                                    <th>{{ trans('cpanel/parent.Passport_ID_Father') }}</th>
                                    <th>{{ trans('cpanel/parent.Phone_Father') }}</th>
                                    <th>{{ trans('cpanel/parent.Job_Father') }}</th>
                                    <th>{{ trans('cpanel/parent.Processes') }}</th>
                                </tr>
                                </thead>

                                <tbody>

                                @foreach ($guardians as $guardian)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{ $guardian->email }}</td>
                                    <td>{{ $guardian->name_father }}</td>
                                    <td>{{ $guardian->national_id_father }}</td>
                                    <td>{{ $guardian->passport_id_father }}</td>
                                    <td>{{ $guardian->phone_father }}</td>
                                    <td>{{ $guardian->job_father }}</td>
                                    <td>
                                        <button wire:click="edit({{ $guardian->id }})"
                                                title="{{ trans('cpanel/grades.Edit') }}"
                                                class="btn btn-primary btn-sm">
                                            {{ trans('cpanel/grades.Edit') }}
                                        </button>

                                        <button type="button"
                                                class="btn btn-danger btn-sm"
                                                wire:click="delete({{ $guardian->id }})"
                                                title="{{ trans('cpanel/grades.Delete') }}">
                                            {{ trans('cpanel/grades.Delete') }}
                                        </button>
                                    </td>
                                </tr>
                                @endforeach
                                </tbody>

                                <tfoot>
                                <tr>
                                    <th>#</th>
                                    <th>{{ trans('cpanel/parent.Email') }}</th>
                                    <th>{{ trans('cpanel/parent.Name_Father') }}</th>
                                    <th>{{ trans('cpanel/parent.National_ID_Father') }}</th>
                                    <th>{{ trans('cpanel/parent.Passport_ID_Father') }}</th>
                                    <th>{{ trans('cpanel/parent.Phone_Father') }}</th>
                                    <th>{{ trans('cpanel/parent.Job_Father') }}</th>
                                    <th>{{ trans('cpanel/parent.Processes') }}</th>
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


