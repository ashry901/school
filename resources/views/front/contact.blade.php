@extends('layouts.site')
@section('title', 'contact')

@section('style')

@endsection


@section('content')

<div id="Subheader" style="padding:130px 0 230px">
    <div class="container">
        <div class="column one">
            <h1 class="title">Contact us</h1>
        </div>
    </div>
</div>

<div id="Content">
    <div class="content_wrapper clearfix">
        <div class="sections_group">
            <div class="entry-content">
                <div class="section mcb-section" style="padding-top:0px; padding-bottom:70px">
                    <div class="section_wrapper mcb-section-inner">
                        <div class="wrap mcb-wrap one valign-top move-up clearfix" style="margin-top:-100px" data-mobile="no-up">
                            <div class="mcb-wrap-inner">
                                <div class="column mcb-column one column_image">
                                    <div class="image_frame image_item no_link scale-with-grid no_border">
                                        <div class="image_wrapper">
                                            <img class="scale-with-grid" src="images/home_school2_pic25.jpg">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section mcb-section" style="padding-top:0px; padding-bottom:70px">
                    <div class="section_wrapper mcb-section-inner">
                        <div class="wrap mcb-wrap one valign-top clearfix">
                            <div class="mcb-wrap-inner">
                                <div class="column mcb-column one-third column_column">
                                    <div class="column_attr clearfix" style=" padding:0 7% 0 0;">
                                        <h6 class="themecolor">PROIN RISUS</h6>
                                        <h2>Be School</h2>
                                        <hr class="no_line" style="margin:0 auto 10px">
                                        <h5>Level 13, 2 Elizabeth St,
                                            <br> Melbourne, Victoria 3000,
                                            <br> Australia
                                        </h5>
                                        <p>
                                            <a href="#">noreply@envato.com</a>
                                            <br> +61 (0) 3 8376 6284
                                        </p>
                                    </div>
                                </div>
                                <div class="column mcb-column two-third column_map_basic">
                                    <iframe class="embed" width="100%" height="300" frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyDxyJtV5FcRFAXuGOvx8Mp35WBb_phYRUg&amp;q=Envato++121+King+St++Melbourne+VIC+3000++Australia&amp;zoom=13" allowfullscreen></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section mcb-section" style="padding-top:110px; padding-bottom:70px; background-color:#f7f7f7">
                    <div class="section_wrapper mcb-section-inner">
                        <div class="wrap mcb-wrap one valign-top clearfix">
                            <div class="mcb-wrap-inner">
                                <div class="column mcb-column one column_column">
                                    <div class="column_attr clearfix">
                                        <h6 class="themecolor">HAVE ANY QUESTION?</h6>
                                        <h2>Online contact</h2>
                                        <hr class="no_line" style="margin:0 auto 30px">
                                        <div id="contactWrapper">
                                            <form id="contactform">
                                                <!-- One Second (1/2) Column -->
                                                <div class="column one-second">
                                                    <input placeholder="Your name" type="text" name="name" id="name" size="40" aria-required="true" aria-invalid="false" />
                                                </div>
                                                <!-- One Second (1/2) Column -->
                                                <div class="column one-second">
                                                    <input placeholder="Your e-mail" type="email" name="email" id="email" size="40" aria-required="true" aria-invalid="false" />
                                                </div>
                                                <div class="column one">
                                                    <input placeholder="Subject" type="text" name="subject" id="subject" size="40" aria-invalid="false" />
                                                </div>
                                                <div class="column one">
                                                    <textarea placeholder="Message" name="body" id="body" style="width:100%;" rows="10" aria-invalid="false"></textarea>
                                                </div>
                                                <div class="column one">
                                                    <input type="button" value="Send A Message" id="submit" onClick="return check_values();">
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
@endsection


@section('script')

@endsection
