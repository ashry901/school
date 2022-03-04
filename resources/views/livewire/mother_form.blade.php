{{--
<h6>Mother Information</h6>
<fieldset>

    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="firstName3">
                    Mother Name Arabic :
                    <span class="danger">*</span>
                </label>
                <input type="text" class="form-control "
                       wire:model="name_mother">
                @error('name_mother')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>

        <div class="col-md-6">
            <div class="form-group">
                <label for="lastName3">
                    Mother Name English :
                    <span class="danger">*</span>
                </label>
                <input type="text" class="form-control "
                       wire:model="name_mother_en">
                @error('name_mother_en')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="firstName3">
                    Mother Job Arabic :
                    <span class="danger">*</span>
                </label>
                <input type="text" class="form-control " wire:model="job_mother">

                @error('job_mother')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>

        <div class="col-md-6">
            <div class="form-group">
                <label for="lastName3">
                    Mother Job English :
                    <span class="danger">*</span>
                </label>
                <input type="text" class="form-control " wire:model="job_mother_en">
                @error('job_mother_en')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>
    </div>

    <div class="row">

        <div class="col-md-4">
            <div class="form-group">
                <label for="firstName3">
                    National ID Mother :
                    <span class="danger">*</span>
                </label>
                <input type="text" class="form-control " wire:model="national_id_mother">
                @error('national_id_mother')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>

        <div class="col-md-4">
            <div class="form-group">
                <label for="lastName3">
                    Passport ID Mother :
                    <span class="danger">*</span>
                </label>
                <input type="text" class="form-control " wire:model="passport_id_mother">
                @error('passport_id_mother')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>

        <div class="col-md-4">
            <div class="form-group">
                <label for="lastName3">
                    Phone Mother :
                    <span class="danger">*</span>
                </label>
                <input type="text" class="form-control " wire:model="phone_mother">
                @error('phone_mother')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>

    </div>

    <div class="row">
        <div class="col-md-4">
            <div class="form-group">
                <label for="location">
                    Nationality Mother id :
                    <span class="danger">*</span>
                </label>
                <select class="custom-select form-control "
                        wire:model="nationality_mother_id">

                    <option value="">{{trans('cpanel.parent.Choose')}}</option>
                    @foreach($nationalities as $national)
                        <option value="{{$national->id}}">
                            {{$national->name}}
                        </option>
                    @endforeach
                </select>
                @error('nationality_mother_id')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>

        <div class="col-md-4">
            <div class="form-group">
                <label for="location">
                    Blood Type :
                    <span class="danger">*</span>
                </label>
                <select class="custom-select form-control "
                        wire:model="blood_type_mother_id">
                    <option value="">{{trans('cpanel.parent.Choose')}}...</option>
                    @foreach($bloodtypes as $bloodtype)
                        <option value="{{$bloodtype->id}}">
                            {{$bloodtype->name}}
                        </option>
                    @endforeach
                </select>
                @error('blood_type_mother_id')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>

        <div class="col-md-4">
            <div class="form-group">
                <label for="location">
                    Religion Father :
                    <span class="danger">*</span>
                </label>
                <select class="custom-select form-control "
                        wire:model="religion_mother_id">
                    <option value="">{{trans('cpanel.parent.Choose')}}...</option>
                    @foreach($religions as $religion)
                        <option value="{{$religion->id}}">
                            {{$religion->name}}
                        </option>
                    @endforeach
                </select>
                @error('religion_mother_id')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>

    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label for="phoneNumber3">
                    Address Father :
                    <span class="danger">*</span>
                </label>
                <input type="text" class="form-control" wire:model="address_mother">
                @error('address_mother')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>
    </div>

    <button class="btn btn-danger btn-sm nextBtn btn-lg pull-right" type="button" wire:click="back(1)">
        {{trans('Parent_trans.Back')}}
    </button>
    &nbsp; &nbsp; &nbsp; &nbsp;

    @if($updateMode)
        <button class="btn btn-success btn-sm nextBtn btn-lg pull-right"
                wire:click="secondStepSubmit_edit"
                type="button">
            {{trans('Parent_trans.Next')}}
        </button>
    @else
        <button class="btn btn-success btn-sm nextBtn btn-lg pull-right"
                type="button"
                wire:click="secondStepSubmit">
            {{trans('Parent_trans.Next')}}
        </button>
    @endif

</fieldset>
--}}


