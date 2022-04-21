<ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">

    <li class=" nav-item">
        <a href="{{route('admin.dashboard')}}">
            <i class="la la-home"></i>
            <span class="menu-title" data-i18n="eCommerce">
                {{__('cpanel/sidebar.Dashboard')}}
            </span>
        </a>
    </li>

    <!-- Grades-->
    <li class=" nav-item">
        <a href="{{route('grades.index')}}">
            <i class="la la-align-justify"></i>
            <span class="badge badge badge-info badge-pill float-right mr-2">
                {{\App\Models\Grade::count()}}
            </span>
            <span class="menu-title" data-i18n="Grades">
                {{trans('cpanel/sidebar.Grades')}}
            </span>
        </a>
    </li>

    <!-- classes-->
    <li class=" nav-item">
        <a href="{{route('classrooms.index')}}">
            <i class="la la-align-justify"></i>
            <span class="menu-title" data-i18n="Classes">
                {{trans('cpanel/sidebar.Classes')}}
            </span>
            <span class="badge badge badge-info badge-pill float-right mr-2">
                {{\App\Models\Classroom::count()}}
            </span>
        </a>
    </li>

    <!-- sections-->
    <li class=" nav-item">
        <a href="{{route('sections.index')}}">
            <i class="la la-align-justify"></i>
            <span class="menu-title" data-i18n="List-sections">
                {{trans('cpanel/sidebar.List Sections')}}
            </span>
            <span class="badge badge badge-info badge-pill float-right mr-2">
                {{\App\Models\Section::count()}}
            </span>
        </a>
    </li>

    <!-- students-->
    <li class=" nav-item">
        <a href="#">
            <i class="la la-graduation-cap"></i>
            <span class="menu-title" data-i18n="Students">
                {{trans('cpanel/sidebar.Students')}}
            </span>

        </a>

        <ul class="menu-content">

            <li>
                <a class="menu-item" href="#"><i></i>
                    <span data-i18n="Student Information">
                        {{trans('cpanel/sidebar.Information')}}
                    </span>
                    <span class="badge badge badge-pill badge-success float-right mr-2">
                        {{\App\Models\Student::count()}}
                    </span>
                </a>

                <ul class="menu-content">
                    <li>
                        <a class="menu-item"
                           href="{{route('admin.students.create')}}"><i></i>
                            {{-- <i class="la la-university"></i> --}}
                            <i class="la la-minus"></i>
                            <span data-i18n="Add Student">
                                {{trans('cpanel/sidebar.Add Student')}}
                            </span>
                        </a>
                    </li>

                    <li>
                        <a class="menu-item"
                           href="{{route('admin.students')}}"><i></i>
                            <i class="la la-minus"></i>
                            <span data-i18n="List Students">
                                {{trans('cpanel/sidebar.List Students')}}
                            </span>
                        </a>
                    </li>

                </ul>
            </li>

            <li>
                <a class="menu-item" href="#"><i></i>
                    <span data-i18n="Students Promotions">
                        {{trans('cpanel/sidebar.Promotions')}}
                    </span>

                </a>

                <ul class="menu-content">
                    <li>
                        <a class="menu-item"
                           href="{{route('admin.promotion.create')}}"><i></i>
                            <i class="la la-minus"></i>
                            <span data-i18n="Add Promotion">
                                {{trans('cpanel/sidebar.Add Promotion')}}
                            </span>
                        </a>
                    </li>

                    <li>
                        <a class="menu-item"
                           href="{{route('admin.promotion')}}"><i></i>
                            <i class="la la-minus"></i>
                            <span data-i18n="List Promotions">
                                {{trans('cpanel/sidebar.List Promotions')}}
                            </span>
                            <span class="badge badge badge-pill badge-danger float-right mr-2">
                                {{\App\Models\Promotion::count()}}
                            </span>
                        </a>
                    </li>

                </ul>
            </li>

            <li>
                <a class="menu-item" href="#"><i></i>
                    <span data-i18n="Graduate Students">
                        {{trans('cpanel/sidebar.Graduate')}}
                    </span>
                </a>

                <ul class="menu-content">
                    <li>
                        <a class="menu-item"
                           href="{{route('admin.graduated.create')}}"><i></i>
                            <i class="la la-minus"></i>
                            <span data-i18n="Add Graduate">
                                {{trans('cpanel/sidebar.Add Graduate')}}
                            </span>
                        </a>
                    </li>

                    <li>
                        <a class="menu-item"
                           href="{{route('admin.graduated')}}"><i></i>
                            <i class="la la-minus"></i>
                            <span data-i18n="List Graduate">
                                {{trans('cpanel/sidebar.List Graduate')}}
                            </span>
                        </a>
                    </li>

                </ul>
            </li>

        </ul>
    </li>

    <!-- Teachers-->
    <li class=" nav-item">
        <a href="#">
            <i class="la la-tablet"></i>
            <span class="menu-title" data-i18n="Teachers">
                {{trans('cpanel/sidebar.Teachers')}}
            </span>
            <span class="badge badge badge-success float-right mr-2">
                {{\App\Models\Teacher::count()}}
            </span>
        </a>
        <ul class="menu-content">
            <li>
                <a class="menu-item" href="{{route('teachers.index')}}"><i></i>
                    <span data-i18n="List Teachers">
                        {{trans('cpanel/sidebar.List Teachers')}}
                    </span>
                </a>
            </li>
        </ul>
    </li>

    <!-- Parents-->
    <li class=" nav-item">
        <a href="#"><i class="la la-tablet"></i>
            <span class="menu-title" data-i18n="Parents">
                {{trans('cpanel/sidebar.Parents')}}
            </span>
            <span class="badge badge badge-success float-right mr-2">
                {{\App\Models\Guardian::count()}}
            </span>
        </a>
        <ul class="menu-content">
            <li>
                {{--  {{url('add_parent')}}  --}}
                <a class="menu-item" href="{{route('add_parent')}}"><i></i>
                    <span data-i18n="List Parents">
                        {{trans('cpanel/sidebar.List Parents')}}
                    </span>
                </a>
            </li>
        </ul>
    </li>

    <!-- Accounts-->
    <li class=" nav-item">
        <a href="#"><i class="la la-tablet"></i>
            <span class="menu-title" data-i18n="Cards">
                {{trans('cpanel/sidebar.Accounts')}}
            </span>
            <span class="badge badge badge-success float-right mr-2">
                New
            </span>
        </a>
        <ul class="menu-content">
            <li>
                <a class="menu-item" href="{{route('admin.fees')}}"><i></i>
                    <span data-i18n="Bootstrap">
                        {{trans('cpanel/sidebar.Studying Fees')}}
                    </span>
                </a>
            </li>

            <li>
                <a class="menu-item" href="{{route('admin.fees_invoices')}}"><i></i>
                    <span data-i18n="Bootstrap">
                        {{trans('cpanel/sidebar.Invoices')}}
                    </span>
                </a>
            </li>

            <li>
                <a class="menu-item" href="{{route('receipt_students.index')}}"><i></i>
                    <span data-i18n="Bootstrap">
                        {{trans('cpanel/sidebar.Receipt')}}
                    </span>
                </a>
            </li>

            <li>
                <a class="menu-item" href="{{route('processingFee.index')}}"><i></i>
                    <span data-i18n="Bootstrap">
                        {{trans('cpanel/sidebar.Fee Exclusion')}}
                    </span>
                </a>
            </li>

            <li>
                <a class="menu-item" href="{{route('payment_students.index')}}"><i></i>
                    <span data-i18n="Bootstrap">
                        {{trans('cpanel/sidebar.Exchange Receipts')}}
                    </span>
                </a>
            </li>
        </ul>
    </li>

    <!-- Attendance-->
    <li class=" nav-item">
        <a href="#"><i class="la la-tablet"></i>
            <span class="menu-title" data-i18n="Attendance">
                {{trans('cpanel/sidebar.Attendance')}}
            </span>
            <span class="badge badge badge-success float-right mr-2">
                New
            </span>
        </a>
        <ul class="menu-content">
            <li>
                <a class="menu-item" href="{{route('attendance.index')}}"><i></i>
                    <span data-i18n="Attendance Students">
                        {{trans('cpanel/sidebar.Attendance Students')}}
                    </span>
                </a>
            </li>
        </ul>
    </li>

    <!-- Subjects-->
    <li class=" nav-item">
        <a href="#"><i class="la la-tablet"></i>
            <span class="menu-title" data-i18n="Cards">
                {{trans('cpanel/sidebar.Subjects')}}
            </span>
            <span class="badge badge badge-success float-right mr-2">
                New
            </span>
        </a>
        <ul class="menu-content">
            <li>
                <a class="menu-item" href="{{route('admin.subjects')}}"><i></i>
                    <span data-i18n="Bootstrap">
                        {{trans('cpanel/sidebar.List Subjects')}}
                    </span>
                </a>
            </li>
        </ul>
    </li>

    <!-- Quizzes-->
    <li class=" nav-item">
        <a href="#"><i class="la la-tablet"></i>
            <span class="menu-title" data-i18n="Quizzes">
                {{trans('cpanel/sidebar.Quizzes')}}
            </span>
            <span class="badge badge badge-success float-right mr-2">
                New
            </span>
        </a>
        <ul class="menu-content">
            <li>
                <a class="menu-item" href="{{route('admin.quizzes')}}"><i></i>
                    <span data-i18n="Quizzes List">
                        {{trans('cpanel/sidebar.Quizzes List')}}
                    </span>
                </a>
            </li>

            <li>
                <a class="menu-item" href="{{route('questions.index')}}"><i></i>
                    <span data-i18n="Questions List">
                        {{trans('cpanel/sidebar.Questions List')}}
                    </span>
                </a>
            </li>
        </ul>
    </li>

    <!-- library-->
    <li class=" nav-item">
        <a href="#"><i class="la la-tablet"></i>
            <span class="menu-title" data-i18n="Library">
                {{trans('cpanel/sidebar.Library')}}
            </span>
            <span class="badge badge badge-success float-right mr-2">
                New
            </span>
        </a>
        <ul class="menu-content">
            <li>
                <a class="menu-item" href="{{route('admin.library')}}"><i></i>
                    <span data-i18n="Books List">
                        {{trans('cpanel/sidebar.Books List')}}
                    </span>
                </a>
            </li>
        </ul>
    </li>

    <!-- Online classes-->
    <li class=" nav-item">
        <a href="#"><i class="la la-tablet"></i>
            <span class="menu-title" data-i18n="Online Classes">
                {{trans('cpanel/sidebar.Online Classes')}}
            </span>
            <span class="badge badge badge-success float-right mr-2">
                New
            </span>
        </a>

        <ul class="menu-content">
            <li>
                <a class="menu-item" href="{{route('admin.online_classes')}}"><i></i>
                    <span data-i18n="Zoome Online">
                        {{trans('cpanel/sidebar.Zoom Online')}}
                    </span>
                </a>
            </li>

        </ul>
    </li>

    <!-- Settings-->
    <li class=" nav-item">
        <a href="{{route('settings.index')}}">
            <i class="la la-cog"></i>
            <span class="menu-title" data-i18n="Settings">
                {{trans('cpanel/sidebar.Settings')}}
            </span>
        </a>
    </li>

    <!-- Users-->
    <li class=" nav-item">
        <a href="{{route('grades.index')}}">
            <i class="la la-group"></i>
            <span class="menu-title" data-i18n="Users">
                {{trans('cpanel/sidebar.Users')}}
            </span>
        </a>
    </li>

    {{--
    <li class=" navigation-header">
        <span>Students</span>
        <i class="la la-ellipsis-h"
           data-toggle="tooltip"
           data-placement="right"
           data-original-title="Students"></i>
    </li>
    --}}
</ul>
