@extends('layouts.admin')
@section('title', 'Dashboard')

@section('style')
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/fonts/simple-line-icons/style.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/pages/card-statistics.css')}}">
@endsection

@section('content')

<div class="content-body">

    <section id="minimal-statistics">
        <div class="row">
            <div class="col-12 mt-3 mb-1">
                <h4 class="text-uppercase">
                    {{trans('cpanel/main.Main Dashboard')}}
                </h4>
            </div>
        </div>
        <div class="row">

            <div class="col-xl-3 col-md-6 col-12">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <div class="media d-flex">
                                <div class="align-self-center">
                                    <i class="icon-pencil info font-large-2 float-left"></i>
                                </div>
                                <div class="media-body text-right">
                                    <h3>{{\App\Models\Student::count()}}</h3>

                                    <a href="{{route('Students.index')}}" target="_blank">
                                        <span class="text-danger">
                                            {{trans('cpanel/main.Students')}}
                                        </span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-md-6 col-12">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <div class="media d-flex">
                                <div class="align-self-center">
                                    <i class="icon-speech warning font-large-2 float-left"></i>
                                </div>
                                <div class="media-body text-right">
                                    <h3>{{\App\Models\Teacher::count()}}</h3>
                                    <a href="{{route('teachers.index')}}"
                                       target="_blank">
                                        <span class="text-danger">
                                            {{trans('cpanel/main.Teachers')}}
                                        </span>
                                    </a>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-md-6 col-12">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <div class="media d-flex">
                                <div class="align-self-center">
                                    <i class="icon-graph success font-large-2 float-left"></i>
                                </div>
                                <div class="media-body text-right">
                                    <h3>{{\App\Models\Guardian::count()}}</h3>
                                    <a href="{{route('add_parent')}}" target="_blank">
                                        <span class="text-danger">
                                            {{trans('cpanel/main.Guardian')}}
                                        </span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-md-6 col-12">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <div class="media d-flex">
                                <div class="align-self-center">
                                    <i class="icon-pointer danger font-large-2 float-left"></i>
                                </div>
                                <div class="media-body text-right">
                                    <h3>{{\App\Models\Section::count()}}</h3>
                                    <a href="{{route('sections.index')}}" target="_blank">
                                        <span class="text-danger">
                                            {{trans('cpanel/main.Sections')}}
                                        </span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xl-3 col-md-6 col-12">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <div class="media d-flex">
                                <div class="media-body text-left">
                                    <h3 class="danger">278</h3>
                                    <span>New Projects</span>
                                </div>
                                <div class="align-self-center">
                                    <i class="icon-rocket danger font-large-2 float-right"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-md-6 col-12">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <div class="media d-flex">
                                <div class="media-body text-left">
                                    <h3 class="success">156</h3>
                                    <span>New Clients</span>
                                </div>
                                <div class="align-self-center">
                                    <i class="icon-user success font-large-2 float-right"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-md-6 col-12">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <div class="media d-flex">
                                <div class="media-body text-left">
                                    <h3 class="warning">64.89 %</h3>
                                    <span>Conversion Rate</span>
                                </div>
                                <div class="align-self-center">
                                    <i class="icon-pie-chart warning font-large-2 float-right"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-md-6 col-12">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <div class="media d-flex">
                                <div class="media-body text-left">
                                    <h3 class="info">423</h3>
                                    <span>Support Tickets</span>
                                </div>
                                <div class="align-self-center">
                                    <i class="icon-support info font-large-2 float-right"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xl-3 col-md-6 col-12">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <div class="media d-flex">
                                <div class="media-body text-left">
                                    <h3 class="info">278</h3>
                                    <span>New Posts</span>
                                </div>
                                <div class="align-self-center">
                                    <i class="icon-book-open info font-large-2 float-right"></i>
                                </div>
                            </div>
                            <div class="progress mt-1 mb-0" style="height: 7px;">
                                <div class="progress-bar bg-info" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-md-6 col-12">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <div class="media d-flex">
                                <div class="media-body text-left">
                                    <h3 class="warning">156</h3>
                                    <span>New Comments</span>
                                </div>
                                <div class="align-self-center">
                                    <i class="icon-bubbles warning font-large-2 float-right"></i>
                                </div>
                            </div>
                            <div class="progress mt-1 mb-0" style="height: 7px;">
                                <div class="progress-bar bg-warning" role="progressbar" style="width: 35%" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-md-6 col-12">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <div class="media d-flex">
                                <div class="media-body text-left">
                                    <h3 class="success">64.89 %</h3>
                                    <span>Bounce Rate</span>
                                </div>
                                <div class="align-self-center">
                                    <i class="icon-cup success font-large-2 float-right"></i>
                                </div>
                            </div>
                            <div class="progress mt-1 mb-0" style="height: 7px;">
                                <div class="progress-bar bg-success" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-md-6 col-12">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <div class="media d-flex">
                                <div class="media-body text-left">
                                    <h3 class="danger">423</h3>
                                    <span>Total Visits</span>
                                </div>
                                <div class="align-self-center">
                                    <i class="icon-direction danger font-large-2 float-right"></i>
                                </div>
                            </div>
                            <div class="progress mt-1 mb-0" style="height: 7px;">
                                <div class="progress-bar bg-danger" role="progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>

