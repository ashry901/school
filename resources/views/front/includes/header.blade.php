<div id="Top_bar">
    <div class="container">
        <div class="column one">
            <div class="top_bar_left clearfix">

                <div class="logo">

                    <a id="logo"
                       href="{{route('home')}}"
                       title="BeSchool"
                       data-height="60"
                       data-padding="15">
                        <img class="logo-main scale-with-grid"
                             src="{{asset('ashry/front/content/school2/images/school2.png')}}"
                             data-retina="{{asset('ashry/front/content/school2/images/retina-school2.png')}}"
                             data-height="52" alt="school2">

                        <img class="logo-sticky scale-with-grid"
                             src="{{asset('ashry/front/content/school2/images/school2.png')}}"
                             data-retina="{{asset('ashry/front/content/school2/images/retina-school2.png')}}"
                             data-height="52" alt="school2">

                        <img class="logo-mobile scale-with-grid"
                             src="{{asset('ashry/front/content/school2/images/school2.png')}}"
                             data-retina="{{asset('ashry/front/content/school2/images/retina-school2.png')}}"
                             data-height="52" alt="school2">

                        <img class="logo-mobile-sticky scale-with-grid"
                             src="{{asset('ashry/front/content/school2/images/school2.png')}}"
                             data-retina="{{asset('ashry/front/content/school2/images/retina-school2.png')}}"
                             data-height="52" alt="school2">
                    </a>
                </div>

                <div class="menu_wrapper">
                    <nav id="menu">
                        <ul id="menu-main-menu" class="menu menu-main">
                            <li class="current-menu-item">
                                <a href="{{route('home')}}">
                                    <span>Home</span>
                                </a>
                            </li>

                            <li>
                                <a href="content/school2/about.html">
                                    <span>About us</span>
                                </a>
                            </li>

                            <li>
                                <a href="content/school2/classes.html">
                                    <span>Classes</span>
                                </a>
                            </li>

                            <li>
                                <a href="">
                                    <span>Teachers</span>
                                </a>
                            </li>

                            <li>
                                <a href="content/school2/contact.html">
                                    <span>Contact us</span>
                                </a>
                            </li>

                            <li>
                                <a href="shop.html">
                                    <span>Ather</span>
                                </a>
                                <ul class="sub-menu">
                                    <li>
                                        <a href="shop.html">
                                            <span>Any Oether</span>
                                        </a>
                                    </li>

                                </ul>
                            </li>

                            <li>
                                <a href="{{route('selection')}}">
                                    <span>Choose Login Method</span>
                                </a>
                            </li>

                            {{--
                            @guest
                                @if (Route::has('login'))
                                    <li>
                                        <a href="{{ route('login') }}">
                                            <span>{{ __('Login') }}</span>

                                        </a>
                                    </li>

                                @endif

                                @if (Route::has('register'))

                                    <li>
                                        <a href="{{ route('register') }}">
                                            <span>{{ __('Register') }}</span>
                                        </a>
                                    </li>
                                @endif

                            @else

                                <li>
                                    <a href="#">
                                        <span>Welcome {{ Auth::user()->name }}</span>
                                    </a>

                                    <ul class="sub-menu">
                                        <li>
                                            <a href="{{ route('logout') }}"
                                               onclick="event.preventDefault();
                                                 document.getElementById('logout-form').submit();">
                                                <span>{{ __('Logout') }}</span>
                                            </a>

                                            <a href="{{ route('user-profile') }}">
                                                <span>Profile</span>
                                            </a>

                                            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                                @csrf
                                            </form>
                                        </li>

                                    </ul>
                                </li>
                            @endguest
                            --}}


                        </ul>
                    </nav>

                    <a class="responsive-menu-toggle" href="#">
                        <i class="icon-menu-fine"></i>
                    </a>
                </div>
            </div>


        </div>
    </div>
</div>
