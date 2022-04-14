@extends('layouts.admin')
@section('title', 'sections')

@section('style')
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/pickers/daterange/daterangepicker.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/css/plugins/forms/wizard.css')}}">

    <link rel="stylesheet" type="text/css" href="{{asset('ashry/back/app-assets/vendors/css/tables/datatable/datatables.min.css')}}">

    @toastr_css
@endsection

@section('content')

<div class="content-header row">
    <div class="content-header-left col-md-6 col-12 mb-2">
        <h3 class="content-header-title">Circle Style</h3>
        <div class="row breadcrumbs-top">
            <div class="breadcrumb-wrapper col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a>
                    </li>
                    <li class="breadcrumb-item"><a href="#">Page</a>
                    </li>
                    <li class="breadcrumb-item active">Form Wizard Circle Steps
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

<div class="content-body">
    <section id="configuration">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Zero configuration</h4>
                        <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                        <div class="heading-elements">
                            <ul class="list-inline mb-0">
                                <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                                <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                                <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                                <li><a data-action="close"><i class="ft-x"></i></a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="card-content collapse show">
                        <div class="card-body card-dashboard">
                            <p class="card-text">DataTables has most features </p>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered zero-configuration">
                                    <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Position</th>
                                        <th>Office</th>
                                        <th>Age</th>
                                        <th>Start date</th>
                                        <th>Salary</th>
                                    </tr>
                                    </thead>

                                    <tbody>

                                    <tr>
                                        <td>Bruno Nash</td>
                                        <td>Software Engineer</td>
                                        <td>London</td>
                                        <td>38</td>
                                        <td>2011/05/03</td>
                                        <td>$163,500</td>
                                    </tr>

                                    </tbody>

                                    <tfoot>
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Office</th>
                                            <th>Age</th>
                                            <th>Start date</th>
                                            <th>Salary</th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<div class="content-body">
    <!-- Form wizard with number tabs section start -->
    <section id="number-tabs">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Form wizard with number tabs</h4>
                        <a class="heading-elements-toggle"><i class="la la-ellipsis-h font-medium-3"></i></a>
                        <div class="heading-elements">
                            <ul class="list-inline mb-0">
                                <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                                <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                                <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                                <li><a data-action="close"><i class="ft-x"></i></a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="card-content collapse show">
                        <div class="card-body">
                            <form action="#" class="number-tab-steps wizard-circle">

                                <!-- Step 1 -->
                                <h6>Step 1</h6>
                                <fieldset>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="firstName1">First Name :</label>
                                                <input type="text" class="form-control" id="firstName1">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="lastName1">Last Name :</label>
                                                <input type="text" class="form-control" id="lastName1">
                                            </div>
                                        </div>
                                    </div>



                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="emailAddress1">Email Address :</label>
                                                <input type="email" class="form-control" id="emailAddress1">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="location1">Select City :</label>
                                                <select class="custom-select form-control" id="location1" name="location">
                                                    <option value="">Select City</option>
                                                    <option value="Amsterdam">Amsterdam</option>
                                                    <option value="Berlin">Berlin</option>
                                                    <option value="Frankfurt">Frankfurt</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="phoneNumber1">Phone Number :</label>
                                                <input type="tel" class="form-control" id="phoneNumber1">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="date1">Date of Birth :</label>
                                                <input type="date" class="form-control" id="date1">
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                <!-- Step 2 -->
                                <h6>Step 2</h6>
                                <fieldset>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="proposalTitle1">Proposal Title :</label>
                                                <input type="text" class="form-control" id="proposalTitle1">
                                            </div>
                                            <div class="form-group">
                                                <label for="emailAddress2">Email Address :</label>
                                                <input type="email" class="form-control" id="emailAddress2">
                                            </div>
                                            <div class="form-group">
                                                <label for="videoUrl1">Video URL :</label>
                                                <input type="url" class="form-control" id="videoUrl1">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="jobTitle1">Job Title :</label>
                                                <input type="text" class="form-control" id="jobTitle1">
                                            </div>
                                            <div class="form-group">
                                                <label for="shortDescription1">Short Description :</label>
                                                <textarea name="shortDescription" id="shortDescription1" rows="4" class="form-control"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                <!-- Step 3 -->
                                <h6>Step 3</h6>
                                <fieldset>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="eventName1">Event Name :</label>
                                                <input type="text" class="form-control" id="eventName1">
                                            </div>
                                            <div class="form-group">
                                                <label for="eventType1">Event Type :</label>
                                                <select class="custom-select form-control" id="eventType1" data-placeholder="Type to search cities" name="eventType1">
                                                    <option value="Banquet">Banquet</option>
                                                    <option value="Fund Raiser">Fund Raiser</option>
                                                    <option value="Dinner Party">Dinner Party</option>
                                                    <option value="Wedding">Wedding</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="eventLocation1">Event Location :</label>
                                                <select class="custom-select form-control" id="eventLocation1" name="location">
                                                    <option value="">Select City</option>
                                                    <option value="Amsterdam">Amsterdam</option>
                                                    <option value="Berlin">Berlin</option>
                                                    <option value="Frankfurt">Frankfurt</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="jobTitle2">Event Date - Time :</label>
                                                <div class='input-group'>
                                                    <input type='text' class="form-control datetime" id="jobTitle2" />
                                                    <span class="input-group-addon">
                                                                <span class="ft-calendar"></span>
                                                            </span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="eventStatus1">Event Status :</label>
                                                <select class="custom-select form-control" id="eventStatus1" name="eventStatus">
                                                    <option value="Planning">Planning</option>
                                                    <option value="In Progress">In Progress</option>
                                                    <option value="Finished">Finished</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Requirements :</label>
                                                <div class="c-inputs-stacked">
                                                    <div class="d-inline-block custom-control custom-checkbox">
                                                        <input type="checkbox" name="status1" class="custom-control-input" id="staffing1">
                                                        <label class="custom-control-label" for="staffing1">Staffing</label>
                                                    </div>
                                                    <div class="d-inline-block custom-control custom-checkbox">
                                                        <input type="checkbox" name="status1" class="custom-control-input" id="catering1">
                                                        <label class="custom-control-label" for="catering1">Catering</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                <!-- Step 4 -->
                                <h6>Step 4</h6>
                                <fieldset>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="meetingName1">Name of Meeting :</label>
                                                <input type="text" class="form-control" id="meetingName1">
                                            </div>

                                            <div class="form-group">
                                                <label for="meetingLocation1">Location :</label>
                                                <input type="text" class="form-control" id="meetingLocation1">
                                            </div>

                                            <div class="form-group">
                                                <label for="participants1">Names of Participants</label>
                                                <textarea name="participants" id="participants1" rows="4" class="form-control"></textarea>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="decisions1">Decisions Reached</label>
                                                <textarea name="decisions" id="decisions1" rows="4" class="form-control"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label>Agenda Items :</label>
                                                <div class="c-inputs-stacked">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="agenda1" class="custom-control-input" id="item11">
                                                        <label class="custom-control-label" for="item11">1st item</label>
                                                    </div>
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="agenda1" class="custom-control-input" id="item12">
                                                        <label class="custom-control-label" for="item12">2nd item</label>
                                                    </div>
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="agenda1" class="custom-control-input" id="item13">
                                                        <label class="custom-control-label" for="item13">3rd item</label>
                                                    </div>
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="agenda1" class="custom-control-input" id="item14">
                                                        <label class="custom-control-label" for="item14">4th item</label>
                                                    </div>
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="agenda1" class="custom-control-input" id="item15">
                                                        <label class="custom-control-label" for="item15">5th item</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Form wizard with number tabs section end -->

    <!-- Form wizard with icon tabs section start -->
    <section id="icon-tabs">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Form wizard with icon tabs</h4>
                        <a class="heading-elements-toggle"><i class="la la-ellipsis-h font-medium-3"></i></a>
                        <div class="heading-elements">
                            <ul class="list-inline mb-0">
                                <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                                <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                                <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                                <li><a data-action="close"><i class="ft-x"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="card-content collapse show">
                        <div class="card-body">
                            <form action="#" class="icons-tab-steps wizard-circle">

                                <!-- Step 1 -->
                                <h6><i class="step-icon la la-home"></i> Step 1</h6>
                                <fieldset>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="firstName2">First Name :</label>
                                                <input type="text" class="form-control" id="firstName2">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="lastName2">Last Name :</label>
                                                <input type="text" class="form-control" id="lastName2">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="emailAddress3">Email Address :</label>
                                                <input type="email" class="form-control" id="emailAddress3">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="location2">Select City :</label>
                                                <select class="custom-select form-control" id="location2" name="location">
                                                    <option value="">Select City</option>
                                                    <option value="Amsterdam">Amsterdam</option>
                                                    <option value="Berlin">Berlin</option>
                                                    <option value="Frankfurt">Frankfurt</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="phoneNumber2">Phone Number :</label>
                                                <input type="tel" class="form-control" id="phoneNumber2">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="date2">Date of Birth :</label>
                                                <input type="date" class="form-control" id="date2">
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                <!-- Step 2 -->
                                <h6><i class="step-icon la la-pencil"></i>Step 2</h6>
                                <fieldset>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="proposalTitle2">Proposal Title :</label>
                                                <input type="text" class="form-control" id="proposalTitle2">
                                            </div>
                                            <div class="form-group">
                                                <label for="emailAddress4">Email Address :</label>
                                                <input type="email" class="form-control" id="emailAddress4">
                                            </div>
                                            <div class="form-group">
                                                <label for="videoUrl2">Video URL :</label>
                                                <input type="url" class="form-control" id="videoUrl2">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="jobTitle3">Job Title :</label>
                                                <input type="text" class="form-control" id="jobTitle3">
                                            </div>
                                            <div class="form-group">
                                                <label for="shortDescription2">Short Description :</label>
                                                <textarea name="shortDescription" id="shortDescription2" rows="4" class="form-control"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                <!-- Step 3 -->
                                <h6><i class="step-icon la la-tv"></i>Step 3</h6>
                                <fieldset>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="eventName2">Event Name :</label>
                                                <input type="text" class="form-control" id="eventName2">
                                            </div>
                                            <div class="form-group">
                                                <label for="eventType2">Event Type :</label>
                                                <select class="custom-select form-control" id="eventType2" data-placeholder="Type to search cities" name="eventType2">
                                                    <option value="Banquet">Banquet</option>
                                                    <option value="Fund Raiser">Fund Raiser</option>
                                                    <option value="Dinner Party">Dinner Party</option>
                                                    <option value="Wedding">Wedding</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="eventLocation2">Event Location :</label>
                                                <select class="custom-select form-control" id="eventLocation2" name="location">
                                                    <option value="">Select City</option>
                                                    <option value="Amsterdam">Amsterdam</option>
                                                    <option value="Berlin">Berlin</option>
                                                    <option value="Frankfurt">Frankfurt</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Event Date - Time :</label>
                                                <div class='input-group'>
                                                    <input type='text' class="form-control datetime" />
                                                    <span class="input-group-addon">
                                                                <span class="ft-calendar"></span>
                                                            </span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="eventStatus2">Event Status :</label>
                                                <select class="custom-select form-control" id="eventStatus2" name="eventStatus">
                                                    <option value="Planning">Planning</option>
                                                    <option value="In Progress">In Progress</option>
                                                    <option value="Finished">Finished</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Requirements :</label>
                                                <div class="c-inputs-stacked">
                                                    <div class="d-inline-block custom-control custom-checkbox">
                                                        <input type="checkbox" name="status2" class="custom-control-input" id="staffing2">
                                                        <label class="custom-control-label" for="staffing2">Staffing</label>
                                                    </div>
                                                    <div class="d-inline-block custom-control custom-checkbox">
                                                        <input type="checkbox" name="status2" class="custom-control-input" id="catering2">
                                                        <label class="custom-control-label" for="catering2">Catering</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                <!-- Step 4 -->
                                <h6><i class="step-icon la la-image"></i>Step 4</h6>
                                <fieldset>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="meetingName2">Name of Meeting :</label>
                                                <input type="text" class="form-control" id="meetingName2">
                                            </div>

                                            <div class="form-group">
                                                <label for="meetingLocation2">Location :</label>
                                                <input type="text" class="form-control" id="meetingLocation2">
                                            </div>

                                            <div class="form-group">
                                                <label for="participants2">Names of Participants</label>
                                                <textarea name="participants" id="participants2" rows="4" class="form-control"></textarea>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="decisions2">Decisions Reached</label>
                                                <textarea name="decisions" id="decisions2" rows="4" class="form-control"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label>Agenda Items :</label>
                                                <div class="c-inputs-stacked">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="agenda2" class="custom-control-input" id="item21">
                                                        <label class="custom-control-label" for="item21">1st item</label>
                                                    </div>
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="agenda2" class="custom-control-input" id="item22">
                                                        <label class="custom-control-label" for="item22">2nd item</label>
                                                    </div>
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="agenda2" class="custom-control-input" id="item23">
                                                        <label class="custom-control-label" for="item23">3rd item</label>
                                                    </div>
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="agenda2" class="custom-control-input" id="item24">
                                                        <label class="custom-control-label" for="item24">4th item</label>
                                                    </div>
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="agenda2" class="custom-control-input" id="item25">
                                                        <label class="custom-control-label" for="item25">5th item</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Form wizard with icon tabs section end -->

    <!-- Form wizard with step validation section start -->
    <section id="validation">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Validation Example</h4>
                        <a class="heading-elements-toggle"><i class="la la-ellipsis-h font-medium-3"></i></a>
                        <div class="heading-elements">
                            <ul class="list-inline mb-0">
                                <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                                <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                                <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                                <li><a data-action="close"><i class="ft-x"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="card-content collapse show">
                        <div class="card-body">
                            <form action="#" class="steps-validation wizard-circle">

                                <!-- Step 1 -->
                                <h6>Step 1</h6>
                                <fieldset>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="firstName3">
                                                    First Name :
                                                    <span class="danger">*</span>
                                                </label>
                                                <input type="text" class="form-control required" id="firstName3" name="firstName">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="lastName3">
                                                    Last Name :
                                                    <span class="danger">*</span>
                                                </label>
                                                <input type="text" class="form-control required" id="lastName3" name="lastName">
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
                                                <input type="email" class="form-control required" id="emailAddress5" name="emailAddress">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="location">
                                                    Select City :
                                                    <span class="danger">*</span>
                                                </label>
                                                <select class="custom-select form-control required" id="location" name="location">
                                                    <option value="">Select City</option>
                                                    <option value="Amsterdam">Amsterdam</option>
                                                    <option value="Berlin">Berlin</option>
                                                    <option value="Frankfurt">Frankfurt</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="phoneNumber3">Phone Number :</label>
                                                <input type="tel" class="form-control" id="phoneNumber3">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="date3">Date of Birth :</label>
                                                <input type="date" class="form-control" id="date3">
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                <!-- Step 2 -->
                                <h6>Step 2</h6>
                                <fieldset>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="proposalTitle3">
                                                    Proposal Title :
                                                    <span class="danger">*</span>
                                                </label>
                                                <input type="text" class="form-control required" id="proposalTitle3" name="proposalTitle">
                                            </div>
                                            <div class="form-group">
                                                <label for="emailAddress6">
                                                    Email Address :
                                                    <span class="danger">*</span>
                                                </label>
                                                <input type="email" class="form-control required" id="emailAddress6" name="emailAddress">
                                            </div>
                                            <div class="form-group">
                                                <label for="videoUrl3">Video URL :</label>
                                                <input type="url" class="form-control" id="videoUrl3" name="videoUrl">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="jobTitle5">
                                                    Job Title :
                                                    <span class="danger">*</span>
                                                </label>
                                                <input type="text" class="form-control required" id="jobTitle5" name="jobTitle">
                                            </div>
                                            <div class="form-group">
                                                <label for="shortDescription3">Short Description :</label>
                                                <textarea name="shortDescription" id="shortDescription3" rows="4" class="form-control"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                <!-- Step 3 -->
                                <h6>Step 3</h6>
                                <fieldset>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="eventName3">
                                                    Event Name :
                                                    <span class="danger">*</span>
                                                </label>
                                                <input type="text" class="form-control required" id="eventName3" name="eventName">
                                            </div>
                                            <div class="form-group">
                                                <label for="eventType3">
                                                    Event Type :
                                                    <span class="danger">*</span>
                                                </label>
                                                <select class="custom-select form-control required" id="eventType3" name="eventType">
                                                    <option value="Banquet">Banquet</option>
                                                    <option value="Fund Raiser">Fund Raiser</option>
                                                    <option value="Dinner Party">Dinner Party</option>
                                                    <option value="Wedding">Wedding</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="eventLocation3">Event Location :</label>
                                                <select class="custom-select form-control" id="eventLocation3" name="eventLocation">
                                                    <option value="">Select City</option>
                                                    <option value="Amsterdam">Amsterdam</option>
                                                    <option value="Berlin">Berlin</option>
                                                    <option value="Frankfurt">Frankfurt</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="eventDate">
                                                    Event Date - Time :
                                                    <span class="danger">*</span>
                                                </label>
                                                <div class='input-group'>
                                                    <input type='text' class="form-control datetime required" id="eventDate" name="eventDate" />
                                                    <span class="input-group-addon">
                                                                <span class="ft-calendar"></span>
                                                            </span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="eventStatus3">
                                                    Event Status :
                                                    <span class="danger">*</span>
                                                </label>
                                                <select class="custom-select form-control required" id="eventStatus3" name="eventStatus">
                                                    <option value="Planning">Planning</option>
                                                    <option value="In Progress">In Progress</option>
                                                    <option value="Finished">Finished</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Requirements :</label>
                                                <div class="c-inputs-stacked">
                                                    <div class="d-inline-block custom-control custom-checkbox">
                                                        <input type="checkbox" name="status3" class="custom-control-input" id="staffing3">
                                                        <label class="custom-control-label" for="staffing3">Staffing</label>
                                                    </div>
                                                    <div class="d-inline-block custom-control custom-checkbox">
                                                        <input type="checkbox" name="status3" class="custom-control-input" id="catering3">
                                                        <label class="custom-control-label" for="catering3">Catering</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                <!-- Step 4 -->
                                <h6>Step 4</h6>
                                <fieldset>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="meetingName3">
                                                    Name of Meeting :
                                                    <span class="danger">*</span>
                                                </label>
                                                <input type="text" class="form-control required" id="meetingName3" name="meetingName">
                                            </div>

                                            <div class="form-group">
                                                <label for="meetingLocation3">
                                                    Location :
                                                    <span class="danger">*</span>
                                                </label>
                                                <input type="text" class="form-control required" id="meetingLocation3" name="meetingLocation">
                                            </div>

                                            <div class="form-group">
                                                <label for="participants3">Names of Participants</label>
                                                <textarea name="participants" id="participants3" rows="4" class="form-control"></textarea>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="decisions3">Decisions Reached</label>
                                                <textarea name="decisions" id="decisions3" rows="4" class="form-control"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label>Agenda Items :</label>
                                                <div class="c-inputs-stacked">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="agenda3" class="custom-control-input" id="item31">
                                                        <label class="custom-control-label" for="item31">1st item</label>
                                                    </div>
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="agenda3" class="custom-control-input" id="item32">
                                                        <label class="custom-control-label" for="item32">2nd item</label>
                                                    </div>
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="agenda3" class="custom-control-input" id="item33">
                                                        <label class="custom-control-label" for="item33">3rd item</label>
                                                    </div>
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="agenda3" class="custom-control-input" id="item34">
                                                        <label class="custom-control-label" for="item34">4th item</label>
                                                    </div>
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="agenda3" class="custom-control-input" id="item35">
                                                        <label class="custom-control-label" for="item35">5th item</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Form wizard with step validation section end -->

    <!-- Form wizard with vertical tabs section start -->
    <section id="vertical-tabs">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Form wizard with vertical tabs</h4>
                        <a class="heading-elements-toggle"><i class="la la-ellipsis-h font-medium-3"></i></a>
                        <div class="heading-elements">
                            <ul class="list-inline mb-0">
                                <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                                <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                                <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                                <li><a data-action="close"><i class="ft-x"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="card-content collapse show">
                        <div class="card-body">
                            <form action="#" class="vertical-tab-steps wizard-circle">

                                <!-- Step 1 -->
                                <h6>Step 1</h6>
                                <fieldset>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="firstName4">First Name :</label>
                                                <input type="text" class="form-control" id="firstName4">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="lastName4">Last Name :</label>
                                                <input type="text" class="form-control" id="lastName4">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="emailAddress7">Email Address :</label>
                                                <input type="email" class="form-control" id="emailAddress7">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="location3">Select City :</label>
                                                <select class="custom-select form-control" id="location3" name="location">
                                                    <option value="">Select City</option>
                                                    <option value="Amsterdam">Amsterdam</option>
                                                    <option value="Berlin">Berlin</option>
                                                    <option value="Frankfurt">Frankfurt</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="phoneNumber4">Phone Number :</label>
                                                <input type="tel" class="form-control" id="phoneNumber4">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="date4">Date of Birth :</label>
                                                <input type="date" class="form-control" id="date4">
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                <!-- Step 2 -->
                                <h6>Step 2</h6>
                                <fieldset>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="proposalTitle4">Proposal Title :</label>
                                                <input type="text" class="form-control" id="proposalTitle4">
                                            </div>
                                            <div class="form-group">
                                                <label for="emailAddress8">Email Address :</label>
                                                <input type="email" class="form-control" id="emailAddress8">
                                            </div>
                                            <div class="form-group">
                                                <label for="videoUrl4">Video URL :</label>
                                                <input type="url" class="form-control" id="videoUrl4">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="jobTitle6">Job Title :</label>
                                                <input type="text" class="form-control" id="jobTitle6">
                                            </div>
                                            <div class="form-group">
                                                <label for="shortDescription4">Short Description :</label>
                                                <textarea name="shortDescription" id="shortDescription4" rows="4" class="form-control"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                <!-- Step 3 -->
                                <h6>Step 3</h6>
                                <fieldset>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="eventName4">Event Name :</label>
                                                <input type="text" class="form-control" id="eventName4">
                                            </div>
                                            <div class="form-group">
                                                <label for="eventType4">Event Type :</label>
                                                <select class="custom-select form-control" id="eventType4" data-placeholder="Type to search cities" name="eventType4">
                                                    <option value="Banquet">Banquet</option>
                                                    <option value="Fund Raiser">Fund Raiser</option>
                                                    <option value="Dinner Party">Dinner Party</option>
                                                    <option value="Wedding">Wedding</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="eventLocation4">Event Location :</label>
                                                <select class="custom-select form-control" id="eventLocation4" name="location">
                                                    <option value="">Select City</option>
                                                    <option value="Amsterdam">Amsterdam</option>
                                                    <option value="Berlin">Berlin</option>
                                                    <option value="Frankfurt">Frankfurt</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Event Date - Time :</label>
                                                <div class='input-group'>
                                                    <input type='text' class="form-control datetime" />
                                                    <span class="input-group-addon">
                                                                <span class="ft-calendar"></span>
                                                            </span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="eventStatus4">Event Status :</label>
                                                <select class="custom-select form-control" id="eventStatus4" name="eventStatus">
                                                    <option value="Planning">Planning</option>
                                                    <option value="In Progress">In Progress</option>
                                                    <option value="Finished">Finished</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Requirements :</label>
                                                <div class="c-inputs-stacked">
                                                    <div class="d-inline-block custom-control custom-checkbox">
                                                        <input type="checkbox" name="status4" class="custom-control-input" id="staffing4">
                                                        <label class="custom-control-label" for="staffing4">Staffing</label>
                                                    </div>
                                                    <div class="d-inline-block custom-control custom-checkbox">
                                                        <input type="checkbox" name="status4" class="custom-control-input" id="catering4">
                                                        <label class="custom-control-label" for="catering4">Catering</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>

                                <!-- Step 4 -->
                                <h6>Step 4</h6>
                                <fieldset>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="meetingName4">Name of Meeting :</label>
                                                <input type="text" class="form-control" id="meetingName4">
                                            </div>

                                            <div class="form-group">
                                                <label for="meetingLocation4">Location :</label>
                                                <input type="text" class="form-control" id="meetingLocation4">
                                            </div>

                                            <div class="form-group">
                                                <label for="participants4">Names of Participants</label>
                                                <textarea name="participants" id="participants4" rows="4" class="form-control"></textarea>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="decisions4">Decisions Reached</label>
                                                <textarea name="decisions" id="decisions4" rows="4" class="form-control"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label>Agenda Items :</label>
                                                <div class="c-inputs-stacked">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="agenda4" class="custom-control-input" id="item41">
                                                        <label class="custom-control-label" for="item41">1st item</label>
                                                    </div>
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="agenda4" class="custom-control-input" id="item42">
                                                        <label class="custom-control-label" for="item42">2nd item</label>
                                                    </div>
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="agenda4" class="custom-control-input" id="item43">
                                                        <label class="custom-control-label" for="item43">3rd item</label>
                                                    </div>
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="agenda4" class="custom-control-input" id="item44">
                                                        <label class="custom-control-label" for="item44">4th item</label>
                                                    </div>
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="agenda4" class="custom-control-input" id="item45">
                                                        <label class="custom-control-label" for="item45">5th item</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Form wizard with vertical tabs section end -->
