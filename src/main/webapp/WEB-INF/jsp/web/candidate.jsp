<%--
  Created by IntelliJ IDEA.
  User: farid
  Date: 04.10.19
  Time: 01:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<head>
    <title>Candidate Profile</title>
    <jsp:include page="common/meta.jsp"/>
    <!--srart theme style -->
    <jsp:include page="common/css.jsp"/>
    <link rel="stylesheet" type="text/css" href="../../../css/style_II.css" />
    <link rel="stylesheet" type="text/css" href="../../../css/responsive2.css" />
</head>

<body>
<!-- preloader Start -->
<div id="preloader">
    <div id="status"><img src="../../../images/header/loadinganimation.gif" id="preloader_image" alt="loader">
    </div>
</div>
<!-- Top Scroll End -->

<jsp:include page="common/top-header.jsp"/>

<!-- Header Wrapper Start -->
<div class="jp_top_header_img_wrapper">
    <div class="gc_main_menu_wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 hidden-xs hidden-sm full_width">
                    <div class="gc_header_wrapper">
                        <div class="gc_logo">
                            <a href="../../../index.jsp"><img src="../../../images/header/logo2.png" alt="Logo" title="Job Pro" class="img-responsive"></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 full_width">
                   <jsp:include page="common/menu.jsp"/>
                </div>
                <!-- mobile menu area end -->
                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 hidden-sm hidden-xs">
                    <div class="jp_navi_right_btn_wrapper">
                        <ul>
                            <li><a href="add_postin.jsp"><i class="fa fa-plus-circle"></i>&nbsp; Post a job</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Header Wrapper End -->
<!-- jp Tittle Wrapper Start -->
<div class="jp_tittle_main_wrapper">
    <div class="jp_tittle_img_overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="jp_tittle_heading_wrapper">
                    <div class="jp_tittle_heading">
                        <h2>candidate-Profile</h2>
                    </div>
                    <div class="jp_tittle_breadcrumb_main_wrapper">
                        <div class="jp_tittle_breadcrumb_wrapper">
                            <ul>
                                <li><a href="#">Home</a> <i class="fa fa-angle-right"></i></li>
                                <li><a href="#">Pages</a> <i class="fa fa-angle-right"></i></li>
                                <li>candidate-Profile</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- jp Tittle Wrapper End -->
