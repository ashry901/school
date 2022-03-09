@extends('layouts.admin')
@section('title', 'students')

@section('style')
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/pages/invoice.css')}}">
    @toastr_css
@endsection

@section('content')

<div class="content-header row">

    <div class="content-header-left col-md-6 col-12 mb-2">
        <h2 class="content-header-title">
            {{trans('cpanel/students.Students')}}
        </h2>
        <div class="row breadcrumbs-top">
            <div class="breadcrumb-wrapper col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="{{route('admin.dashboard')}}">
                            {{trans('cpanel/students.Dashboard')}}
                        </a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="{{route('Students.index')}}">
                            {{trans('cpanel/students.Students')}}
                        </a>
                    </li>
                    <li class="breadcrumb-item active">
                        {{trans('cpanel/students.All Students')}}
                    </li>
                </ol>
            </div>
        </div>
    </div>

    <div class="content-header-right col-md-6 col-12">
        <div class="btn-group float-md-right" role="group"
             aria-label="Button group with nested dropdown">
            <button class="btn btn-info round dropdown-toggle dropdown-menu-right box-shadow-2 px-2 mb-1"
                    id="btnGroupDrop1" type="button" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                <i class="ft-list icon-left"></i>
                {{trans('cpanel/sidebar.Students')}}
            </button>

            <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                <a class="dropdown-item" href="{{route('Students.create')}}">
                    {{trans('cpanel/sidebar.Add Student')}}
                </a>
                <a class="dropdown-item" href="{{route('Students.index')}}">
                    {{trans('cpanel/sidebar.List Students')}}
                </a>
                <a class="dropdown-item" href="{{route('Promotion.index')}}">
                    {{trans('cpanel/sidebar.Add Promotion')}}
                </a>
                <a class="dropdown-item" href="{{route('Promotion.create')}}">
                    {{trans('cpanel/sidebar.List Promotions')}}
                </a>
                <a class="dropdown-item" href="{{route('Graduated.create')}}">
                    {{trans('cpanel/sidebar.Add Graduate')}}
                </a>
                <a class="dropdown-item" href="{{route('Graduated.index')}}">
                    {{trans('cpanel/sidebar.List Graduate')}}
                </a>
            </div>
        </div>
    </div>

</div>