@if($currentStep != 2)
    <div style="display: none" class="row setup-content" id="step-2">
        @endif
        <div class="col-xs-12">
            <div class="col-md-12">
                <br>

                <div class="form-row">
                    <div class="col">
                        <label for="title">{{trans('Parent_trans.Name_Mother')}}</label>
                        <input type="text" wire:model="name_mother" class="form-control">
                        @error('name_mother')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="col">
                        <label for="title">{{trans('Parent_trans.Name_Mother_en')}}</label>
                        <input type="text" wire:model="name_mother_en" class="form-control">
                        @error('name_mother_en')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                </div>

                <div class="form-row">
                    <div class="col-md-3">
                        <label for="title">{{trans('Parent_trans.Job_Mother')}}</label>
                        <input type="text" wire:model="job_mother" class="form-control">
                        @error('job_mother')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="col-md-3">
                        <label for="title">{{trans('Parent_trans.Job_Mother_en')}}</label>
                        <input type="text" wire:model="job_mother_en" class="form-control">
                        @error('job_mother_en')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="col">
                        <label for="title">{{trans('Parent_trans.National_ID_Mother')}}</label>
                        <input type="text" wire:model="national_id_mother" class="form-control">
                        @error('national_id_mother')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="col">
                        <label for="title">{{trans('Parent_trans.Passport_ID_Mother')}}</label>
                        <input type="text" wire:model="passport_id_mother" class="form-control">
                        @error('passport_id_mother')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="col">
                        <label for="title">{{trans('Parent_trans.Phone_Mother')}}</label>
                        <input type="text" wire:model="phone_mother" class="form-control">
                        @error('phone_mother')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>

                </div>


                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">{{trans('Parent_trans.Nationality_Father_id')}}</label>
                        <select class="custom-select my-1 mr-sm-2" wire:model="nationality_mother_id">
                            <option selected>{{trans('Parent_trans.Choose')}}...</option>
                            @foreach($nationalities as $national)
                                <option value="{{$national->id}}">{{$national->name}}</option>
                            @endforeach
                        </select>
                        @error('nationality_mother_id')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group col">
                        <label for="inputState">{{trans('Parent_trans.Blood_Type_Father_id')}}</label>
                        <select class="custom-select my-1 mr-sm-2" wire:model="blood_type_mother_id">
                            <option selected>{{trans('Parent_trans.Choose')}}...</option>
                            @foreach($bloodtypes as $bloodtype)
                                <option value="{{$bloodtype->id}}">{{$bloodtype->name}}</option>
                            @endforeach
                        </select>
                        @error('blood_type_mother_id')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group col">
                        <label for="inputZip">{{trans('Parent_trans.Religion_Father_id')}}</label>
                        <select class="custom-select my-1 mr-sm-2" wire:model="religion_mother_id">
                            <option selected>{{trans('Parent_trans.Choose')}}...</option>
                            @foreach($religions as $religion)
                                <option value="{{$religion->id}}">{{$religion->name}}</option>
                            @endforeach
                        </select>
                        @error('religion_mother_id')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                </div>

                <div class="form-group">
                    <label for="exampleFormControlTextarea1">{{trans('Parent_trans.Address_Mother')}}</label>
                    <textarea class="form-control" wire:model="address_mother" id="exampleFormControlTextarea1"
                              rows="4"></textarea>
                    @error('address_mother')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                </div>

                <button class="btn btn-danger btn-sm nextBtn btn-lg pull-right" type="button" wire:click="back(1)">
                    {{trans('Parent_trans.Back')}}
                </button>
                &nbsp; &nbsp; &nbsp; &nbsp;

                @if($updateMode)
                    <button class="btn btn-success btn-sm nextBtn btn-lg pull-right"
                            wire:click="secondStepSubmit_edit"
                            type="button">
                        {{trans('Parent_trans.Next')}}
                    </button>
                @else
                    <button class="btn btn-success btn-sm nextBtn btn-lg pull-right"
                            type="button"
                            wire:click="secondStepSubmit">
                        {{trans('Parent_trans.Next')}}
                    </button>
                @endif

            </div>
        </div>
    </div>






