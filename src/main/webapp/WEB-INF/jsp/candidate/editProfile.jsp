<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">


<meta http-equiv="content-type" content="text/html;charset=UTF-8"/>
<head>
    <jsp:include page="common/meta.jsp"/>
    <title>Dashboard - Laravel</title>


    <jsp:include page="common/customCss.jsp"/>
    <!-- Custom stylesheet -->
    <link rel="stylesheet" type="text/css" href="../candidate-assets/css/style.css">
    <link rel="stylesheet" type="text/css" id="style_sheet" href="../candidate-assets/css/skins/midnight-blue.css">
    <!-- pe-icon.css -->
    <link href="assets/css/pe-icon-7-stroke/pe-icon-7-stroke.css" rel="stylesheet">
    <link href="assets/css/pe-icon-7-stroke/helper.css" rel="stylesheet">
    <!--Bootstrap-->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!-- font-awesome.css -->
    <link href="assets/css/font-awesome.css" rel="stylesheet">
    <!--Font Style-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600,300,700,400italic,300italic" rel="stylesheet" type="text/css">
    <style>
        .main-footer {
            margin-top: 100px;
            background: #333;
            color: #FFF;
            padding: 40px 5%;
        }
        .content-table{
            border-collapse: collapse;
            margin: 25px 0;
            font-size: 0.9em;
            min-width: 500px;
            border-radius: 5px 5px 0 0;
            overflow: hidden;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
        }

        .content-table thead tr {
            background-color: #923232;
            color: #ffffff;
            text-align: left;
            font-weight: bold;
        }
        .content-table th,
        .content-table td {
            padding: 12px 15px;
        }
        .content-table tbody tr {
            border-bottom: 1px solid #dddddd
        }
        .content-table tbody tr:nth-of-type(even){
            background-color: #f3f3f3;
        }
        .content-table tbody tr:last-of-type {
            border-bottom: 2px solid #009879;
        }
        .greenbutton{
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
            margin-top:1px;
            bottom: auto !important;
            width: 10%;
            margin-left:800px;
        }

        #somebutton
        {
            display: inline-block;
            vertical-align: bottom;
            background-color: #44dd88;
            border-radius: 5px;
            cursor: pointer;
            color: white;
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
        <div class="dashboard-list">
            <h3 class="heading">Basic Info</h3>
            <div class="dashboard-message contact-2 bdr clearfix">
                <button class="greenbutton" type="button" name="button">Save changes</button>
                <div class="row">
                    <div class="col-lg-3 col-md-3">
                        <!-- Edit profile photo -->
                        <div class="edit-profile-photo">
                            <img src="https://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=300"
                                 alt="profile-photo" class="img-fluid">
                            <div class="change-photo-btn">
                                <div class="photoUpload">
                                    <span><i class="fa fa-upload"></i></span>
                                    <input type="file" class="upload">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-9">
                        <form action="#" method="GET" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                                    <div class="form-group name">
                                        <label>First Name</label>
                                        <input type="text" name="name" class="form-control"
                                               value="${sessionScope.candidate.user.name}">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="form-group email">
                                        <label>Last Name</label>
                                        <input type="text" name="surname" class="form-control"
                                               value="${sessionScope.candidate.user.surname}">
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6">
                                    <div class="form-group email">
                                        <label>Position</label>
                                        <input type="text" name="position" class="form-control"
                                               value="${sessionScope.candidate.position}">
                                    </div>
                                </div>


                                <div class="col-lg-6 col-md-6">
                                    <div class="form-group number">
                                        <label>Email</label>
                                        <input type="email" name="email" class="form-control"
                                               value="${sessionScope.candidate.user.email}">
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6">
                                    <div class="form-group subject">
                                        <label>Phone</label>
                                        <input type="text" name="phone" class="form-control"
                                               value="${sessionScope.candidate.user.phone}">
                                    </div>
                                </div>


                                <div class="col-lg-6 col-md-6">
                                    <div class="form-group subject">
                                        <label>Mobile</label>
                                        <input type="text" name="mobile" class="form-control"
                                               value="${sessionScope.candidate.user.mobile}">
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6">
                                    <div class="form-group subject">
                                        <label>Country</label>

                                        <select id="country">
                                            <option value="">Select</option>
                                            <c:forEach items="${countryList}" var="country">
                                                <c:choose>
                                                    <c:when test="${country.id == sessionScope.candidate.address.country.id}">
                                                        <option value="${country.id}" selected>${country.name}</option>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <option value="${country.id}">${country.name}</option>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                        </select>

                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="form-group subject">
                                        <label>City</label>

                                        <select id="city">
                                            <option value="">Select</option>
                                            <c:forEach items="${cityList}" var="city">
                                                <c:choose>
                                                    <c:when test="${city.id == sessionScope.candidate.address.city.id}">
                                                        <option value="${city.id}" selected>${city.name}</option>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <option value="${city.id}">${city.name}</option>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                        </select>

                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6">
                                    <div class="form-group number">
                                        <label>Address</label>
                                        <input type="text" name="address" class="form-control" placeholder="Address" value="${sessionScope.candidate.address.info}">
                                    </div>
                                </div>


                                <div class="col-lg-12 col-md-12">
                                    <div class="form-group email">
                                        <label>Experience</label>
                                        <div class="table-responsive" style="border: = 1">
                                        <table class="content-table">
                                            <thead>
                                            <tr>
                                                <th>Position</th>
                                                <th>Start Date</th>
                                                <th>End Date</th>
                                                <th>Country</th>
                                                <th>City</th>
                                                <th>Company</th>
                                                <th>Info</th>
                                                <th></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                                <C:forEach items="${sessionScope.candidate.jobHistories}" var="jobHistory">
                                                    <tr>
                                                <td>${jobHistory.position}</td>
                                                <td class="frequency">${jobHistory.startDate}</td>
                                                <td class="frequency">${jobHistory.endDate}</td>
                                                <td>${jobHistory.country.name}</td>
                                                <td>${jobHistory.city.name}</td>
                                                <td>${jobHistory.organization}</td>
                                                        <td>${jobHistory.info}</td>
                                                <td>
                                                    <p><a href=""><i class="fa fa-pencil"></i>Edit</a></p>
                                                    <p><a href=""><i class="fa fa-trash"></i>Delete</a></p>
                                                </td>
                                                </tr>
                                                </C:forEach>
                                            </tbody>
                                        </table>
                                            <button id="somebutton" >
                                                Add position
                                            </button>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-lg-12 col-md-12">
                                    <div class="form-group email">
                                        <label>Certification</label>
                                        <div class="table-responsive" style="border = 1">
                                            <table class="content-table">
                                                <thead>
                                                <tr>
                                                    <th>Title</th>
                                                    <th>Date of issue</th>
                                                    <th>Organisation</th>
                                                    <th></th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <C:forEach items="${sessionScope.candidate.certificates}" var="certificate">
                                                    <tr>
                                                        <td>${certificate.title}</td>
                                                        <td>${certificate.certificateDate}</td>
                                                        <td>${certificate.company}</td>
                                                        <td>
                                                            <p><a href=""><i class="fa fa-pencil"></i>Edit</a></p>
                                                            <p><a href=""><i class="fa fa-trash"></i>Delete</a></p>
                                                        </td>
                                                    </tr>
                                                </C:forEach>
                                                </tbody>
                                            </table>
                                            <button id="somebutton" >
                                                Add certificate
                                            </button>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12">
                                    <div class="form-group email">
                                        <label>Languages</label>
                                        <div class="table-responsive" style="border = 1">
                                            <table class="content-table">
                                                <thead>
                                                <tr>
                                                    <th>Language</th>
                                                    <th>Reading</th>
                                                    <th>Speaking</th>
                                                    <th>Writing</th>
                                                    <th>listening</th>
                                                    <th></th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <C:forEach items="${sessionScope.candidate.languages}" var="language">
                                                    <tr>
                                                        <td>${language.name}</td>
                                                        <td>${language.reading}</td>
                                                        <td>${language.speaking}</td>
                                                        <td>${language.writing}</td>
                                                        <td>${language.listening}</td>
                                                        <td>
                                                            <p><a href=""><i class="fa fa-pencil"></i>Edit</a></p>
                                                            <p><a href=""><i class="fa fa-trash"></i>Delete</a></p>
                                                        </td>
                                                    </tr>
                                                </C:forEach>
                                                </tbody>
                                            </table>
                                            <button id="somebutton" >
                                                Add language
                                            </button>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-12 col-md-12">
                                    <div class="form-group subject">
                                        <label>Education</label>
                                        <div class="table-responsive" style="border = 1">
                                            <table class="content-table">
                                                <thead>
                                                <tr>
                                                    <th>Organization</th>
                                                    <th>Level</th>
                                                    <th>Start Date</th>
                                                    <th>End Date</th>
                                                    <th></th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <C:forEach items="${sessionScope.candidate.educationLevels}" var="el">
                                                    <tr>
                                                        <td>${el.organizationName}</td>
                                                        <td>${el.educationLevelName}</td>
                                                        <td>${el.startDate}</td>
                                                        <td>${el.endDate}</td>
                                                        <td>
                                                            <p><a href=""><i class="fa fa-pencil"></i>Edit</a></p>
                                                            <p><a href=""><i class="fa fa-trash"></i>Delete</a></p>
                                                        </td>
                                                    </tr>
                                                </C:forEach>
                                                </tbody>
                                            </table>
                                            <button id="somebutton" >
                                                Add education
                                            </button>
                                        </div>
                                    </div>
                                </div>


                                <div class="col-lg-12 col-md-12">
                                    <div class="form-group subject">
                                        <label>Tags</label> <br>
                                        <c:forEach items="${sessionScope.candidate.tags}" var="tag">
                                            <input type="text" value=" ${tag.name}" >  <br>
                                        </c:forEach>
                                    </div>
                                    <button id="somebutton" >
                                        Add tag
                                    </button>
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
<script
        src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>

<script>
    $(document).ready(function () {

        $('#country').on('change', function () {
           var countryId = $('#country option:selected').val();
           console.log('selected country id = ' + countryId);
           $.ajax({
               url: 'city-list',
               data: {
                   "country_id": countryId
               },
               success: function (response) {
                   console.log('server response = ' + response);
                   $('#city').empty();
                   var option = new Option('Select', -1);
                   $('#city').append(option);

                   for(i = 0; i < response.length; i++) {
                       var option = new Option(response[i].name, response[i].id);
                       $('#city').append(option);
                   }
               }
           });
        });


        $('#btnget').click(function () {

            alert($('#chkveg').val());

        })

    });
</script>

</body>


</html>
