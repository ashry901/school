
<li class=" nav-item">
    <a href="{{route('teacher.dashboard')}}">
        <i class="la la-home"></i>
        <span class="menu-title" data-i18n="eCommerce">
                {{__('cpanel/sidebar.Dashboard')}}
            </span>
    </a>
</li>

<!-- sections-->
<li class=" nav-item">
    <a href="{{route('sections')}}">
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
    <a href="{{route('teacher.student.dash')}}">
        <i class="la la-align-justify"></i>
        <span class="menu-title" data-i18n="Students">
            {{trans('cpanel/sidebar.Students')}}
        </span>
        <span class="badge badge badge-info badge-pill float-right mr-2">
            {{\App\Models\Student::count()}}
        </span>
    </a>
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

