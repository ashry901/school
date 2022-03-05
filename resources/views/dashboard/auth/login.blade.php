@extends('layouts.admin_login')
@section('title', 'admin login')

@section('content')

    <div class="card border-grey border-lighten-3 m-0">
        <div class="card-header border-0">
            <div class="card-title text-center">
                <div class="p-1">
                    <img src="{{asset('ashry/back/app-assets/images/logo/thumbspng.png')}}"
                         alt="..." width="50px">
                </div>
            </div>
            <h6 class="card-subtitle line-on-side text-muted text-center font-small-3 pt-2">
                <span>Login To Dashboard</span>
            </h6>
        </div>

        @include('dashboard.includes.alerts.errors')
        @include('dashboard.includes.alerts.success')

        <div class="card-content">
            <div class="card-body">
                <form class="form-horizontal form-simple"
                      action="{{route('admin.post.login')}}"
                      method="post" novalidate>
                    @csrf

                    <fieldset class="form-group position-relative has-icon-left mb-0">
                        <input type="text"
                               class="form-control"
                               name="email"
                               id="email"
                               value=""
                               autocomplete="off">
                        <div class="form-control-position">
                            <i class="la la-user"></i>
                        </div>
                        @error('email')
                            <span class="text-danger">{{$message}}</span>
                        @enderror
                    </fieldset>
                    <br>

                    <fieldset class="form-group position-relative has-icon-left">
                        <input type="password"
                               class="form-control"
                               name="password"
                               id="user-password">
                        <div class="form-control-position">
                            <i class="la la-key"></i>
                        </div>
                        @error('password')
                            <span class="text-danger">{{$message}}</span>
                        @enderror
                    </fieldset>

                    <button type="submit" class="btn btn-info btn-block">
                        <i class="ft-unlock"></i>
                        Login
                    </button>
                </form>
            </div>
        </div>
    </div>

@endsection
