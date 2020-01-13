<!DOCTYPE html>
<html lang="en">


<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
    <jsp:include page="common/meta.jsp"/>
<title>Dashboard - Laravel</title>

    <jsp:include page="common/css.jsp"/>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link rel="stylesheet" type="text/css" href="../candidate-assets/css/ie10-viewport-bug-workaround.css">

    <style>
    .main-footer{
      margin-top: 100px;
      background: #333;
      color: #FFF;
      padding: 40px 5%;
    }
    </style>
</head>

<body class="font-montserrat">

<!-- Page Loader -->
    <jsp:include page="common/loader.jsp"/>

<div id="main_content">

    <jsp:include page="common/menu-small.jsp"/>

    <jsp:include page="common/right-sidebar.jsp"/>

    <jsp:include page="common/userDiv.jsp"/>

    <jsp:include page="common/menu.jsp"/>

    <div class="page">

        <jsp:include page="common/page-top.jsp"/>

<div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-12">
                <!-- job box 2 start -->
                <div class="job-box-2">
                    <div class="company-logo">
                        <img src="../candidate-assets/img/company-logo/logo-4.png" alt="avatar">
                    </div>
                    <div class="description">
                        <h5 class="title">${job.position}</h5>
                        <div class="candidate-listing-footer">
                            <ul>
<%--                                <li><i class="flaticon-work"></i>UX Designer</li>--%>
                                <li><i class="flaticon-pin"></i> ${job.address.city.name}</li>
                                <li><i class="flaticon-time"></i>${job.type.name()}</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <hr class="hr-boder">
                <!-- job description start -->

                <div class="job-description mb-40">
                    <h3 class="heading-2">Is Haqqinda</h3>
                   ${job.about}
                </div>
                <!-- Education + experience start-->
                <%--            Tecrube          --%>
<%--                <div class="education-experience amenities mb-40">--%>
<%--                    <h3 class="heading-2">Education + Experience</h3>--%>
<%--                    <ul>--%>
<%--                        <li>--%>
<%--                            <i class="fa fa-check"></i>M.B.S / M.B.A under National University with CA course complete.--%>
<%--                        </li>--%>
<%--                        <li><i class="fa fa-check"></i>3 or more years of professional design experience</li>--%>
<%--                        <li>--%>
<%--                            <i class="fa fa-check"></i>Excellent communication skills, most notably a demonstrated ability to solicit and address creative and design feedback--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <i class="fa fa-check"></i>Masters of library science any Green University.--%>
<%--                        </li>--%>
<%--                        <li><i class="fa fa-check"></i>BA/BS degree in a technical field or equivalent practical experience.</li>--%>
<%--                        <li>--%>
<%--                            <i class="fa fa-check"></i>Ability to work independently and to carry out assignments to completion within parameters of instructions given, prescribed routines, and standard accepted practices--%>
<%--                        </li>--%>

<%--                        --%>
<%--                    </ul>--%>
<%--                </div>--%>
                <!-- Responsibilities start-->
                <%--     Mesuliyyet           --%>
                <div class="responsibilities amenities mb-40">
                    <h3 class="heading-2">Telebler</h3>
                    <ul>
<%--                        <li>--%>
<%--                            <i class="fa fa-check"></i>Explore and design dynamic and compelling consumer experiences.--%>
<%--                        </li>--%>
<%--                        <li><i class="fa fa-check"></i>Have sound knowledge of commercial activities.</li>--%>
<%--                        <li>--%>
<%--                            <i class="fa fa-check"></i>Build next-generation web applications with a focus on the client side.--%>
<%--                        </li>--%>
<%--                        <li>--%>
<%--                            <i class="fa fa-check"></i>The applicants should have experience in the following areas--%>
<%--                        </li>--%>

                        ${job.requirement}
                    </ul>
                </div>
                <!-- Location start -->
<%--                <div class="location mb-50">--%>
<%--                    <div class="map">--%>
<%--                        <h3 class="heading-2">Location</h3>--%>
<%--                        <div id="map" class="contact-map"></div>--%>
<%--                    </div>--%>
<%--                </div>--%>

                <div class="mapouter">
                    <div class="gmap_canvas">
                        <h3>Location</h3>
                        <iframe width="776" height="273" id="gmap_canvas"
                                src="https://maps.google.com/maps?q=Baku,Azerbaijan&t=&z=13&ie=UTF8&iwloc=&output=embed"
                                frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                        <a href="https://www.bitgeeks.net/embed-google-map/"></a>
                    </div>
                </div>

                <!-- Social list 2 start -->
                <div class="social-list-2 sl-3 float-left mb-40">
<%--                    <span>Share</span>--%>
                    <a href= "${job.organization.facebook}" class="facebook-bg">

                        <i class="fa fa-facebook"></i>

                    </a>

                    <a href="${job.organization.twitter}" class="twitter-bg">
                        <i class="fa fa-twitter"></i>
                    </a>
<%--                    <a href="#" class="google-bg">--%>
<%--                        <i class="fa fa-google"></i>--%>
<%--                    </a>--%>
                    <a href="${job.organization.linkedin}" class="linkedin-bg">
                        <i class="fa fa-linkedin"></i>
                    </a>

