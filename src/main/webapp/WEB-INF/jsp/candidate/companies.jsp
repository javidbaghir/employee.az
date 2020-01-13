<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from puffintheme.com/demo/epic/hr/laravel/public/hrms/index by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 12 Oct 2019 15:14:36 GMT -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
    <jsp:include page="common/meta.jsp"/>
<title>Dashboard - Laravel</title>

    <jsp:include page="common/css.jsp"/>

<style>
  .rejectButton{
    background-color: #F31507;
    border-radius: 7px;
    color: white;
  }
  .rejectButton:hover{
    background-color: #FA3C30;
    border-radius: 7px;
    color: white;
  }
  .viewButton{
    background-color: #00C5D1;
    border-radius: 7px;
    color: white;
  }
  .viewButton:hover{
    background-color: #17DDE9;
    border-radius: 7px;
    color: white;
  }
  .applyButton{
    background-color: #0BAF00;
    border-radius: 7px;
    color: white;
  }
  .applyButton:hover{
    background-color: #1BDA0E;
    border-radius: 7px;
    color: white;
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
<div class="submit-address dashboard-list">
  <form method="GET">
          <h4>Companies</h4>
          <div class="row">
                <div class="col-lg-12">
                      <div class="job-box jb-3 jb-4">
                            <div class="company-logo">
                                      <img src="../candidate-assets/img/company-logo/logo-4.png" alt="logo">
                                  </div>
                                  <div class="description">
                                      <div class="float-left">
                                          <h5 class="title"><a href="jobDetails">Company name</a></h5>
                                          <div class="candidate-listing-footer">
                                              <ul>
                                                  <li><i class="flaticon-work"></i> Bank</li>
                                                  <li><i class="flaticon-pin"></i> Baku</li>

                                              </ul>
                                          </div>
                                      </div>
                                      <div class="div-right">
                                          <button class="viewButton" href="#" type="button" name="button">Jobs</button>
                                          <button class="viewButton" href="#" type="button" name="button">View profile</button>
                                          <button class="applyButton" href="#" type="button" name="button">Follow</button>
                                      </div>
                                  </div>
                              </div>
                              <div class="job-box jb-3 jb-4">
                                    <div class="company-logo">
                                              <img src="../candidate-assets/img/company-logo/logo-3.png" alt="logo">
                                          </div>
                                          <div class="description">
                                              <div class="float-left">
                                                  <h5 class="title"><a href="jobDetails">Company name</a></h5>
                                                  <div class="candidate-listing-footer">
                                                      <ul>
                                                          <li><i class="flaticon-work"></i> Electronics</li>
                                                          <li><i class="flaticon-pin"></i> Berlin</li>

                                                      </ul>
                                                  </div>
                                              </div>
                                              <div class="div-right">
                                                  <button class="viewButton" href="#" type="button" name="button">Jobs</button>
                                                  <button class="viewButton" href="#" type="button" name="button">View profile</button>
                                                  <button class="applyButton" href="#" type="button" name="button">Follow</button>
                                              </div>
                                          </div>
                                      </div>
                                      <div class="job-box jb-3 jb-4">
                                            <div class="company-logo">
                                                      <img src="../candidate-assets/img/company-logo/logo-4.png" alt="logo">
                                                  </div>
                                                  <div class="description">
                                                      <div class="float-left">
                                                          <h5 class="title"><a href="jobDetails">Company name</a></h5>
                                                          <div class="candidate-listing-footer">
                                                              <ul>
                                                                  <li><i class="flaticon-work"></i>Trade company</li>
                                                                  <li><i class="flaticon-pin"></i> London</li>

                                                              </ul>
                                                          </div>
                                                      </div>
                                                      <div class="div-right">
                                                          <button class="viewButton" href="#" type="button" name="button">Jobs</button>
                                                          <button class="viewButton" href="#" type="button" name="button">View profile</button>
                                                          <button class="applyButton" href="#" type="button" name="button">Follow</button>
                                                      </div>
                                                  </div>
                                              </div>
                                              <div class="job-box jb-3 jb-4">
                                                    <div class="company-logo">
                                                              <img src="../candidate-assets/img/company-logo/logo-3.png" alt="logo">
                                                          </div>
                                                          <div class="description">
                                                              <div class="float-left">
                                                                  <h5 class="title"><a href="jobDetails">Company name</a></h5>
                                                                  <div class="candidate-listing-footer">
                                                                      <ul>
                                                                          <li><i class="flaticon-work"></i> Logistics</li>
                                                                          <li><i class="flaticon-pin"></i> Brussels</li>

                                                                      </ul>
                                                                  </div>
                                                              </div>
                                                              <div class="div-right">
                                                                  <button class="viewButton" href="#" type="button" name="button">Jobs</button>
                                                                  <button class="viewButton" href="#" type="button" name="button">View profile</button>
                                                                  <button class="applyButton" href="#" type="button" name="button">Follow</button>
                                                              </div>
                                                          </div>
                                                      </div>
                                                      <div class="job-box jb-3 jb-4">
                                                            <div class="company-logo">
                                                                      <img src="../candidate-assets/img/company-logo/logo-1.png" alt="logo">
                                                                  </div>
                                                                  <div class="description">
                                                                      <div class="float-left">
                                                                          <h5 class="title"><a href="jobDetails">Company name</a></h5>
                                                                          <div class="candidate-listing-footer">
                                                                              <ul>
                                                                                  <li><i class="flaticon-work"></i> Hotel</li>
                                                                                  <li><i class="flaticon-pin"></i> Warsaw</li>

                                                                              </ul>
                                                                          </div>
                                                                      </div>
                                                                      <div class="div-right">
                                                                          <button class="viewButton" href="#" type="button" name="button">Jobs</button>
                                                                          <button class="viewButton" href="#" type="button" name="button">View profile</button>
                                                                          <button class="applyButton" href="#" type="button" name="button">Follow</button>
                                                              </div>
                                                  </div>
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

<!-- Mirrored from puffintheme.com/demo/epic/hr/laravel/public/hrms/index by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 12 Oct 2019 15:15:40 GMT -->
</html>
