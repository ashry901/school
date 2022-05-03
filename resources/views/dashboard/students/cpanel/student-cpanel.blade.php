@extends('layouts.admin')
@section('title', 'Dashboard students')

@section('style')
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/fonts/simple-line-icons/style.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/pages/card-statistics.css')}}">
@endsection

@section('content')



@endsection

@section('script')
    <script src="{{asset('ashry/back/app-assets/vendors/js/extensions/jquery.knob.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/charts/raphael-min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/charts/morris.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/charts/jquery.sparkline.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/js/scripts/cards/card-statistics.js')}}"></script>
@endsection