<%--                    <a href="#" class="pinterest-bg">--%>
<%--                        <i class="fa fa-pinterest"></i>--%>
<%--                    </a>--%>
                </div>
                <div class="clearfix"></div>
                <!-- Related jobs start -->
                <div class="related-Jobs clearfix">
                    <h3 class="heading-2">Related Jobs</h3>
                    <div class="job-box">
                        <div class="company-logo">
                            <img src="../candidate-assets/img/company-logo/logo-2.png" alt="logo">
                        </div>
                        <div class="description">
                            <div class="float-left">
                                <h5 class="title"><a href="job-details.html">Dhaka Event Support Specialist</a></h5>
                                <div class="candidate-listing-footer">
                                    <ul>
                                        <li><i class="flaticon-work"></i> Xero</li>
                                        <li><i class="flaticon-pin"></i> New York City</li>
                                        <li><i class="flaticon-time"></i> Temporary</li>
                                    </ul>
                                    <h6>Deadline: Jan 31, 2019</h6>
                                </div>
                            </div>
                            <div class="div-right">
                                <a href="#" class="apply-button">Apply Now</a>
                                <a href="#"><i class="flaticon-heart favourite"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="job-box">
                        <div class="company-logo">
                            <img src="../candidate-assets/img/company-logo/logo-3.png" alt="logo">
                        </div>
                        <div class="description">
                            <div class="float-left">
                                <h5 class="title"><a href="job-details.html">Development Marketer</a></h5>
                                <div class="candidate-listing-footer">
                                    <ul>
                                        <li><i class="flaticon-work"></i> Red</li>
                                        <li><i class="flaticon-pin"></i> New York City</li>
                                        <li><i class="flaticon-time"></i> Part Time</li>
                                    </ul>
                                    <h6>Deadline: Jan 31, 2019</h6>
                                </div>
                            </div>
                            <div class="div-right">
                                <a href="#" class="apply-button">Apply Now</a>
                                <a href="#"><i class="flaticon-heart favourite"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="job-box mb-30">
                        <div class="company-logo">
                            <img src="../candidate-assets/img/company-logo/logo-4.png" alt="logo">
                        </div>
                        <div class="description">
                            <div class="float-left">
                                <h5 class="title"><a href="job-details.html">Green Development Marketer</a></h5>
                                <div class="candidate-listing-footer">
                                    <ul>
                                        <li><i class="flaticon-work"></i> Zooms</li>
                                        <li><i class="flaticon-pin"></i> New York City</li>
                                        <li><i class="flaticon-time"></i> Full Time</li>
                                    </ul>
                                    <h6>Deadline: Jan 31, 2019</h6>
                                </div>
                            </div>
                            <div class="div-right">
                                <a href="#" class="apply-button">Apply Now</a>
                                <a href="#"><i class="flaticon-heart favourite"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-12">
                <div class="sidebar-right-2">
                    <!-- Search box start -->
                    <div class="widget search-box">
                        <form method="GET">
                            <div class="form-group fg-2">
<%--                                <button class="search-button sj-btn btn-outline">Save job</button>--%>
                            </div>
                            <div class="form-group mb-0">
<%--                                <button class="search-button button-theme">Apply Now</button>--%>
                            </div>
                        </form>
                    </div>
                    <!-- Job overview start -->
                    <div class="job-overview widget">
                        <h3 class="sidebar-title">Job Overview</h3>
                        <div class="s-border"></div>
                        <ul>
                            <li><i class="flaticon-money"></i><h5>Maas</h5><span>${job.minSalary} - ${job.maxSalary}</span></li>
                            <li><i class="flaticon-pin"></i><h5>Address</h5><span>${job.address.city.name}</span></li>
                            <li><i class="flaticon-work"></i><h5>Is Vaxti</h5><span>${job.type.name()}</span></li>
                            <li><i class="flaticon-notepad"></i><h5>Is Tecrubesi</h5><span>${job.minExperience} ilden ${job.maxExperience} ile qeder</span></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                    <!-- Quick contact start -->
<%--                    <div class="widget-5 contact-2 quick-contact">--%>
<%--                        <h3 class="sidebar-title">Quick Contacts</h3>--%>
<%--                        <div class="s-border"></div>--%>
<%--                        <form action="#" method="GET" enctype="multipart/form-data">--%>
<%--                            <div class="form-group name">--%>
<%--                                <input type="text" name="name" class="form-control" placeholder="Name">--%>
<%--                            </div>--%>
<%--                            <div class="form-group email">--%>
<%--                                <input type="email" name="email" class="form-control" placeholder="Email">--%>
<%--                            </div>--%>
<%--                            <div class="form-group message">--%>
<%--                                <textarea class="form-control" name="message" placeholder="Write message"></textarea>--%>
<%--                            </div>--%>
<%--                            <div class="send-btn">--%>
<%--                                <button type="submit" class="btn btn-md button-theme">Send Message</button>--%>
<%--                            </div>--%>
<%--                        </form>--%>
<%--                    </div>--%>
                </div>
            </div>
        </div>
    </div>
        <jsp:include page="common/footer.jsp"/>
    </div>
</div>



<!-- Scripts -->
<jsp:include page="common/js.jsp"/>

</body>


</html>
