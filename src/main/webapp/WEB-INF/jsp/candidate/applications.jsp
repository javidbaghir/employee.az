<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from puffintheme.com/demo/epic/hr/laravel/public/hrms/index by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 12 Oct 2019 15:14:36 GMT -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8"/>
<head>
    <jsp:include page="common/meta.jsp"/>
    <title>Dashboard - Laravel</title>
    <jsp:include page="common/css.jsp"/>
    <link rel="stylesheet" type="text/css" href="../../../css/style_II.css"/>
    <link rel="stylesheet" type="text/css" href="../../../css/responsive2.css"/>


    <link rel="stylesheet" type="text/css" href="../candidate-assets/css/ie10-viewport-bug-workaround.css">

    <style>
        .main-footer {
            margin-top: 100px;
            background: #333;
            color: #FFF;
            padding: 40px 5%;
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

        /*.dashboard-widget.big-counter ul.list-inline li + li {*/
        /*    display: none;*/
        /*}*/

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
        <div class="submit-address dashboard-list">
            <h4>Applications</h4>
            <div class="row">
                <div id="applications"></div>
                <div class="col-lg-12">
                    <c:if test="${applicationResult != null}">
                        ${applicationResult} <br/>
                    </c:if>
                    <c:forEach items="${appliedJob}" var="app">
                        <div class="job-box jb-3 jb-4" id="${app.id}">
                            <div class="company-logo">
                                <img src="../candidate-assets/img/company-logo/logo-1.png" alt="logo">
                            </div>
                            <div class="description">
                                <div class="float-left">
                                    <h5 class="title"><a href="jobDetails?id=${app.job.id}">${app.job.position}</a></h5>
                                    <div class="candidate-listing-footer">
                                        <ul>
                                                <%--  <li><i class="flaticon-work"></i> Hotel</li>--%>
                                            <li><i class="flaticon-pin"></i> ${app.candidate.address.city.name}</li>
                                            <li><i class="flaticon-time"></i> ${app.job.type.name()}</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="div-right">
                                        <%--    <button class="viewButton" href="jobDetails" type="button" name="button">View</button>--%>
                                        <%--    <c:forEach items="${reject}" var="reject">--%>
                                    <form method="post" action="cancel-application">
                                        <input type="hidden" name="id" value="${app.id}">
                                        <input id="${app.id}" class="rejectButton" type="submit" value="Cancel">
                                    </form>

                                        <%--    <input type="file" class="upload">--%>
                                        <%-- </c:forEach>--%>
                                        <%--    <input type="submit" name="?id=4" value="Reject"/>--%>

                                </div>
                            </div>
                        </div>


                    </c:forEach>




                    <%--                                    <script>--%>
                    <%--                                        var ID = function () {--%>
                    <%--                                            // Math.random should be unique because of its seeding algorithm.--%>
                    <%--                                            // Convert it to base 36 (numbers + letters), and grab the first 9 characters--%>
                    <%--                                            // after the decimal.--%>
                    <%--                                            return '_' + Math.random().toString(36).substr(2, 9);--%>
                    <%--                                        };--%>
                    <%--                                    </script>--%>
                    <%--                                    <div class="job-box jb-3 jb-4">--%>
                    <%--                                        <div class="company-logo">--%>
                    <%--                                            <img src="../candidate-assets/img/company-logo/logo-2.png" alt="logo">--%>
                    <%--                                        </div>--%>
                    <%--                                        <div class="description">--%>
                    <%--                                            <div class="float-left">--%>
                    <%--                                                <h5 class="title"><a href="jobDetails">Media and Public Relation Executive</a></h5>--%>
                    <%--                                                <div class="candidate-listing-footer">--%>
                    <%--                                                    <ul>--%>
                    <%--                                                        <li><i class="flaticon-work"></i> Hotel</li>--%>
                    <%--                                                        <li><i class="flaticon-pin"></i> New York City</li>--%>
                    <%--                                                        <li><i class="flaticon-time"></i> Full Time</li>--%>
                    <%--                                                    </ul>--%>
                    <%--                                                </div>--%>
                    <%--                                            </div>--%>
                    <%--                                            <div class="div-right">--%>
                    <%--                                                <button class="viewButton" href="#" type="button" name="button">View</button>--%>
                    <%--                                                <button class="rejectButton" href="#" type="button" name="button">Reject</button>--%>
                    <%--                                            </div>--%>
                    <%--                                        </div>--%>
                    <%--                                    </div>--%>




<%--    <c:when test="${currentPage==1}">--%>
        <%--        <li style="display:none;"><a href="applications?page=${currentPage - 1}">Prev.</a></li>--%>

        <%--        <c:forEach begin="1" end="${pageCount}" var="p">--%>
        <%--            <c:choose>--%>
        <%--                <c:when test="${p == currentPage}">--%>
        <%--                    <li class=" active-color--%>
        <%--                                    "><a href="applications?page=${p}">${p}</a></li>--%>
        <%--                </c:when>--%>
        <%--                <c:otherwise>--%>
        <%--                    <li><a href="applications?page=${p}">${p}</a></li>--%>
        <%--                </c:otherwise>--%>
        <%--            </c:choose>--%>
        <%--        </c:forEach>--%>
        <%--    </c:when>--%>

        <%--    <c:otherwise>--%>
        <%--        <li ><a href="applications?page=${currentPage - 1}">Prev</a></li>--%>
        <%--        <c:forEach begin="1" end="${pageCount}" var="p">--%>
        <%--            <c:choose>--%>
        <%--                <c:when test="${p == currentPage}">--%>
        <%--                    <li class=" active-color"><a href="applications?page=${p}">${p}</a></li>--%>
        <%--                </c:when>--%>
        <%--                <c:otherwise>--%>
        <%--                    <li><a href="applications?page=${p}">${p}</a></li>--%>
        <%--                </c:otherwise>--%>
        <%--            </c:choose>--%>

        <%--        </c:forEach>--%>
        <%--        <li><a href="applications?page=${currentPage + 1}">Next</a></li>--%>

        <%--    </c:otherwise>--%>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 visible-sm visible-xs">

                    <div class="pager_wrapper gc_blog_pagination">

                        <ul class="pagination">

                            <li ><a href="applications?page=${currentPage - 1}">Prev</a></li>

                            <c:forEach begin="1" end="${pageCount}" var="p">
                                <c:choose>
                                    <c:when test="${p == currentPage}">
                                        <li ><a class="active-color" href="applications?page=${p}">${p}</a></li>
                                    </c:when>
                                    <c:otherwise>
                                        <li><a href="applications?page=${p}">${p}</a></li>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                            <li><a href="applications?page=${currentPage + 1}">Next</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="common/footer.jsp"/>
    </div>
</div>


<!-- Scripts -->
<jsp:include page="common/js.jsp"/>


<script>

    function getBaseUrl() {
        var re = new RegExp(/^.*\//);
        return re.exec(window.location.href);
    }


    $(document).on("click", ".rejectButton", function (e) {

        e.preventDefault();

        $.ajax({
            method: "PUT",
            url: getBaseUrl() + "rest/cancel-application",
            data: {"id": e.target.id},
            success: function (response) {

                $("div").remove("#" + e.target.id);
            }
        })
    })



    <%--$(document).on("click", "applications", function () {--%>
    <%--    $.ajax({--%>
    <%--        method: "GET",--%>
    <%--        url: getBaseUrl() + "rest/applocations",--%>
    <%--        success: function (response) {--%>
    <%--            response.forEach(function (item) {--%>
    <%--                $('#applications').append(--%>
    <%--                    '<div class="col-lg-12">' +--%>
    <%--                    '       <div class="job-box jb-3 jb-4" id=' + item.id + '>\n' +--%>
    <%--                    '                            <div class="company-logo">\n' +--%>
    <%--                    '                                <img src="../candidate-assets/img/company-logo/logo-1.png" alt="logo">\n' +--%>
    <%--                    '                            </div>\n' +--%>
    <%--                    '                            <div class="description">\n' +--%>
    <%--                    '                                <div class="float-left">\n' +--%>
    <%--                    '                                    <h5 class="title"><a href="jobDetails?id= ' + item.job.id + '> ' + item.job.position + '</a></h5>\n' +--%>
    <%--                    '                                    <div class="candidate-listing-footer">\n' +--%>
    <%--                    '                                        <ul>\n' +--%>
    <%--                    '                                                &lt;%&ndash;  <li><i class="flaticon-work"></i> Hotel</li>&ndash;%&gt;\n' +--%>
    <%--                    '                                            <li><i class="flaticon-pin"></i>' +  item.candidate.address.city.name + '</li>\n' +--%>
    <%--                    '                                            <li><i class="flaticon-time"></i> ' + item.job.type + '</li>\n' +--%>
    <%--                    '                                        </ul>\n' +--%>
    <%--                    '                                    </div>\n' +--%>
    <%--                    '                                </div>\n' +--%>
    <%--                    '                                <div class="div-right">\n' +--%>
    <%--                    '                                        &lt;%&ndash;    <button class="viewButton" href="jobDetails" type="button" name="button">View</button>&ndash;%&gt;\n' +--%>
    <%--                    '                                        &lt;%&ndash;    <c:forEach items="${reject}" var="reject">&ndash;%&gt;\n' +--%>
    <%--                    '                                    <form method="post" action="cancel-application">\n' +--%>
    <%--                    '                                        <input type="hidden" name="id" value=' + item.id + '>\n' +--%>
    <%--                    '                                        <input id=' + item.id + ' class="rejectButton" type="submit" value="Cancel">\n' +--%>
    <%--                    '                                    </form>\n' +--%>
    <%--                    '\n' +--%>
    <%--                    '                                        &lt;%&ndash;    <input type="file" class="upload">&ndash;%&gt;\n' +--%>
    <%--                    '                                        &lt;%&ndash; </c:forEach>&ndash;%&gt;\n' +--%>
    <%--                    '                                        &lt;%&ndash;    <input type="submit" name="?id=4" value="Reject"/>&ndash;%&gt;\n' +--%>
    <%--                    '\n' +--%>
    <%--                    '                                </div>\n' +--%>
    <%--                    '                            </div>\n' +--%>
    <%--                    '                        </div>\n'--%>
    <%--                )--%>
    <%--            })--%>
    <%--        }--%>
    <%--    })--%>

    <%--})--%>

</script>

</body>


</html>