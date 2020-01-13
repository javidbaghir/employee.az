<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from puffintheme.com/demo/epic/hr/laravel/public/hrms/index by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 12 Oct 2019 15:14:36 GMT -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
    <jsp:include page="common/meta.jsp"/>
<title>Dashboard - Laravel</title>

    <jsp:include page="common/customCss.jsp"/>

<!-- Custom stylesheet -->
    <link rel="stylesheet" type="text/css" href="../candidate-assets/css/style.css">
    <link rel="stylesheet" type="text/css" id="style_sheet" href="../candidate-assets/css/skins/midnight-blue.css">

    <!-- Favicon icon -->
    <link rel="shortcut icon" href="../candidate-assets/img/favicon.ico" type="image/x-icon" >

    <!-- Google fonts -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,300,700">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Dosis%7CMontserrat:200,300,400,500,600,700,800,900%7CNunito+Sans:200,300,400,600,700,800,900">

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

<div class="submit-address dashboard-list">
                        <form method="GET">
                            <h2>Notifications</h2>
                            <div class="row pad-20">
                                <div class="col-lg-12">
                                    <div class="alert alert-success" >
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"></button>
                                        <h3>2 new jobs added to your alerts</h3>
                                    </div>
                                    <div class="alert alert-info">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"></button>
                                        <h3>You have an interview today !</h3>
                                    </div>
                                    <div class="alert alert-warning" >
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"></button>
                                        <h3>3 new jobs added to your alerts</h3>
                                    </div>
                                    <div class="alert alert-danger" >
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"></button>
                                        <h3>We have new job recommendations for you</h3>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
        <jsp:include page="common/footer.jsp"/>
    </div>
</div>



<!-- Scripts -->
<jsp:include page="common/js.jsp"/>

</body>


</html>
