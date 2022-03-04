@extends('layouts.admin')
@section('title', 'sections')

@section('style')
    @toastr_css
@endsection

@section('content')

    <h1>Ashry</h1>

@endsection


@section('script')
    @toastr_js
    @toastr_render
@endsection