<div class="content-body">
    <section id="basic-pills">
        <div class="row match-height">

            <div class="col-xl-12 col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">
                            {{trans('cpanel/students.Student Info')}}
                        </h3>
                    </div>
                    <div class="card-content">
                        <div class="card-body">

                            <ul class="nav nav-pills nav-pill-bordered">
                                <li class="nav-item">
                                    <a class="nav-link active" id="base-pill11" data-toggle="pill"
                                       href="#pill11" aria-expanded="true">
                                        {{trans('cpanel/students.Student_details')}}
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" id="base-pill12" data-toggle="pill"
                                       href="#pill12" aria-expanded="false">
                                        {{trans('cpanel/students.Attachments')}}
                                    </a>
                                </li>

                            </ul>

                            <div class="tab-content px-1 pt-1">
                                <div role="tabpanel" class="tab-pane active" id="pill11"
                                     aria-expanded="true" aria-labelledby="base-pill11">
                                    <div class="table-responsive">
                                        <table class="table table-hover">
                                            <tbody>
                                            <tr>
                                                <th scope="row">{{trans('cpanel/students.Name Ar')}}</th>
                                                <td>{{$student->getTranslation('name','ar')}}</td>
                                            </tr>

                                            <tr>
                                                <th style="width: 10%">{{trans('cpanel/students.Name En')}}</th>
                                                <td>{{$student->getTranslation('name','en')}}</td>
                                            </tr>

                                            <tr>
                                                <th scope="row">{{trans('cpanel/students.email')}}</th>
                                                <td>{{$student->email}}</td>
                                            </tr>

                                            <tr>
                                                <th style="width: 10%">{{trans('cpanel/students.Date Of Birth')}}</th>
                                                <td>{{$student->date_birth}}</td>
                                            </tr>

                                            <tr>
                                                <th scope="row">{{trans('cpanel/students.gender')}}</th>
                                                <td>{{$student->gender->name}}</td>
                                            </tr>

                                            <tr>
                                                <th scope="row">{{trans('cpanel/students.Nationality')}}</th>
                                                <td>{{$student->nationality->name}}</td>
                                            </tr>

                                            <tr>
                                                <th scope="row">{{trans('cpanel/students.Grade')}}</th>
                                                <td>{{ $student->grade->name }}</td>
                                            </tr>

                                            <tr>
                                                <th scope="row">{{trans('cpanel/students.Classroom')}}</th>
                                                <td>{{$student->classroom->name_class}}</td>
                                            </tr>

                                            <tr>
                                                <th scope="row">{{trans('cpanel/students.section')}}</th>
                                                <td>{{$student->section->name_section}}</td>
                                            </tr>

                                            <tr>
                                                <th scope="row">{{trans('cpanel/students.parent')}}</th>
                                                <td>{{ $student->myparent->name_father}}</td>
                                            </tr>
                                            {{--
                                            <tr>
                                                <th scope="row">{{trans('cpanel/students.Blood Type')}}</th>
                                                <td>{{ $student->name_blod}}</td>
                                            </tr>
                                            --}}
                                            <tr>
                                                <th scope="row">{{trans('cpanel/students.Academic Year')}}</th>
                                                <td>{{ $student->academic_year }}</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <div class="tab-pane" id="pill12" aria-labelledby="base-pill12">
                                    <hr>
                                    <form class="form" method="post" action="{{route('Upload_attachment')}}"
                                          enctype="multipart/form-data">
                                        @csrf
                                        <div class="form-body">

                                            <div class="form-group">
                                                <label>
                                                    {{trans('cpanel/students.Attachments')}}
                                                </label>

                                                <label class="file center-block">
                                                    {{--  <input type="file" id="file"> --}}
                                                    <input type="file" accept="image/*" name="photos[]" multiple required>
                                                    <input type="hidden" name="student_name" value="{{$student->name}}">
                                                    <input type="hidden" name="student_id" value="{{$student->id}}">
                                                    <span class="file-custom"></span>
                                                </label>
                                            </div>
                                        </div>

                                        <div class="form-actions">
                                            <button type="submit" class="btn btn-primary">
                                                <i class="la la-check-square-o"></i>
                                                {{trans('cpanel/students.Submit')}}
                                            </button>
                                        </div>
                                    </form>

                                    <div class="table-responsive">
                                        <table class="table table-hover">
                                            <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>{{trans('cpanel/students.filename')}}</th>
                                                <th>{{trans('cpanel/students.created_at')}}</th>
                                                <th width="10%">{{trans('cpanel/students.Image')}}</th>
                                                <th>{{trans('cpanel/students.Processes')}}</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            @foreach($student->images as $attachment)
                                                <tr>
                                                    <td>{{$loop->iteration}}</td>
                                                    <td>{{$attachment->filename}}</td>
                                                    <td>{{$attachment->created_at->diffForHumans()}}</td>
                                                    <td>
                                                        <img src="{{asset('attachments/students/' . $attachment->filename)}}"
                                                             alt="...">
                                                    </td>
                                                    <td colspan="2">
                                                        <a class="btn btn-outline-info btn-sm"
                                                           href="{{url('Download_attachment')}}/{{ $attachment->imageable->name }}/{{$attachment->filename}}"
                                                           role="button">
                                                            <i class="fas fa-download"></i>&nbsp;
                                                            {{trans('cpanel/students.Download')}}
                                                        </a>

                                                        <button type="button" class="btn btn-outline-danger btn-sm"
                                                                data-toggle="modal"
                                                                data-target="#Delete_img{{ $attachment->id }}"
                                                                title="{{ trans('cpanel/students.Delete') }}">
                                                            {{trans('cpanel/students.Delete')}}
                                                        </button>

                                                    </td>
                                                </tr>

                                                @include('dashboard.students.delete_img')

                                            @endforeach

                                            </tbody>
                                        </table>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
</div>