</div>

<div class="content-body">
    <section id="basic-form-layouts">
        <div class="row match-height">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-form">Project Info</h4>
                        <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                        <div class="heading-elements">
                            <ul class="list-inline mb-0">
                                <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                                <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                                <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                                <li><a data-action="close"><i class="ft-x"></i></a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="card-content collapse show">
                        <div class="card-body">
                            <div class="card-text">
                                <p>This is the most basic</p>
                            </div>

                            <form class="form">
                                <div class="form-body">
                                    <h4 class="form-section"><i class="ft-user"></i> Personal Info</h4>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="projectinput1">First Name</label>
                                                <input type="text" id="projectinput1" class="form-control" placeholder="First Name" name="fname">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="projectinput2">Last Name</label>
                                                <input type="text" id="projectinput2" class="form-control" placeholder="Last Name" name="lname">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="projectinput3">E-mail</label>
                                                <input type="text" id="projectinput3" class="form-control" placeholder="E-mail" name="email">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="projectinput4">Contact Number</label>
                                                <input type="text" id="projectinput4" class="form-control" placeholder="Phone" name="phone">
                                            </div>
                                        </div>
                                    </div>

                                    <h4 class="form-section"><i class="la la-paperclip"></i> Requirements</h4>

                                    <div class="form-group">
                                        <label for="companyName">Company</label>
                                        <input type="text" id="companyName" class="form-control" placeholder="Company Name" name="company">
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="projectinput5">Interested in</label>
                                                <select id="projectinput5" name="interested" class="form-control">
                                                    <option value="none" selected="" disabled="">Interested in</option>
                                                    <option value="design">design</option>
                                                    <option value="development">development</option>
                                                    <option value="illustration">illustration</option>
                                                    <option value="branding">branding</option>
                                                    <option value="video">video</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="projectinput6">Budget</label>
                                                <select id="projectinput6" name="budget" class="form-control">
                                                    <option value="0" selected="" disabled="">Budget</option>
                                                    <option value="less than 5000$">less than 5000$</option>
                                                    <option value="5000$ - 10000$">5000$ - 10000$</option>
                                                    <option value="10000$ - 20000$">10000$ - 20000$</option>
                                                    <option value="more than 20000$">more than 20000$</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label>Select File</label>
                                        <label id="projectinput7" class="file center-block">
                                            <input type="file" id="file">
                                            <span class="file-custom"></span>
                                        </label>
                                    </div>

                                    <div class="form-group">
                                        <label for="projectinput8">About Project</label>
                                        <textarea id="projectinput8" rows="5" class="form-control" name="comment" placeholder="About Project"></textarea>
                                    </div>
                                </div>

                                <div class="form-actions">
                                    <button type="button" class="btn btn-warning mr-1">
                                        <i class="ft-x"></i> Cancel
                                    </button>
                                    <button type="submit" class="btn btn-primary">
                                        <i class="la la-check-square-o"></i> Save
                                    </button>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" id="basic-layout-tooltip">Issue Tracking</h4>
                        <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                        <div class="heading-elements">
                            <ul class="list-inline mb-0">
                                <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                                <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                                <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                                <li><a data-action="close"><i class="ft-x"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="card-content collapse show">
                        <div class="card-body">

                            <div class="card-text">
                                <p>This form shows tooltips</p>
                            </div>

                            <form class="form">
                                <div class="form-body">

                                    <div class="form-group">
                                        <label for="issueinput1">Issue Title</label>
                                        <input type="text" id="issueinput1" class="form-control" placeholder="issue title" name="issuetitle" data-toggle="tooltip" data-trigger="hover" data-placement="top" data-title="Issue Title">
                                    </div>

                                    <div class="form-group">
                                        <label for="issueinput2">Opened By</label>
                                        <input type="text" id="issueinput2" class="form-control" placeholder="opened by" name="openedby" data-toggle="tooltip" data-trigger="hover" data-placement="top" data-title="Opened By">
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="issueinput3">Date Opened</label>
                                                <input type="date" id="issueinput3" class="form-control" name="dateopened" data-toggle="tooltip" data-trigger="hover" data-placement="top" data-title="Date Opened">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="issueinput4">Date Fixed</label>
                                                <input type="date" id="issueinput4" class="form-control" name="datefixed" data-toggle="tooltip" data-trigger="hover" data-placement="top" data-title="Date Fixed">
                                            </div>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label for="issueinput5">Priority</label>
                                        <select id="issueinput5" name="priority" class="form-control" data-toggle="tooltip" data-trigger="hover" data-placement="top" data-title="Priority">
                                            <option value="low">Low</option>
                                            <option value="medium">Medium</option>
                                            <option value="high">High</option>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="issueinput6">Status</label>
                                        <select id="issueinput6" name="status" class="form-control" data-toggle="tooltip" data-trigger="hover" data-placement="top" data-title="Status">
                                            <option value="not started">Not Started</option>
                                            <option value="started">Started</option>
                                            <option value="fixed">Fixed</option>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="issueinput8">Comments</label>
                                        <textarea id="issueinput8" rows="5" class="form-control" name="comments" placeholder="comments" data-toggle="tooltip" data-trigger="hover" data-placement="top" data-title="Comments"></textarea>
                                    </div>

                                </div>

                                <div class="form-actions">
                                    <button type="button" class="btn btn-warning mr-1">
                                        <i class="ft-x"></i> Cancel
                                    </button>
                                    <button type="submit" class="btn btn-primary">
                                        <i class="la la-check-square-o"></i> Save
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

@endsection


@section('script')
    <script src="{{asset('ashry/back/app-assets/vendors/js/extensions/jquery.steps.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/pickers/dateTime/moment-with-locales.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/pickers/daterange/daterangepicker.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/vendors/js/forms/validation/jquery.validate.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/js/scripts/forms/wizard-steps.js')}}"></script>

    <script src="{{asset('ashry/back/app-assets/vendors/js/extensions/jquery.raty.js')}}"></script>

    <script src="{{asset('ashry/back/app-assets/js/scripts/modal/components-modal.js')}}"></script>


    <script src="{{asset('ashry/back/app-assets/vendors/js/tables/datatable/datatables.min.js')}}"></script>
    <script src="{{asset('ashry/back/app-assets/js/scripts/tables/datatables/datatable-basic.js')}}"></script>


    @toastr_js
    @toastr_render
@endsection
