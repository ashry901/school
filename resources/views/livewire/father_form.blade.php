
@if($currentStep != 1)
    <div style="display: none" class="row setup-content" id="step-1">
        @endif
        <div class="col-xs-12">
            <div class="col-md-12">
                <br>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="title">
                                {{trans('cpanel/parent.Email')}}
                            </label>

                            <input type="email" wire:model="email" class="form-control">
                            @error('email')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="title">
                                {{trans('cpanel/parent.Password')}}
                            </label>

                            <input type="password" wire:model="password" class="form-control" >
                            @error('password')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>

                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="title">
                                {{trans('cpanel/parent.Name_Father')}}
                            </label>

                            <input type="text" wire:model="name_father" class="form-control" >
                            @error('name_father')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="title">
                                {{trans('cpanel/parent.Name_Father_en')}}
                            </label>
                            <input type="text" wire:model="name_father_en" class="form-control" >
                            @error('name_father_en')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="title">
                                {{trans('cpanel/parent.Job_Father')}}
                            </label>

                            <input type="text" wire:model="job_father" class="form-control">

                            @error('job_father')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="title">
                                {{trans('cpanel/parent.Job_Father_en')}}
                            </label>

                            <input type="text" wire:model="job_father_en" class="form-control">
                            @error('job_father_en')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="title">
                                {{trans('cpanel/parent.National_ID_Father')}}
                            </label>

                            <input type="text" wire:model="national_id_father"
                                   class="form-control">

                            @error('national_id_father')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="title">
                                {{trans('cpanel/parent.Passport_ID_Father')}}
                            </label>

                            <input type="text" wire:model="passport_id_father" class="form-control">

                            @error('passport_id_father')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="title">
                                {{trans('cpanel/parent.Phone_Father')}}
                            </label>

                            <input type="text" wire:model="phone_father" class="form-control">
                            @error('phone_father')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="inputCity">
                                {{trans('cpanel/parent.Nationality_Father_id')}}
                            </label>

                            <select class="custom-select form-control"
                                    wire:model="nationality_father_id">
                                <option selected>
                                    {{trans('cpanel/parent.Choose')}}...
                                </option>

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

                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="inputState">
                                {{trans('cpanel/parent.Blood_Type_Father_id')}}
                            </label>
                            <select class="custom-select form-control"
                                    wire:model="blood_type_father_id">
                                <option selected>
                                    {{trans('cpanel/parent.Choose')}}...
                                </option>

                                @foreach($bloodtypes as $bloodtype)
                                    <option value="{{$bloodtype->id}}">{{$bloodtype->name}}</option>
                                @endforeach
                            </select>
                            @error('blood_type_father_id')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="inputZip">
                                {{trans('cpanel/parent.Religion_Father_id')}}
                            </label>
                            <select class="custom-select form-control"
                                    wire:model="religion_father_id">
                                <option selected>
                                    {{trans('cpanel/parent.Choose')}}...
                                </option>

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
                            <label for="exampleFormControlTextarea1">
                                {{trans('cpanel/parent.Address_Father')}}
                            </label>

                            <textarea class="form-control" wire:model="address_father"
                                      id="exampleFormControlTextarea1" rows="4">
                            </textarea>
                        </div>
                        @error('address_father')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                </div>

                <div class="form-actions">
                    @if($updateMode)
                        <button type="button" class="btn btn-success"
                                wire:click="firstStepSubmit_edit">
                            {{trans('cpanel/parent.Next')}}
                        </button>
                    @else
                        <button type="button" class="btn btn-success"
                                wire:click="firstStepSubmit">
                            {{trans('cpanel/parent.Next')}}
                        </button>
                    @endif
                </div>

            </div>
        </div>
    </div>