<div class="content-body">
    <section id="basic-tabs-components">
        <div class="row match-height">

            <div class="col-xl-12 col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">
                            {{trans('cpanel/main.The Last Operations On The System')}}
                        </h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body">

                            <ul class="nav nav-tabs nav-top-border no-hover-bg">
                                <li class="nav-item">
                                    <a class="nav-link active" id="base-tab11"
                                       data-toggle="tab" aria-controls="tab11"
                                       href="#tab11" aria-expanded="true">
                                        {{trans('cpanel/main.Students')}}
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" id="base-tab12"
                                       data-toggle="tab" aria-controls="tab12"
                                       href="#tab12" aria-expanded="false">
                                        {{trans('cpanel/main.Teachers')}}
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" id="base-tab13"
                                       data-toggle="tab" aria-controls="tab13"
                                       href="#tab13" aria-expanded="false">
                                        {{trans('cpanel/main.Guardian')}}
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" id="base-tab14"
                                       data-toggle="tab" aria-controls="tab14"
                                       href="#tab14" aria-expanded="false">
                                        {{trans('cpanel/main.Invoices')}}
                                    </a>
                                </li>

                            </ul>

                            <div class="tab-content px-1 pt-1">

                                {{--students Table--}}
                                <div role="tabpanel" class="tab-pane active" id="tab11" aria-expanded="true" aria-labelledby="base-tab11">
                                    <div class="table-responsive">
                                        <table style="text-align: center" class="table center-aligned-table table-hover mb-0">
                                            <thead>
                                            <tr  class="table-info text-danger">
                                                <th>#</th>
                                                <th>اسم الطالب</th>
                                                <th>البريد الالكتروني</th>
                                                <th>النوع</th>
                                                <th>المرحلة الدراسية</th>
                                                <th>الصف الدراسي</th>
                                                <th>القسم</th>
                                                <th>تاريخ الاضافة</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            @forelse(\App\Models\Student::latest()->take(5)->get() as $student)
                                                <tr>
                                                    <td>{{$loop->iteration}}</td>
                                                    <td>{{$student->name}}</td>
                                                    <td>{{$student->email}}</td>
                                                    <td>{{$student->gender->name}}</td>
                                                    <td>{{$student->grade->name}}</td>
                                                    <td>{{$student->classroom->name_class}}</td>
                                                    <td>{{$student->section->name_section}}</td>
                                                    <td class="text-success">{{$student->created_at}}</td>
                                                    @empty
                                                        <td class="alert-danger" colspan="8">لاتوجد بيانات</td>
                                                </tr>
                                            @endforelse
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                {{--teachers Table--}}
                                <div class="tab-pane" id="tab12" aria-labelledby="base-tab12">
                                    <div class="table-responsive">
                                        <table style="text-align: center" class="table center-aligned-table table-hover mb-0">
                                            <thead>
                                            <tr  class="table-info text-danger">
                                                <th>#</th>
                                                <th>اسم المعلم</th>
                                                <th>النوع</th>
                                                <th>تاريخ التعين</th>
                                                <th>التخصص</th>
                                                <th>تاريخ الاضافة</th>
                                            </tr>
                                            </thead>

                                            @forelse(\App\Models\Teacher::latest()->take(5)->get() as $teacher)
                                                <tbody>
                                                <tr>
                                                    <td>{{$loop->iteration}}</td>
                                                    <td>{{$teacher->name}}</td>
                                                    <td>{{$teacher->genders->name}}</td>
                                                    <td>{{$teacher->joining_date}}</td>
                                                    <td>{{$teacher->specializations->name}}</td>
                                                    <td class="text-success">{{$teacher->created_at}}</td>
                                                    @empty
                                                        <td class="alert-danger" colspan="8">لاتوجد بيانات</td>
                                                </tr>
                                                </tbody>
                                            @endforelse
                                        </table>
                                    </div>
                                </div>

                                {{--parents Table--}}
                                <div class="tab-pane" id="tab13" aria-labelledby="base-tab13">
                                    <div class="table-responsive">
                                        <table style="text-align: center" class="table center-aligned-table table-hover mb-0">
                                            <thead>
                                            <tr  class="table-info text-danger">
                                                <th>#</th>
                                                <th>اسم ولي الامر</th>
                                                <th>البريد الالكتروني</th>
                                                <th>رقم الهوية</th>
                                                <th>رقم الهاتف</th>
                                                <th>تاريخ الاضافة</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            @forelse(\App\Models\Guardian::latest()->take(5)->get() as $parent)
                                                <tr>
                                                    <td>{{$loop->iteration}}</td>
                                                    <td>{{$parent->name_father}}</td>
                                                    <td>{{$parent->email}}</td>
                                                    <td>{{$parent->national_id_father}}</td>
                                                    <td>{{$parent->phone_father}}</td>
                                                    <td class="text-success">{{$parent->created_at}}</td>
                                                    @empty
                                                        <td class="alert-danger" colspan="8">لاتوجد بيانات</td>
                                                </tr>
                                            @endforelse
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                {{--sections Table--}}
                                <div class="tab-pane" id="tab14" aria-labelledby="base-tab14">
                                    <div class="table-responsive">
                                        <table style="text-align: center" class="table center-aligned-table table-hover mb-0">
                                            <thead>
                                            <tr class="table-info text-danger">
                                                <th>#</th>
                                                <th>تاريخ الفاتورة</th>
                                                <th>اسم الطالب</th>
                                                <th>المرحلة الدراسية</th>
                                                <th>الصف الدراسي</th>
                                                <th>القسم</th>
                                                <th>نوع الرسوم</th>
                                                <th>المبلغ</th>
                                                <th>تاريخ الاضافة</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            @forelse(\App\Models\Fee_invoice::latest()->take(10)->get() as $section)
                                                <tr>
                                                    <td>{{$loop->iteration}}</td>
                                                    <td>{{$section->invoice_date}}</td>
                                                    <td>{{$section->My_classs->Name_Class}}</td>
                                                    <td class="text-success">{{$section->created_at}}</td>
                                                </tr>
                                            @empty
                                                <tr>
                                                    <td class="alert-danger" colspan="9">لاتوجد بيانات</td>
                                                </tr>
                                            @endforelse
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



@stop

@section('script')
    <script src="{{asset('ashry/back/app-assets/vendors/js/extensions/jquery.knob.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/charts/raphael-min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/charts/morris.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/charts/jquery.sparkline.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/js/scripts/cards/card-statistics.js')}}"></script>
@endsection
