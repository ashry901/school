<ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">



    @if (auth('admin')->check())
        @include('dashboard.includes.sidebar.sidebar-admin')
    @endif

    @if (auth('teacher')->check())
        @include('dashboard.includes.sidebar.sidebar-teachers')
    @endif

    @if (auth('student')->check())
        @include('dashboard.includes.sidebar.sidebar-students')
    @endif

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
