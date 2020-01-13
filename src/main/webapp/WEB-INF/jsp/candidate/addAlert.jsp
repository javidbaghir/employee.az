<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from puffintheme.com/demo/epic/hr/laravel/public/hrms/index by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 12 Oct 2019 15:14:36 GMT -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>

<title>Add Alert</title>
    <jsp:include page="common/meta.jsp"/>


    <jsp:include page="common/customCss.jsp"/>
    <style>
.main-footer{
  margin-top: 100px;
  background: #333;
  color: #FFF;
  padding: 40px 5%;
}
.alert-form {
  background-color: #bfc9ca;
  border-radius: 5px;
  max-width: 500px;
  margin: 2rem auto;
  border: 2px solid #e74c3c;
  padding: 2rem;
}
.alert-form input, .alert-form textarea {
  color: white;
  border-radius: 5px;
  display: block;
  width: 100%;
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
  width: 100%;
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
<section class="job-alert-add sec-pad animated wow fadeIn" data-wow-delay="0.2s">
      <div class="container">
        <form class="alert-form">
          <div class="col-md-12">
            <div class="form-group">
              <div class="col-md-3 col-sm-3">
                <h4>Alert Name</h4>
              </div>
              <div class="col-md-9 col-sm-9">
                <input type="text" class="def-input" placeholder="Short title for your job">
              </div>
            </div>
            <div class="form-group">
              <div class="col-md-3 col-sm-3">
                <h4>Keyword</h4>
              </div>
              <div class="col-md-9 col-sm-9">
                <input type="text" class="def-input" placeholder="Job keywords">
              </div>
            </div>
            <div class="form-group">
              <div class="col-md-3 col-sm-3">
                <h4>Tags</h4>
              </div>
              <div class="col-md-9 col-sm-9">
                <input type="text" class="def-input" placeholder="Jobs Tags">
              </div>
            </div>
            <div class="form-group">
              <div class="col-md-3 col-sm-3">
                <h4>Location</h4>
              </div>
              <div class="col-md-9 col-sm-9">
                <input type="text" class="def-input" placeholder="Choose location you want to work">
              </div>
            </div>
            <div class="form-group">
              <div class="col-md-3 col-sm-3">
              <h4>Job Type</h4>
              </div>
              <div class="col-md-9 col-sm-9">
                <select class="def-input def-select">
                  <option value="" selected disabled>Choose Type</option>
                  <option value="fulltime">Full Time</option>
                  <option value="parttime">Part Time</option>
                  <option value="freelance">Freelance</option>
                  <option value="internship">Internship</option>
                  <option value="temporary">Temporary</option>
                </select>
              </div>
            </div>
            <div class="form-group">
              <div class="col-md-3 col-sm-3">
              <h4>Email frequency</h4>
              </div>
              <div class="col-md-9 col-sm-9">
                <select class="def-input def-select">
                  <option value="" selected disabled>Choose Type</option>
                  <option value="Daily">Daily</option>
                  <option value="Weekly">Weekly</option>
                  <option value="Monthly">Monthly</option>
                </select>
              </div>
            </div>
            <div class="text-center sec-q-pad-t">
              <a href="" class="def-btn greenbutton">Add Alert</a>
            </div>
          </div>
        </form>
      </div>
    </section>
        <jsp:include page="common/footer.jsp"/>

    </div>
</div>



<!-- Scripts -->
<jsp:include page="common/js.jsp"/>


</body>

</html>
