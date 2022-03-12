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
                    <a href="{{route('Students.create')}}">
                        {{trans('cpanel/sidebar.Add Student')}}
                    </a>
                </li>

                <li class="breadcrumb-item">
                    <a href="{{route('Promotion.index')}}">
                        {{trans('cpanel/students.Promotions')}}
                    </a>
                </li>

                <li class="breadcrumb-item">
                    <a href="{{route('Graduated.index')}}">
                        {{trans('cpanel/students.Graduated')}}
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
