@extends('layouts.admin')
@section('title', 'edit-questions')

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
        <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
            <button class="btn btn-info round dropdown-toggle dropdown-menu-right box-shadow-2 px-2 mb-1" id="btnGroupDrop1" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="ft-settings icon-left"></i> Settings</button>
            <div class="dropdown-menu" aria-labelledby="btnGroupDrop1"><a class="dropdown-item" href="card-bootstrap.html">Cards</a><a class="dropdown-item" href="component-buttons-extended.html">Buttons</a></div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12 mb-30">
        <div class="card card-statistics h-100">
            <div class="card-body">

                @if(session()->has('error'))
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <strong>{{ session()->get('error') }}</strong>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                @endif
                <div class="col-xs-12">
                    <div class="col-md-12">
                        <br>
                        <form action="{{ route('questions.update','test') }}" method="post" autocomplete="off">
                            @method('PUT')
                            @csrf
                            <div class="form-row">

                                <div class="col">
                                    <label for="title">?????? ????????????</label>
                                    <input type="text" name="title" id="input-name"
                                           class="form-control form-control-alternative" value="{{$question->title}}">
                                    <input type="hidden" name="id" value="{{$question->id}}">
                                </div>
                            </div>
                            <br>

                            <div class="form-row">
                                <div class="col">
                                    <label for="title">????????????????</label>
                                    <textarea name="answers" class="form-control" id="exampleFormControlTextarea1" rows="4">{{$question->answers}}</textarea>
                                </div>
                            </div>
                            <br>

                            <div class="form-row">
                                <div class="col">
                                    <label for="title">?????????????? ??????????????</label>
                                    <input type="text" name="right_answer" id="input-name" class="form-control form-control-alternative" value="{{$question->right_answer}}">
                                </div>
                            </div>
                            <br>

                            <div class="form-row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="Grade_id">?????? ???????????????? : <span
                                                class="text-danger">*</span></label>
                                        <select class="custom-select mr-sm-2" name="quizze_id">
                                            <option selected disabled>?????? ?????? ????????????????...</option>
                                            @foreach($quizzes as $quizze)
                                                <option value="{{ $quizze->id }}" {{$quizze->id == $question->quizze_id ? 'selected':'' }} >{{ $quizze->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="Grade_id">???????????? : <span class="text-danger">*</span></label>
                                        <select class="custom-select mr-sm-2" name="score">
                                            <option selected disabled> ?????? ????????????...</option>
                                            <option value="5" {{$question->score == 5 ? 'selected':''}}>5</option>
                                            <option value="10" {{$question->score == 10 ? 'selected':''}}>10</option>
                                            <option value="15" {{$question->score == 15 ? 'selected':''}}>15</option>
                                            <option value="20" {{$question->score == 20 ? 'selected':''}}>20</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <button class="btn btn-success btn-sm nextBtn btn-lg pull-right" type="submit">?????? ????????????????</button>
                        </form>
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
