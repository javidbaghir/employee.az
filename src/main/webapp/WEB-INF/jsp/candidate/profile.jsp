<%@ page import="java.util.ArrayList" %>
<%@ page import="az.employee.domain.Language" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<title>Profile</title>
<jsp:include page="common/meta.jsp"/>
<jsp:include page="common/css.jsp"/>
<style>
    .main-footer {
        margin-top: 100px;
        background: #333;
        color: #FFF;
        padding: 40px 5%;
    }

    .greenbutton {
        background-image: linear-gradient(#44dd88, #2eb489);
        background-color: #44dd88;
        border-radius: 5px;
        cursor: pointer;
        color: white;
        font-family: "Helvetica";
        font-weight: 100;
        font-size: 10pt;
        padding: 10px;
        text-decoration: none;
        margin-top: 1px;
        bottom: auto !important;
        width: 10%;
        margin-left: 800px;
    }

    .secondbutton {
        background-image: linear-gradient(#44dd88, #2eb489);
        background-color: #44dd88;
        border-radius: 5px;
        cursor: pointer;
        color: white;
        font-family: "Helvetica";
        font-weight: 100;
        font-size: 10pt;
        padding: 10px;
        text-decoration: none;
        margin-top: 100px;
        bottom: auto !important;
        width: 60%;
    }
</style>
</head>
<body class="font-montserrat">
<jsp:include page="common/loader.jsp"/>
<div id="main_content">
    <jsp:include page="common/menu-small.jsp"/>

    <jsp:include page="common/right-sidebar.jsp"/>

    <jsp:include page="common/userDiv.jsp"/>

    <jsp:include page="common/menu.jsp"/>

    <div class="page">

        <jsp:include page="common/page-top.jsp"/>

        <div class="dashboard-list">
            <h3 class="heading">Basic Info</h3>
            <div class="col-lg-9 col-md-9">
                <button class="greenbutton" type="button" name="button">
                    <a href="editProfile">Edit Profile</a>
                </button>
            </div>
            <div class="dashboard-message contact-2 bdr clearfix">
                <div class="row">
                    <div class="col-lg-3 col-md-3">
                        <!-- Edit profile photo -->
                        <div class="edit-profile-photo">
                            <form method="POST" action="/candidate/rest/profile/image" enctype="multipart/form-data">
                            <img alt="profile-photo" class="img-fluid" src="/candidate/rest/profile/image">
                            <div class="change-photo-btn">
                                <div class="photoUpload">

                                        <span>
                                            <i class="fa fa-upload"></i>
                                        </span>

                                    <input type="file" name="image" class="upload">
                                </div>
                            </div>
                                <input type="submit">
                            </form>
                        </div>
                        <button class="secondbutton" type="button" name="button"> Download generated CV</button>
                    </div>
                    <div class="col-lg-9 col-md-9">
                        <form action="#" method="GET" enctype="multipart/form-data">
                            <div class="row">

                                <div class="col-lg-6 col-md-6">
                                    <div class="form-group name">
                                        <label>First Name</label>
                                        <h3>${sessionScope.candidate.user.name}</h3>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="form-group email">
                                        <label>Last Name</label>
                                        <h3>${sessionScope.candidate.user.surname}</h3>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12">
                                    <div class="form-group mb-0 message">
                                        <label>Email</label>
                                        <h4>${sessionScope.candidate.user.email}</h4>
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6">
                                    <div class="form-group number">
                                        <label>Certifications</label> <br>

                                        <c:forEach items="${sessionScope.candidate.certificates}" var="cert">
                                            Name: ${cert.title} <br>
                                            Company: ${cert.company} <br>
                                            Date of issue: ${cert.certificateDate} <br>
                                        </c:forEach>
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6">
                                    <div class="form-group number">
                                        <label>Language</label> <br>

                                        <c:forEach items="${sessionScope.candidate.languages}" var="language">
                                            ${language.name} <br> <br>
                                            Reading: ${language.reading} <br>
                                            Speaking: ${language.speaking} <br>
                                            Writing: ${language.writing} <br>
                                            Listening: ${language.listening} <br> <br>
                                        </c:forEach>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="form-group number">
                                        <label>Position</label>
                                        <h4>${sessionScope.candidate.position}</h4>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12">
                                    <div class="form-group mb-0 message">
                                        <label>Address</label>
                                        <h4>${sessionScope.candidate.address.country.name}, ${sessionScope.candidate.address.city.name}, ${sessionScope.candidate.address.info}</h4>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12">
                                    <div class="form-group mb-0 message">
                                        <label>Phone</label>
                                        <h4>${sessionScope.candidate.user.phone}</h4>
                                    </div>
                                </div>

                                <div class="col-lg-12 col-md-12 col-sm-12">
                                    <div class="form-group mb-0 message">
                                        <label>Mobile</label>
                                        <h4>${sessionScope.candidate.user.mobile}</h4>
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6">
                                    <div class="form-group number">
                                        <label>Education</label> <br>

                                        <c:forEach items="${sessionScope.candidate.educationLevels}"
                                                   var="educationLevel">
                                            ${educationLevel.organizationName} <br>
                                            Education level: ${educationLevel.educationLevelName} <br>
                                            Start date: ${educationLevel.startDate} <br>
                                            End date: ${educationLevel.endDate} <br>
                                        </c:forEach>
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6">
                                    <div class="form-group subject">
                                        <label>Experience</label>
                                        <h4>Five years</h4>
                                    </div>
                                </div>

                                <div class="col-lg-12 col-md-12 col-sm-12">
                                    <div class="form-group mb-0 message">
                                        <label>Tags</label>
                                        <c:forEach items="${sessionScope.candidate.tags}" var="tag">
                                            ${tag.name} <br>
                                        </c:forEach>

                                    </div>
                                </div>

                            </div>

                        </form>
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
