<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: farid
  Date: 18.10.19
  Time: 17:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=UTF-8"/>
<head>
    <title>Candidate Dashboard</title>

    <jsp:include page="common/meta.jsp"/>
    <jsp:include page="common/css.jsp"/>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link rel="stylesheet" type="text/css" href="../candidate-assets/css/ie10-viewport-bug-workaround.css">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]>
    <script src="../candidate-assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../candidate-assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="../candidate-assets/js/html5shiv.min.js"></script>
    <script src="../candidate-assets/js/respond.min.js"></script>
    <![endif]-->
</head>
<style>
    .reject {
        background-color: #F31507;
        border-radius: 7px;
        color: white;
    }

    .rejectButton {
        background-color: #F31507;
        border-radius: 7px;
        color: white;
    }

    .rejectButton:hover {
        background-color: #FF6443;
        border-radius: 7px;
        color: white;
    }

    .viewButton {
        background-color: #00C5D1;
        border-radius: 7px;
        color: white;
    }

    .viewButton:hover {
        background-color: #17DDE9;
        border-radius: 7px;
        color: white;
    }

    .applyButton {
        background-color: #0BAF00;
        border-radius: 7px;
        color: white;
    }

    .applyButton:hover {
        background-color: #1BDA0E;
        border-radius: 7px;
        color: white;
    }

    .main-footer {
        margin-top: 100px;
        background: #333;
        color: #FFF;
        padding: 40px 5%;
    }

    .mapouter {
        position: relative;
        text-align: right;
        height: 273px;
        width: 776px;
        margin-left: 30px;
        margin-top: 10px;
    }

    .gmap_canvas {
        overflow: hidden;
        background: none !important;
        height: 273px;
        width: 800px;
    }

    .tabs {
        margin-top: 40px;
        margin-left: 30px;
        margin-right: 30px;
        display: flex;
        flex-wrap: wrap;
    / / make sure it wraps
    }

    .tabs label {
        order: 1;
    / / Put the labels first display: block;
        padding: 1rem 2rem;
        margin-right: 0.2rem;
        cursor: pointer;
        background: #90CAF9;
        font-weight: bold;
        transition: background ease 0.2s;
    }

    .tabs .tab {
        order: 99;
    / / Put the tabs last flex-grow: 1;
        width: 100%;
        display: none;
        padding: 1rem;
        background: #fff;
    }

    .tabs input[type="radio"] {
        display: none;
    }

    .tabs input[type="radio"]:checked + label {
        background: #fff;
    }

    .tabs input[type="radio"]:checked + label + .tab {
        display: block;
    }

    @media (max-width: 45em) {
        .tabs .tab,
        .tabs label {
            order: initial;
        }

        .tabs label {
            width: 100%;
            margin-right: 0;
            margin-top: 0.2rem;
        }
    }

</style>

<body class="font-montserrat">

<jsp:include page="common/loader.jsp"/>

<div id="main_content">

    <jsp:include page="common/menu-small.jsp"/>

    <jsp:include page="common/right-sidebar.jsp"/>

    <jsp:include page="common/userDiv.jsp"/>

    <jsp:include page="common/menu.jsp"/>


    <div class="page">
        <jsp:include page="common/page-top.jsp"/>

        <div class="mapouter">
            <div class="gmap_canvas">
                <h3>Job locations</h3>
                <iframe width="776" height="273" id="gmap_canvas"
                        src="https://maps.google.com/maps?q=Baku,Azerbaijan&t=&z=13&ie=UTF8&iwloc=&output=embed"
                        frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                <a href="https://www.bitgeeks.net/embed-google-map/"></a>
            </div>
        </div>

        <div class="tabs">
            <input type="radio" name="tabs" id="tabone">
            <label id="lastApplied" for="tabone">The last job applications</label>
            <div class="tab">
                <form method="GET">
                    <div class="row">
                    <div id="last-applied-job"></div>
                    </div>
                </form>
            </div>

            <input type="radio" name="tabs" id="tabtwo">
            <label for="tabtwo">Recommended jobs</label>
            <div class="tab">
                <form method="GET">
                    <h4>Recommended</h4>
                    <div class="row">
                        <div class="col-lg-12">


                            <%--                            foreach--%>

                            <div class="job-box jb-3 jb-4">
                                <div class="company-logo">
                                    <img src="../candidate-assets/img/company-logo/logo-3.png" alt="logo">
                                </div>
                                <div class="description">
                                    <div class="float-left">
                                        <h5 class="title"><a href="jobDetails">Manager</a></h5>
                                        <div class="candidate-listing-footer">
                                            <ul>
                                                <li><i class="flaticon-work"></i> Bank</li>
                                                <li><i class="flaticon-pin"></i> London</li>
                                                <li><i class="flaticon-time"></i> Full Time</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="div-right">
                                        <%--                                        <button class="viewButton" href="#" type="button" name="button">View</button>--%>
                                        <button class="applyButton" href="#" type="button" name="button">Apply</button>
                                    </div>
                                </div>
                            </div>



                        </div>
                    </div>
                </form>

            </div>

            <input type="radio" name="tabs" id="tabthree">
            <label id="interview" for="tabthree">Interview invitations</label>
            <div class="tab">

                <form method="GET">
                    <div class="row">
                        <div id="interview-invitation-list">
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <jsp:include page="common/footer.jsp"/>
    </div>
</div>

<jsp:include page="common/js.jsp"/>