<div class="content-body">
    <section class="card">
        <div id="invoice-template" class="card-body p-4">
            <!-- Invoice Company Details -->
            <div id="invoice-company-details" class="row">
                <div class="col-sm-6 col-12 text-center text-sm-left">
                    <div class="media row">
                        <div class="col-12 col-sm-3 col-xl-2">
                            <img src="../../../app-assets/images/logo/logo-80x80.png"
                                 alt="..." class="mb-1 mb-sm-0" />
                        </div>
                        <div class="col-12 col-sm-9 col-xl-10">
                            <div class="media-body">
                                <ul class="ml-2 px-0 list-unstyled">
                                    <li class="text-bold-800">
                                        Modern Creative Studio
                                    </li>
                                    <li>4025 Oak Avenue,</li>
                                    <li>Melbourne,</li>
                                    <li>Florida 32940,</li>
                                    <li>USA</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-12 text-center text-sm-right">
                    <h2>INVOICE</h2>
                    <p class="pb-sm-3"># INV-001001</p>
                    <ul class="px-0 list-unstyled">
                        <li>Balance Due</li>
                        <li class="lead text-bold-800">$12,000.00</li>
                    </ul>
                </div>
            </div>
            <!-- Invoice Company Details -->

            <!-- Invoice Customer Details -->
            <div id="invoice-customer-details" class="row pt-2">
                <div class="col-12 text-center text-sm-left">
                    <p class="text-muted">Bill To</p>
                </div>
                <div class="col-sm-6 col-12 text-center text-sm-left">
                    <ul class="px-0 list-unstyled">
                        <li class="text-bold-800">Mr. Bret Lezama</li>
                        <li>4879 Westfall Avenue,</li>
                        <li>Albuquerque,</li>
                        <li>New Mexico-87102.</li>
                    </ul>
                </div>
                <div class="col-sm-6 col-12 text-center text-sm-right">
                    <p><span class="text-muted">Invoice Date :</span> 06/05/2019</p>
                    <p><span class="text-muted">Terms :</span> Due on Receipt</p>
                    <p><span class="text-muted">Due Date :</span> 10/05/2019</p>
                </div>
            </div>
            <!-- Invoice Customer Details -->

            <!-- Invoice Items Details -->
            <div id="invoice-items-details" class="pt-2">
                <div class="row">
                    <div class="table-responsive col-12">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Item & Description</th>
                                <th class="text-right">Rate</th>
                                <th class="text-right">Hours</th>
                                <th class="text-right">Amount</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <th>Name</th>
                                <td class="text-right">$20.00/hr</td>
                                <td class="text-right">120</td>
                                <td class="text-right">$2400.00</td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <th>Name</th>
                                <td class="text-right">$25.00/hr</td>
                                <td class="text-right">260</td>
                                <td class="text-right">$6500.00</td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <th>Name</th>
                                <td class="text-right">$20.00/hr</td>
                                <td class="text-right">300</td>
                                <td class="text-right">$6000.00</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-7 col-12 text-center text-sm-left">
                        <p class="lead">Payment Methods:</p>
                        <div class="row">
                            <div class="col-sm-8">
                                <div class="table-responsive">
                                    <table class="table table-borderless table-sm">
                                        <tbody>
                                        <tr>
                                            <td>Bank name:</td>
                                            <td class="text-right">ABC Bank, USA</td>
                                        </tr>
                                        <tr>
                                            <td>Acc name:</td>
                                            <td class="text-right">Amanda Orton</td>
                                        </tr>
                                        <tr>
                                            <td>IBAN:</td>
                                            <td class="text-right">FGS165461646546AA</td>
                                        </tr>
                                        <tr>
                                            <td>SWIFT code:</td>
                                            <td class="text-right">BTNPP34</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-5 col-12">
                        <p class="lead">Total due</p>
                        <div class="table-responsive">
                            <table class="table">
                                <tbody>
                                <tr>
                                    <td>Sub Total</td>
                                    <td class="text-right">$14,900.00</td>
                                </tr>
                                <tr>
                                    <td>TAX (12%)</td>
                                    <td class="text-right">$1,788.00</td>
                                </tr>
                                <tr>
                                    <td class="text-bold-800">Total</td>
                                    <td class="text-bold-800 text-right"> $16,688.00</td>
                                </tr>
                                <tr>
                                    <td>Payment Made</td>
                                    <td class="pink text-right">(-) $4,688.00</td>
                                </tr>
                                <tr class="bg-grey bg-lighten-4">
                                    <td class="text-bold-800">Balance Due</td>
                                    <td class="text-bold-800 text-right">$12,000.00</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="text-center">
                            <p class="mb-0 mt-1">Authorized person</p>
                            <img src="../../../app-assets/images/pages/signature-scan.png" alt="signature" class="height-100" />
                            <h6>Amanda Orton</h6>
                            <p class="text-muted">Managing Director</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Invoice Footer -->
            <div id="invoice-footer">
                <div class="row">
                    <div class="col-sm-7 col-12 text-center text-sm-left">
                        <h6>Terms & Condition</h6>
                        <p>Test pilot isn't always the healthiest business.</p>
                    </div>
                    <div class="col-sm-5 col-12 text-center">
                        <button type="button" class="btn btn-info btn-print btn-lg my-1"><i class="la la-paper-plane-o mr-50"></i>
                            Print
                            Invoice</button>
                    </div>
                </div>
            </div>
            <!-- Invoice Footer -->

        </div>
    </section>

</div>

@endsection


@section('script')
    <script src="{{asset('ashry/back/app-assets/js/scripts/pages/invoice-summary.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/js/scripts/pages/invoice-template.js')}}"></script>
    @toastr_js
    @toastr_render
@endsection