<!-- jp profile Wrapper Start -->
<div class="jp_cp_profile_main_wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="jp_cp_left_side_wrapper">
                    <div class="jp_cp_left_pro_wallpaper">
                        <img src="../../../images/content/cp1.png" alt="profile_img">
                        <h2>Farhan Shaikh</h2>
                        <p>UI/UX Designer in Dewas</p>
                        <ul>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-youtube-play"></i></a></li>
                        </ul>
                    </div>
                    <div class="jp_cp_rd_wrapper">
                        <ul>
                            <li><a href="#"><i class="fa fa-download"></i> &nbsp;Download Resume</a></li>
                            <li><a href="#"><i class="fa fa-phone"></i> &nbsp;Contact candidate</a></li>
                        </ul>
                    </div>
                </div>
                <div class="jp_add_resume_wrapper jp_job_location_wrapper jp_cp_left_ad_res">
                    <div class="jp_add_resume_img_overlay"></div>
                    <div class="jp_add_resume_cont">
                        <img src="../../../images/content/resume_logo.png" alt="logo" />
                        <h4>Get Best Matched Jobs On your Email. Add Resume NOW!</h4>
                        <ul>
                            <li><a href="#"><i class="fa fa-plus-circle"></i> &nbsp;ADD RESUME</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <div class="jp_cp_right_side_wrapper">
                    <div class="jp_cp_right_side_inner_wrapper">
                        <h2>PERSONAL DETAILS</h2>
                        <table>
                            <tbody>
                            <tr>
                                <td class="td-w25">Full Name</td>
                                <td class="td-w10">:</td>
                                <td class="td-w65">Farhan Shaikh</td>
                            </tr>
                            <tr>
                                <td class="td-w25">Father's Name</td>
                                <td class="td-w10">:</td>
                                <td class="td-w65">------</td>
                            </tr>
                            <tr>
                                <td class="td-w25">Address</td>
                                <td class="td-w10">:</td>
                                <td class="td-w65">Street 110-B Kalani Bag, Dewas, M.P. INDIA</td>
                            </tr>
                            <tr>
                                <td class="td-w25">Zip Code</td>
                                <td class="td-w10">:</td>
                                <td class="td-w65">12345</td>
                            </tr>
                            <tr>
                                <td class="td-w25">Phone</td>
                                <td class="td-w10">:</td>
                                <td class="td-w65">+0 123456789 , +0 123456789</td>
                            </tr>
                            <tr>
                                <td class="td-w25">Email</td>
                                <td class="td-w10">:</td>
                                <td class="td-w65">support@example.com</td>
                            </tr>
                            <tr>
                                <td class="td-w25">Website</td>
                                <td class="td-w10">:</td>
                                <td class="td-w65">http://example.com</td>
                            </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
                        <div class="jp_cp_accor_heading_wrapper">
                            <h2>Education</h2>
                            <p>Proin gravida nibh vel velit quet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulpuate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt.</p>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
                        <div class="accordion_wrapper abt_page_2_wrapper">
                            <div class="panel-group" id="accordion_threeLeft">


                                <!-- /.panel-default -->
                                <div class="panel panel-default">
                                    <div class="panel-heading bell">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion_threeLeft" href="#collapseTwentyLeftThree" aria-expanded="false">
                                                DIPLOMA IN COMPUTER
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseTwentyLeftThree" class="panel-collapse collapse" aria-expanded="false" role="tablist">
                                        <div class="panel-body">
                                            Praesent in nisl egestas mauris aliquam luctus. Ut auctor faucibus orci, nec semper purus ultrices idorbi nec lorem risus orbi vitae felis gravida Pellentesque id eros quis massa convallis feugiat eu quis urna.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading bell">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion_threeLeft" href="#collapseTwentyLeftThree2" aria-expanded="false">
                                                HIGHER SECONDRY EDUCATION
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseTwentyLeftThree2" class="panel-collapse collapse" aria-expanded="false" role="tablist">
                                        <div class="panel-body">
                                            Praesent in nisl egestas mauris aliquam luctus. Ut auctor faucibus orci, nec semper purus ultrices idorbi nec lorem risus orbi vitae felis gravida Pellentesque id eros quis massa convallis feugiat eu quis urna.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading bell">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion_threeLeft" href="#collapseTwentyLeftThree3" aria-expanded="false">
                                                HIGH SCHOOL DEGREE
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseTwentyLeftThree3" class="panel-collapse collapse" aria-expanded="false" role="tablist">
                                        <div class="panel-body">
                                            Praesent in nisl egestas mauris aliquam luctus. Ut auctor faucibus orci, nec semper purus ultrices idorbi nec lorem risus orbi vitae felis gravida Pellentesque id eros quis massa convallis feugiat eu quis urna.
                                        </div>
                                    </div>
                                </div>
                                <!-- /.panel-default -->
                            </div>
                            <!--end of /.panel-group-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- jp profile Wrapper End -->


<!-- jp downlord Wrapper Start -->
<jsp:include page="common/download.jsp"/>
<!-- jp downlord Wrapper End -->

<!-- jp Newsletter Wrapper Start -->
<jsp:include page="common/newsletter.jsp"/>
<!-- jp footer Wrapper End -->

<!--main js file start-->
<jsp:include page="common/js.jsp"/>
<script src="../../../js/jquery.magnific-popup.js"></script>
<script src="../../../js/custom_II.js"></script>
<!--main js file end-->
</body>


</html>