<script>

    function getBaseUrl() {
        var re = new RegExp(/^.*\//);
        return re.exec(window.location.href);
    }

    $(document).on("click", ".reject", function (e) {

        e.preventDefault();

        $.ajax({
            method: "PUT",
            url: getBaseUrl() + "rest/cancel-application",
            data: {"id":e.target.id},
            success: function (response) {

                $("div").remove("#" + e.target.id);
            }
        })

    })



    $(document).on("click", "#interview", function () {

        // e.preventDefault();

        $.ajax({
            method: "GET",
            url: getBaseUrl() + "rest/interview",
            success: function (response) {
                console.log(response);
                response.forEach(function (item){
                    console.log(item);
                    var time = new Date(item.interviewDate);
                    var hours = time.getHours()+12;
                    if(hours === 24){
                        hours = 0;
                    }
                    $('#interview-invitation-list').append(
                        '<div class="col-lg-12">\n' +
                        '                            <div class="job-box jb-3 jb-4"  id='+ item.id + '  >\n' +
                        '                                <div class="company-logo">\n' +
                        '                                    <img src="../candidate-assets/img/company-logo/logo-4.png" alt="logo">\n' +
                        '                                </div>\n' +
                        '                                <div class="description">\n' +
                        '                                    <div class="float-left">\n' +
                        '                                        <h5 class="title"><a href="jobDetails?id='+ item.job.id + '">'+ item.job.organization.name +'</a></h5>\n' +
                        '                                       <strong>Position:</strong> <strong id="position" >'+ item.job.position +'</strong><br>\n' +
                        '                                        <strong>Salary:</strong> <strong id="salary">'+ item.job.minSalary + '-' + item.job.maxSalary +'</strong><br>\n' +
                        '<%--                                        <strong>Work Hours:</strong>  <strong id="hours"></strong> <br>--%>\n' +
                        '                                        <strong>Address:</strong>  <strong id="address">'+ item.job.address.info + ' </strong> <br>\n' +
                        '                                        <strong>Date:</strong>  <strong id="date">' + time.getDate()+ '/' + (time.getMonth()+1) + '/' + time.getFullYear() +'/'+ hours + '</strong> <br>\n' +
                        '                                        <div class="candidate-listing-footer">\n' +
                        '                                            <ul>\n' +
                        '<%--                                                <li><i class="flaticon-work"></i> Hotel</li>--%>\n' +
                        '                                                <li><i class="flaticon-pin"></i><strong id="city">' + item.job.address.city.name + '</strong> </li>\n' +
                        '                                                <li><i class="flaticon-time"></i> <strong id="jobType">' + item.job.type + '</strong></li>\n' +
                        '                                            </ul>\n' +
                        '                                        </div>\n' +
                        '                                    </div>\n' +
                        '                                    <div class="div-right">\n' +
                        '                                        <input id='+ item.id + ' class="rejectButton" href="#" type="submit" " value="Reject" >\n' +
                        '                                        <button class="applyButton" href="#" type="button" name="button">Accept</button>\n' +
                        '                                    </div>\n' +
                        '                                </div>\n' +
                        '                            </div>\n' +
                        '\n' +
                        '\n' +
                        '\n' +

                        '\n' +
                        '\n' +
                        '\n' +
                        '                        </div>'
                    );

                });

            }
        })

    })

    $(document).on("click", ".rejectButton", function (e) {

        e.preventDefault();

        $.ajax({
            method: "PUT",
            url: getBaseUrl() + "rest/reject-interview",
            data: {"id": e.target.id},
            success: function (response) {
                console.log("a - "+response)

                $("div").remove("#" + e.target.id);
            }
        })
    })

    $(document).on("click", "#lastApplied", function () {

        $.ajax({
            method: "GET",
            url: getBaseUrl() + "rest/index",
            success: function (response) {
                console.log(response)
                response.forEach(function (item) {
                    $('#last-applied-job').append(
                        ' <div class="col-lg-12">\n' +
                        '\n' +
                        '                                <div class="job-box jb-3 jb-4" id=' + item.id + '>\n' +
                        '                                    <div class="company-logo">\n' +
                        '                                        <img src="../candidate-assets/img/company-logo/logo-1.png" alt="logo">\n' +
                        '                                    </div>\n' +
                        '                                    <div class="description">\n' +
                        '                                        <div class="float-left">\n' +
                        '                                            <h5 class="title"><a href="jobDetails?id=' + item.job.id + '"> ' + item.job.position + '</a></h5>\n' +
                        '                                            <div class="candidate-listing-footer">\n' +
                        '                                                <ul>\n' +
                        '                                                        <%-- <li><i class="flaticon-work"></i> Hotel</li>--%>\n' +
                        '                                                    <li><i class="flaticon-pin  "></i> ' +  item.candidate.address.city.name + '</li>\n' +
                        '                                                    <li><i class="flaticon-time  "></i> ' + item.job.type + '</li>\n' +
                        '                                                </ul>\n' +
                        '                                            </div>\n' +
                        '                                        </div>\n' +
                        '                                        <div class="div-right">\n' +
                        '                                                <%--  <button class="viewButton" href="job_Details.jsp" type="button" name="button">View</button>--%>\n' +
                        '                                                <%--  <button class="rejectButton" href="#" type="button" name="button">Cancel</button>--%>\n' +
                        '\n' +
                        '                                            <form method="post" action="cancel-application">\n' +
                        '                                                <input type="hidden" name="id" value=' + item.id + '>\n' +
                        '                                                <input  id=' + item.id + '  class="reject" type="submit" value="Cancel">\n' +
                        '                                            </form>\n' +
                        '                                        </div>\n' +
                        '                                    </div>\n' +
                        '                                </div>\n' +
                        '\n' +
                        '                        </div>'
                    );
                });
            }
        })
    })
</script>

</body>
</html>