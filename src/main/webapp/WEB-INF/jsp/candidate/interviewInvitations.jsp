<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from puffintheme.com/demo/epic/hr/laravel/public/hrms/index by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 12 Oct 2019 15:14:36 GMT -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
    <jsp:include page="common/meta.jsp"/>
<title>Dashboard - Laravel</title>


    <jsp:include page="common/customCss.jsp"/>
<link rel="stylesheet" href="../assets/css/interviewInvitations.css">
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
<div id="calendar"></div>
<script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.5.1/moment.min.js"></script>

        <jsp:include page="common/footer.jsp"/>
    </div>
</div>

<!-- Scripts -->
<jsp:include page="common/js.jsp"/>
<script src="../assets/js/interviewInvitations.js"></script>
</body>

</html>