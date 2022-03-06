<section id="number-tabs">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">

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

                <div class="card-content collapse show">
                    <div class="card-body">


                    @if (!empty($successMessage))
                        <div class="alert alert-success" id="success-alert">
                            <button type="button" class="close" data-dismiss="alert">x</button>
                            {{ $successMessage }}
                        </div>
                    @endif

                    @if ($catchError)
                        <div class="alert alert-danger" id="success-danger">
                            <button type="button" class="close" data-dismiss="alert">x</button>
                            {{ $catchError }}
                        </div>
                    @endif

                    @if($show_table)
                        @include('livewire.parent_table')
                    @else

                        <div class="row justify-content-center">

                            <div class="col-md-4">
                                <a href="#step-1" type="button"
                                   class="btn btn-circle {{ $currentStep != 1 ? 'btn-default' : 'btn-success' }}">
                                    1
                                </a>
                                <p>{{ trans('cpanel/parent.Step1') }}</p>
                            </div>

                            <div class="col-md-4">
                                <a href="#step-2" type="button"
                                   class="btn btn-circle {{ $currentStep != 2 ? 'btn-default' : 'btn-success' }}">
                                    2
                                </a>
                                <p>{{ trans('cpanel/parent.Step2') }}</p>
                            </div>

                            <div class="col-md-4">
                                <a href="#step-3" type="button"
                                   class="btn btn-circle {{ $currentStep != 3 ? 'btn-default' : 'btn-success' }}"
                                   disabled="disabled">3</a>
                                <p>{{ trans('cpanel/parent.Step3') }}</p>
                            </div>
                        </div>


                        @include('livewire.father_form')

                        @include('livewire.mother_form')

                        <div class="row setup-content {{ $currentStep != 3 ? 'displayNone' : '' }}" id="step-3">
                            @if ($currentStep != 3)
                                <div style="display: none" class="row setup-content" id="step-3">
                                    @endif

                                    <form class="form">
                                        <div class="form-body">

                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label style="color: red">
                                                            {{trans('cpanel/parent.Attachments')}}
                                                        </label>

                                                        <div class="form-group">
                                                            <input type="file" wire:model="photos" accept="image/*" multiple>
                                                        </div>

                                                        <input type="hidden" wire:model="parent_id">
                                                    </div>
                                                </div>
                                            </div>

                                        </div>

                                        <div class="form-actions">
                                            <button type="button" class="btn btn-danger"
                                                    wire:click="back(2)">
                                                {{ trans('cpanel/parent.Back') }}
                                            </button>

                                            @if($updateMode)
                                                <button class="btn btn-success"
                                                        wire:click="submitForm_edit"
                                                        type="button">{{trans('cpanel/parent.Finish')}}
                                                </button>
                                            @else

                                                <button class="btn btn-success"
                                                        wire:click="submitForm"
                                                        type="button">
                                                    {{ trans('cpanel/parent.Finish') }}
                                                </button>
                                            @endif
                                        </div>
                                    </form>


                                </div>

                            @endif

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>




