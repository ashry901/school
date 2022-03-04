
{{--
<h6>Father Information</h6>
<fieldset>

    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="firstName3">
                    Father Name Arabic :
                    <span class="danger">*</span>
                </label>
                <input type="text" class="form-control " wire:model="name_father">
                @error('name_father')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>

        <div class="col-md-6">
            <div class="form-group">
                <label for="lastName3">
                    Father Name English :
                    <span class="danger">*</span>
                </label>
                <input type="text" class="form-control " wire:model="name_father_en">
                @error('name_father_en')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="emailAddress5">
                    Email Address :
                    <span class="danger">*</span>
                </label>

                <input type="email" class="form-control " wire:model="email">

                @error('email')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>

        <div class="col-md-6">
            <div class="form-group">
                <label>
                    Password :
                    <span class="danger">*</span>
                </label>

                <input type="password" wire:model="password" class="form-control ">
                @error('password')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="firstName3">
                    Father Job Arabic :
                    <span class="danger">*</span>
                </label>
                <input type="text" class="form-control " wire:model="job_father">

                @error('job_father')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>

        <div class="col-md-6">
            <div class="form-group">
                <label for="lastName3">
                    Father Job English :
                    <span class="danger">*</span>
                </label>
                <input type="text" class="form-control " wire:model="job_father_en">
                @error('job_father_en')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>
    </div>

    <div class="row">

        <div class="col-md-4">
            <div class="form-group">
                <label for="firstName3">
                    National ID Father :
                    <span class="danger">*</span>
                </label>
                <input type="text" class="form-control " wire:model="national_id_father">
                @error('national_id_father')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>

        <div class="col-md-4">
            <div class="form-group">
                <label for="lastName3">
                    Passport ID Father :
                    <span class="danger">*</span>
                </label>
                <input type="text" class="form-control " wire:model="passport_id_father">
                @error('passport_id_father')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>

        <div class="col-md-4">
            <div class="form-group">
                <label for="lastName3">
                    Phone Father :
                    <span class="danger">*</span>
                </label>
                <input type="text" class="form-control " wire:model="phone_father">
                @error('phone_father')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>

    </div>

    <div class="row">
        <div class="col-md-4">
            <div class="form-group">
                <label for="location">
                    Nationality Father id :
                    <span class="danger">*</span>
                </label>
                <select class="custom-select form-control "
                        wire:model="nationality_father_id">

                    <option value="">{{trans('cpanel.parent.Choose')}}</option>
                    @foreach($nationalities as $national)
                        <option value="{{$national->id}}">
                            {{$national->name}}
                        </option>
                    @endforeach
                </select>
                @error('nationality_father_id')
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
                        wire:model="blood_type_father_id">
                    <option value="">{{trans('cpanel.parent.Choose')}}...</option>
                    @foreach($bloodtypes as $bloodtype)
                        <option value="{{$bloodtype->id}}">
                            {{$bloodtype->name}}
                        </option>
                    @endforeach
                </select>
                @error('blood_type_father_id')
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
                        wire:model="religion_father_id">
                    <option value="">{{trans('cpanel.parent.Choose')}}...</option>
                    @foreach($religions as $religion)
                        <option value="{{$religion->id}}">
                            {{$religion->name}}
                        </option>
                    @endforeach
                </select>
                @error('religion_father_id')
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
                <input type="text" class="form-control" wire:model="address_father">
                @error('address_father')
                    <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
        </div>
    </div>

    @if($updateMode)
        <button class="btn btn-success btn-sm nextBtn btn-lg pull-right" wire:click="firstStepSubmit_edit"
                type="button">{{trans('Parent_trans.Next')}}
        </button>
    @else
        <button class="btn btn-success btn-sm nextBtn btn-lg pull-right" wire:click="firstStepSubmit"
                type="button">{{trans('Parent_trans.Next')}}
        </button>
    @endif

</fieldset>
--}}


