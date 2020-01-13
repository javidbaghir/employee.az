<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from puffintheme.com/demo/epic/hr/laravel/public/hrms/index by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 12 Oct 2019 15:14:36 GMT -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
    <jsp:include page="common/meta.jsp"/>
<title>Dashboard - Laravel</title>

    <jsp:include page="common/customCss.jsp"/>


<!--Font Style-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600,300,700,400italic,300italic" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Montserrat:700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Lato:700' rel='stylesheet' type='text/css'>

    <!-- font-awesome.css -->
    <link href="assets/css/font-awesome.css" rel="stylesheet">

    <!-- Slick -->
    <link href="assets/css/slick.css" rel="stylesheet">
    <link href="assets/css/slick-theme.css" rel="stylesheet">

    <!-- pe-icon.css -->
    <link href="assets/css/pe-icon-7-stroke/pe-icon-7-stroke.css" rel="stylesheet">
    <link href="assets/css/pe-icon-7-stroke/helper.css" rel="stylesheet">

    <!-- User Defined Style -->
    <link href="assets/css/components.css" rel="stylesheet">

    <!--Bootstrap-->
    <link href="assets/css/bootstrap.css" rel="stylesheet">

    <!--Font Style-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600,300,700,400italic,300italic" rel="stylesheet" type="text/css">
    <style>
      .content-table{
        border-collapse: collapse;
        margin: 25px 0;
        font-size: 0.9em;
        min-width: 400px;
        border-radius: 5px 5px 0 0;
        overflow: hidden;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
      }

      .content-table thead tr {
        background-color: #009879;
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
        border-radius: 50px;
        cursor: pointer;
        color: white;
        font-family: "Helvetica";
        font-weight: 100;
        font-size: 10pt;
        padding: 10px;
        text-decoration: none;
        margin-top:1px;
        bottom: auto !important;
      }
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
<section class="job-alert-list sec-pad animated wow fadeIn" data-wow-delay="0.2s">
      <div class="container">
        <div class="table-responsive" style="border = 1">
          <table class="content-table">
            <thead>
              <tr>
                <th>Alert Name</th>
                <th>Keywords</th>
                <th>Tags</th>
                <th>Location</th>
                <th>Frequency</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><a href="">Test Alert</a></td>
                <td>Developer</td>
                <td>Developer</td>
                <td>Baku</td>
                <td class="frequency">
                  <p>Weekly</p>
                  <p>Next 21 October 2016 at 09.32 AM</p>
                </td>
                <td>
                  <p><a href=""><i class="fa fa-pencil"></i>Edit</a></p>
                  <p><a href=""><i class="fa fa-trash"></i>Delete</a></p>
                </td>
              </tr>
              <tr>
                <td><a href="">Test Alert</a></td>
                <td>Developer</td>
                <td>Developer</td>
                <td>Baku</td>
                <td class="frequency">
                  <p>Weekly</p>
                  <p>Next 21 October 2016 at 09.32 AM</p>
                </td>
                <td>
                  <p><a href=""><i class="fa fa-pencil"></i>Edit</a></p>
                  <p><a href=""><i class="fa fa-trash"></i>Delete</a></p>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
        <div class="text-center sec-h-pad-t">
          <a href="addAlert" class="btn pull-left greenbutton">Add Alert</a>
        </div>
      </div>
    </section>

        <jsp:include page="common/footer.jsp"/>
    </div>
</div>



<!-- Scripts -->
    <jsp:include page="common/js.jsp"/>

</body>


</html>
