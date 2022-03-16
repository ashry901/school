


@if($currentStep != 2)
    <div style="display: none" class="row setup-content" id="step-2">
        @endif
        <div class="col-xs-12">
            <div class="col-md-12">

                <div class="row">
                    <div class="col-md-6">
                        <label for="title">
                            {{trans('cpanel/parent.Name_Mother')}}
                        </label>

                        <input type="text" wire:model="name_mother" class="form-control">

                        @error('name_mother')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="col-md-6">
                        <label for="title">
                            {{trans('cpanel/parent.Name_Mother_en')}}
                        </label>

                        <input type="text" wire:model="name_mother_en" class="form-control">

                        @error('name_mother_en')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3">
                        <label for="title">
                            {{trans('cpanel/parent.Job_Mother')}}
                        </label>

                        <input type="text" wire:model="job_mother" class="form-control">

                        @error('job_mother')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="col-md-3">
                        <label for="title">
                            {{trans('cpanel/parent.Job_Mother_en')}}
                        </label>

                        <input type="text" wire:model="job_mother_en" class="form-control">

                        @error('job_mother_en')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="col-md-3">
                        <label for="title">
                            {{trans('cpanel/parent.National_ID_Mother')}}
                        </label>

                        <input type="text" wire:model="national_id_mother" class="form-control">

                        @error('national_id_mother')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="col-md-3">
                        <label for="title">
                            {{trans('cpanel/parent.Passport_ID_Mother')}}
                        </label>

                        <input type="text" wire:model="passport_id_mother" class="form-control">

                        @error('passport_id_mother')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>


                </div>

                <div class="row">
                    <div class="col-md-3">
                        <label for="title">
                            {{trans('cpanel/parent.Phone_Mother')}}
                        </label>

                        <input type="text" wire:model="phone_mother" class="form-control">

                        @error('phone_mother')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="col-md-3">
                        <label for="inputCity">
                            {{trans('cpanel/parent.Nationality_Father_id')}}
                        </label>

                        <select class="custom-select my-1 mr-sm-2"
                                wire:model="nationality_mother_id">
                            <option selected>
                                {{trans('cpanel/parent.Choose')}}...
                            </option>
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

                    <div class="col-md-3">
                        <label for="inputState">
                            {{trans('cpanel/parent.Blood_Type_Father_id')}}
                        </label>

                        <select class="custom-select my-1 mr-sm-2"
                                wire:model="blood_type_mother_id">
                            <option selected>
                                {{trans('cpanel/parent.Choose')}}...
                            </option>
                            @foreach($bloodtypes as $bloodtype)
                                <option value="{{$bloodtype->id}}">{{$bloodtype->name}}</option>
                            @endforeach
                        </select>
                        @error('blood_type_mother_id')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="col-md-3">
                        <label for="inputZip">
                            {{trans('cpanel/parent.Religion_Father_id')}}
                        </label>

                        <select class="custom-select my-1 mr-sm-2"
                                wire:model="religion_mother_id">
                            <option selected>
                                {{trans('cpanel/parent.Choose')}}...
                            </option>
                            @foreach($religions as $religion)
                                <option value="{{$religion->id}}">{{$religion->name}}</option>
                            @endforeach
                        </select>

                        @error('religion_mother_id')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <label for="exampleFormControlTextarea1">
                            {{trans('cpanel/parent.Address_Mother')}}
                        </label>

                        <textarea class="form-control"
                                  wire:model="address_mother"
                                  id="exampleFormControlTextarea1"
                                  rows="4"></textarea>
                    </div>
                    @error('address_mother')
                        <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                </div>
                <br><br>
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="btn btn-primary" wire:click="back(1)">
                            {{trans('cpanel/parent.Back')}}
                        </button>
                        &nbsp; &nbsp; &nbsp; &nbsp;
                        @if($updateMode)
                            <button type="button" class="btn btn-success"
                                    wire:click="secondStepSubmit_edit">
                                {{trans('cpanel/parent.Next')}}
                            </button>
                        @else
                            <button type="button" class="btn btn-success"
                                    wire:click="secondStepSubmit">
                                {{trans('cpanel/parent.Next')}}
                            </button>
                        @endif

                    </div>
                </div>
            </div>
        </div>
    </div>