@if($currentStep != 1)
    <div style="display: none" class="row setup-content" id="step-1">
        @endif
        <div class="col-xs-12">
            <div class="col-md-12">
                <br>
                <div class="form-row">
                    <div class="col">
                        <label for="title">{{trans('Parent_trans.Email')}}</label>
                        <input type="email" wire:model="email" class="form-control">
                        @error('email')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="col">
                        <label for="title">{{trans('Parent_trans.Password')}}</label>
                        <input type="password" wire:model="password" class="form-control" >
                        @error('password')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                </div>

                <div class="form-row">
                    <div class="col">
                        <label for="title">{{trans('Parent_trans.Name_Father')}}</label>
                        <input type="text" wire:model="name_father" class="form-control" >
                        @error('name_father')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="col">
                        <label for="title">{{trans('Parent_trans.Name_Father_en')}}</label>
                        <input type="text" wire:model="name_father_en" class="form-control" >
                        @error('name_father_en')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                </div>

                <div class="form-row">
                    <div class="col-md-3">
                        <label for="title">{{trans('Parent_trans.Job_Father')}}</label>
                        <input type="text" wire:model="job_father" class="form-control">
                        @error('job_father')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="col-md-3">
                        <label for="title">{{trans('Parent_trans.Job_Father_en')}}</label>
                        <input type="text" wire:model="job_father_en" class="form-control">
                        @error('job_father_en')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="col">
                        <label for="title">{{trans('Parent_trans.National_ID_Father')}}</label>
                        <input type="text" wire:model="national_id_father" class="form-control">
                        @error('national_id_father')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="col">
                        <label for="title">{{trans('Parent_trans.Passport_ID_Father')}}</label>
                        <input type="text" wire:model="passport_id_father" class="form-control">
                        @error('passport_id_father')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="col">
                        <label for="title">{{trans('Parent_trans.Phone_Father')}}</label>
                        <input type="text" wire:model="phone_father" class="form-control">
                        @error('phone_father')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>

                </div>


                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">{{trans('Parent_trans.Nationality_Father_id')}}</label>
                        <select class="custom-select my-1 mr-sm-2" wire:model="nationality_father_id">
                            <option selected>{{trans('Parent_trans.Choose')}}...</option>
                            @foreach($nationalities as $national)
                                <option value="{{$national->id}}">
                                    {{$national->name}}
                                </option>
                            @endforeach
                        </select>
                        @error('nationality_father_id')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group col">
                        <label for="inputState">
                            {{trans('Parent_trans.Blood_Type_Father_id')}}
                        </label>
                        <select class="custom-select my-1 mr-sm-2" wire:model="blood_type_father_id">
                            <option selected>{{trans('Parent_trans.Choose')}}...</option>
                            @foreach($bloodtypes as $bloodtype)
                                <option value="{{$bloodtype->id}}">{{$bloodtype->name}}</option>
                            @endforeach
                        </select>

                        @error('blood_type_father_id')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group col">
                        <label for="inputZip">{{trans('Parent_trans.Religion_Father_id')}}</label>
                        <select class="custom-select my-1 mr-sm-2" wire:model="religion_father_id">
                            <option selected>{{trans('Parent_trans.Choose')}}...</option>
                            @foreach($religions as $religion)
                                <option value="{{$religion->id}}">
                                    {{$religion->name}}
                                </option>
                            @endforeach
                        </select>

                        @error('religion_father_id')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                </div>


                <div class="form-group">
                    <label for="exampleFormControlTextarea1">
                        {{trans('Parent_trans.Address_Father')}}
                    </label>
                    <textarea class="form-control" wire:model="address_father" id="exampleFormControlTextarea1" rows="4"></textarea>
                    @error('address_father')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                </div>

                @if($updateMode)
                    <button class="btn btn-success btn-sm nextBtn btn-lg pull-right" wire:click="firstStepSubmit_edit"
                            type="button">{{trans('Parent_trans.Next')}}
                    </button>
                @else
                    <button class="btn btn-success btn-sm nextBtn btn-lg pull-right" wire:click="firstStepSubmit"
                            type="button">{{trans('Parent_trans.Next')}}
                    </button>
                @endif

            </div>
        </div>
    </div>


