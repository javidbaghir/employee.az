<!DOCTYPE html>
<html lang="en">

<head>
    <title>Companies</title>
    <jsp:include page="../common/meta.jsp"/>

    <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.min.css">

    <link rel="stylesheet" href="../assets/plugins/sweetalert/sweetalert.css">


    <!-- Custom Css -->
    <jsp:include page="../common/css.jsp"/>
</head>

<body class="font-montserrat">

<!-- Page Loader -->
<jsp:include page="../common/pageLoader.jsp"/>

<div id="main_content">

    <div id="header_top" class="header_top">
        <div class="container">
            <div class="hleft">
                <a class="header-brand" href="index.jsp"><i class="fe fe-command brand-logo"></i></a>
                <div class="dropdown">
                    <a href="../pages/search.jsp" class="nav-link icon"><i class="fa fa-search"></i></a>
                    <a href="../pages/calendar.jsp" class="nav-link icon app_inbox"><i class="fa fa-calendar"></i></a>
                    <a href="../pages/contact.jsp" class="nav-link icon xs-hide"><i class="fa fa-id-card-o"></i></a>
                    <a href="../chatapp/chat.jsp" class="nav-link icon xs-hide"><i class="fa fa-comments-o"></i></a>
                    <a href="../pages/filemanager.jsp" class="nav-link icon app_file xs-hide"><i
                            class="fa fa-folder-o"></i></a>
                </div>
            </div>
            <div class="hright">
                <div class="dropdown">
                    <a href="javascript:void(0)" class="nav-link icon settingbar"><i class="fa fa-gear fa-spin"
                                                                                     data-toggle="tooltip"
                                                                                     data-placement="right"
                                                                                     title="Settings"></i></a>
                    <a href="javascript:void(0)" class="nav-link user_btn"><img class="avatar"
                                                                                src="../assets/images/user.png" alt=""
                                                                                data-toggle="tooltip"
                                                                                data-placement="right"
                                                                                title="User Menu"/></a>
                    <a href="javascript:void(0)" class="nav-link icon menu_toggle"><i class="fa  fa-align-left"></i></a>
                </div>
            </div>
        </div>
    </div>
    <div id="rightsidebar" class="right_sidebar">
        <a href="javascript:void(0)" class="p-3 settingbar float-right"><i class="fa fa-close"></i></a>
        <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#Settings" aria-expanded="true">Settings</a>
            </li>
            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#activity"
                                    aria-expanded="false">Activity</a></li>
        </ul>
        <jsp:include page="../common/tabcontentsettings.jsp"/>
    </div>
    <div class="user_div">
        <h5 class="brand-name mb-4">Epic HR<a href="javascript:void(0)" class="user_btn"><i class="icon-logout"></i></a>
        </h5>
        <div class="card">
            <div class="card-body">
                <div class="media">
                    <img class="avatar avatar-xl mr-3" src="../assets/images/sm/avatar1.jpg" alt="avatar">
                    <div class="media-body">
                        <h5 class="m-0">Sara Hopkins</h5>
                        <p class="text-muted mb-0">Webdeveloper</p>
                        <ul class="social-links list-inline mb-0 mt-2">
                            <li class="list-inline-item"><a href="javascript:void(0)" title="" data-toggle="tooltip"
                                                            data-original-title="Facebook"><i
                                    class="fa fa-facebook"></i></a></li>
                            <li class="list-inline-item"><a href="javascript:void(0)" title="" data-toggle="tooltip"
                                                            data-original-title="Twitter"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li class="list-inline-item"><a href="javascript:void(0)" title="" data-toggle="tooltip"
                                                            data-original-title="1234567890"><i class="fa fa-phone"></i></a>
                            </li>
                            <li class="list-inline-item"><a href="javascript:void(0)" title="" data-toggle="tooltip"
                                                            data-original-title="@skypename"><i class="fa fa-skype"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Statistics</h3>
                <div class="card-options">
                    <a href="#" class="card-options-collapse" data-toggle="card-collapse"><i
                            class="fe fe-chevron-up"></i></a>
                    <a href="#" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
                </div>
            </div>
            <div class="card-body">
                <div class="text-center">
                    <div class="row">
                        <div class="col-6 pb-3">
                            <label class="mb-0">Balance</label>
                            <h4 class="font-30 font-weight-bold">$545</h4>
                        </div>
                        <div class="col-6 pb-3">
                            <label class="mb-0">Growth</label>
                            <h4 class="font-30 font-weight-bold">27%</h4>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="d-block">Total Income<span class="float-right">77%</span></label>
                    <div class="progress progress-xs">
                        <div class="progress-bar bg-blue" role="progressbar" aria-valuenow="77" aria-valuemin="0"
                             aria-valuemax="100" style="width: 77%;"></div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="d-block">Total Expenses <span class="float-right">50%</span></label>
                    <div class="progress progress-xs">
                        <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="50" aria-valuemin="0"
                             aria-valuemax="100" style="width: 50%;"></div>
                    </div>
                </div>
                <div class="form-group mb-0">
                    <label class="d-block">Gross Profit <span class="float-right">23%</span></label>
                    <div class="progress progress-xs">
                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="23" aria-valuemin="0"
                             aria-valuemax="100" style="width: 23%;"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card b-none">
            <ul class="list-group">
                <li class="list-group-item d-flex">
                    <div class="box-icon sm rounded bg-blue"><i class="fa fa-credit-card"></i></div>
                    <div class="ml-3">
                        <div>+$29 New sale</div>
                        <a href="javascript:void(0)">Admin Template</a>
                        <div class="text-muted font-12">5 min ago</div>
                    </div>
                </li>
                <li class="list-group-item d-flex">
                    <div class="box-icon sm rounded bg-pink"><i class="fa fa-upload"></i></div>
                    <div class="ml-3">
                        <div>Project Update</div>
                        <a href="javascript:void(0)">New HTML page</a>
                        <div class="text-muted font-12">10 min ago</div>
                    </div>
                </li>
                <li class="list-group-item d-flex">
                    <div class="box-icon sm rounded bg-teal"><i class="fa fa-file-word-o"></i></div>
                    <div class="ml-3">
                        <div>You edited the file</div>
                        <a href="javascript:void(0)">reposrt.doc</a>
                        <div class="text-muted font-12">11 min ago</div>
                    </div>
                </li>
                <li class="list-group-item d-flex">
                    <div class="box-icon sm rounded bg-cyan"><i class="fa fa-user"></i></div>
                    <div class="ml-3">
                        <div>New user</div>
                        <a href="javascript:void(0)">Puffin web - view</a>
                        <div class="text-muted font-12">17 min ago</div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div id="left-sidebar" class="sidebar ">
        <h5 class="brand-name">Epic HR <a href="javascript:void(0)" class="menu_option float-right"><i
                class="icon-grid font-16" data-toggle="tooltip" data-placement="left"
                title="Grid & List Toggle"></i></a></h5>
        <nav id="left-sidebar-nav" class="sidebar-nav">
            <ul class="metismenu">
                <jsp:include page="../common/metismenu.jsp"/>
            </ul>
        </nav>
    </div>
    <div class="page">
        <div id="page_top" class="section-body">
            <div class="container-fluid">
                <div class="page-header">
                    <div class="left">
                        <h1 class="page-title">Companies</h1>
                        <div class="input-icon xs-hide">
                            <input type="text" class="form-control" placeholder="Search for...">
                            <span class="input-icon-addon"><i class="fe fe-search"></i></span>
                        </div>
                    </div>
                    <jsp:include page="../common/headerrightmenu.jsp"/>
                </div>
            </div>
        </div>
        <div class="section-body">
            <div class="container-fluid">
                <div class="d-flex justify-content-between align-items-center">
                    <ul class="nav nav-tabs page-header-tab">
                        <li class="nav-item"><a class="nav-link active" id="companies-tab" data-toggle="tab"
                                                href="#companies-list">List View</a></li>

                        <li class="nav-item"><a class="nav-link" id="companies-tab" data-toggle="tab"
                                                href="#companies-grid">Grid View</a></li>
                    </ul>
                    <div class="header-action">
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"><i
                                class="fe fe-plus mr-2"></i>Add
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <div class="section-body mt-3">
            <div class="container-fluid">
                <div class="tab-content mt-3">
                    <div class="tab-pane fade show active" id="companies-list" role="tabpanel">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Company List</h3>
                                <div class="card-options">
                                    <form>
                                        <div class="input-group">
                                            <input type="text" class="form-control form-control-sm"
                                                   placeholder="Search something..." name="s">
                                            <span class="input-group-btn ml-2"><button class="btn btn-icon"
                                                                                       type="submit"><span
                                                    class="fe fe-search"></span></button></span>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-vcenter table-hover mb-0 text-nowrap">
                                        <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Company Name</th>
                                            <th>Company Head</th>
                                            <th>Total Jobs</th>
                                            <th>Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>01</td>
                                            <td>
                                                <div class="font-15">Web Development</div>
                                            </td>
                                            <td>John Smith</td>
                                            <td>102</td>
                                            <td>
                                                <button type="button" class="btn btn-icon" title="View"><i
                                                        class="fa fa-eye"></i></button>
                                                <button type="button" class="btn btn-icon" title="Edit"><i
                                                        class="fa fa-edit"></i></button>
                                                <button type="button" class="btn btn-icon js-sweetalert" title="Delete"
                                                        data-type="confirm"><i class="fa fa-trash-o text-danger"></i>
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>02</td>
                                            <td>
                                                <div class="font-15">Marketing</div>
                                            </td>
                                            <td>Maryam Amiri</td>
                                            <td>13</td>
                                            <td>
                                                <button type="button" class="btn btn-icon" title="View"><i
                                                        class="fa fa-eye"></i></button>
                                                <button type="button" class="btn btn-icon" title="Edit"><i
                                                        class="fa fa-edit"></i></button>
                                                <button type="button" class="btn btn-icon js-sweetalert" title="Delete"
                                                        data-type="confirm"><i class="fa fa-trash-o text-danger"></i>
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>03</td>
                                            <td>
                                                <div class="font-15">App Development</div>
                                            </td>
                                            <td>Frank Camly</td>
                                            <td>21</td>
                                            <td>
                                                <button type="button" class="btn btn-icon" title="View"><i
                                                        class="fa fa-eye"></i></button>
                                                <button type="button" class="btn btn-icon" title="Edit"><i
                                                        class="fa fa-edit"></i></button>
                                                <button type="button" class="btn btn-icon js-sweetalert" title="Delete"
                                                        data-type="confirm"><i class="fa fa-trash-o text-danger"></i>
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>04</td>
                                            <td>
                                                <div class="font-15">Support</div>
                                            </td>
                                            <td>Gary Camara</td>
                                            <td>84</td>
                                            <td>
                                                <button type="button" class="btn btn-icon" title="View"><i
                                                        class="fa fa-eye"></i></button>
                                                <button type="button" class="btn btn-icon" title="Edit"><i
                                                        class="fa fa-edit"></i></button>
                                                <button type="button" class="btn btn-icon js-sweetalert" title="Delete"
                                                        data-type="confirm"><i class="fa fa-trash-o text-danger"></i>
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>05</td>
                                            <td>
                                                <div class="font-15">Accounts</div>
                                            </td>
                                            <td>Fidel Tonn</td>
                                            <td>11</td>
                                            <td>
                                                <button type="button" class="btn btn-icon" title="View"><i
                                                        class="fa fa-eye"></i></button>
                                                <button type="button" class="btn btn-icon" title="Edit"><i
                                                        class="fa fa-edit"></i></button>
                                                <button type="button" class="btn btn-icon js-sweetalert" title="Delete"
                                                        data-type="confirm"><i class="fa fa-trash-o text-danger"></i>
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>06</td>
                                            <td>
                                                <div class="font-15">PHP Open Source</div>
                                            </td>
                                            <td>Maryam Amiri</td>
                                            <td>37</td>
                                            <td>
                                                <button type="button" class="btn btn-icon" title="View"><i
                                                        class="fa fa-eye"></i></button>
                                                <button type="button" class="btn btn-icon" title="Edit"><i
                                                        class="fa fa-edit"></i></button>
                                                <button type="button" class="btn btn-icon js-sweetalert" title="Delete"
                                                        data-type="confirm"><i class="fa fa-trash-o text-danger"></i>
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>07</td>
                                            <td>
                                                <div class="font-15">Design and Printing</div>
                                            </td>
                                            <td>Maryam Amiri</td>
                                            <td>17</td>
                                            <td>
                                                <button type="button" class="btn btn-icon" title="View"><i
                                                        class="fa fa-eye"></i></button>
                                                <button type="button" class="btn btn-icon" title="Edit"><i
                                                        class="fa fa-edit"></i></button>
                                                <button type="button" class="btn btn-icon js-sweetalert" title="Delete"
                                                        data-type="confirm"><i class="fa fa-trash-o text-danger"></i>
                                                </button>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="companies-grid" role="tabpanel">
                        <div class="row clearfix">
                            <div class="col-lg-3 col-md-6">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <img class="img-thumbnail rounded-circle avatar-xxl"
                                             src="../assets/images/sm/avatar1.jpg" alt="">
                                        <h6 class="mt-3">John Smith</h6>
                                        <div class="text-center text-muted mb-3">Web Development</div>
                                        <button type="button" class="btn btn-icon btn-sm btn-outline-primary"><i
                                                class="fa fa-eye"></i></button>
                                        <button type="button" class="btn btn-icon btn-sm btn-outline-primary"><i
                                                class="fa fa-pencil"></i></button>
                                        <button type="button" class="btn btn-icon btn-sm btn-outline-danger"><i
                                                class="fa fa-trash"></i></button>
                                    </div>
                                    <div class="card-footer text-center">
                                        <div class="row clearfix">
                                            <div class="col-6">
                                                <h5 class="mb-0">105</h5>
                                                <div class="text-muted">Employee</div>
                                            </div>
                                            <div class="col-6">
                                                <h5 class="mb-0">$3100</h5>
                                                <div class="text-muted">Earnings</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <img class="img-thumbnail rounded-circle avatar-xxl"
                                             src="../assets/images/sm/avatar2.jpg" alt="">
                                        <h6 class="mt-3">Maryam Amiri</h6>
                                        <div class="text-center text-muted mb-3">Web Development</div>
                                        <button type="button" class="btn btn-icon btn-sm btn-outline-primary"><i
                                                class="fa fa-eye"></i></button>
                                        <button type="button" class="btn btn-icon btn-sm btn-outline-primary"><i
                                                class="fa fa-pencil"></i></button>
                                        <button type="button" class="btn btn-icon btn-sm btn-outline-danger"><i
                                                class="fa fa-trash"></i></button>
                                    </div>
                                    <div class="card-footer text-center">
                                        <div class="row clearfix">
                                            <div class="col-6">
                                                <h5 class="mb-0">105</h5>
                                                <div class="text-muted">Employee</div>
                                            </div>
                                            <div class="col-6">
                                                <h5 class="mb-0">$3100</h5>
                                                <div class="text-muted">Earnings</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <img class="img-thumbnail rounded-circle avatar-xxl"
                                             src="../assets/images/sm/avatar3.jpg" alt="">
                                        <h6 class="mt-3">Fidel Tonn</h6>
                                        <div class="text-center text-muted mb-3">Web Development</div>
                                        <button type="button" class="btn btn-icon btn-sm btn-outline-primary"><i
                                                class="fa fa-eye"></i></button>
                                        <button type="button" class="btn btn-icon btn-sm btn-outline-primary"><i
                                                class="fa fa-pencil"></i></button>
                                        <button type="button" class="btn btn-icon btn-sm btn-outline-danger"><i
                                                class="fa fa-trash"></i></button>
                                    </div>
                                    <div class="card-footer text-center">
                                        <div class="row clearfix">
                                            <div class="col-6">
                                                <h5 class="mb-0">12</h5>
                                                <div class="text-muted">Employee</div>
                                            </div>
                                            <div class="col-6">
                                                <h5 class="mb-0">$1800</h5>
                                                <div class="text-muted">Earnings</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <img class="img-thumbnail rounded-circle avatar-xxl"
                                             src="../assets/images/sm/avatar4.jpg" alt="">
                                        <h6 class="mt-3">Frank Camly</h6>
                                        <div class="text-center text-muted mb-3">Web Development</div>
                                        <button type="button" class="btn btn-icon btn-sm btn-outline-primary"><i
                                                class="fa fa-eye"></i></button>
                                        <button type="button" class="btn btn-icon btn-sm btn-outline-primary"><i
                                                class="fa fa-pencil"></i></button>
                                        <button type="button" class="btn btn-icon btn-sm btn-outline-danger"><i
                                                class="fa fa-trash"></i></button>
                                    </div>
                                    <div class="card-footer text-center">
                                        <div class="row clearfix">
                                            <div class="col-6">
                                                <h5 class="mb-0">105</h5>
                                                <div class="text-muted">Employee</div>
                                            </div>
                                            <div class="col-6">
                                                <h5 class="mb-0">$3100</h5>
                                                <div class="text-muted">Earnings</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <img class="img-thumbnail rounded-circle avatar-xxl"
                                             src="../assets/images/sm/avatar2.jpg" alt="">
                                        <h6 class="mt-3">Maryam Amiri</h6>
                                        <div class="text-center text-muted mb-3">Web Development</div>
                                        <button type="button" class="btn btn-icon btn-sm btn-outline-primary"><i
                                                class="fa fa-eye"></i></button>
                                        <button type="button" class="btn btn-icon btn-sm btn-outline-primary"><i
                                                class="fa fa-pencil"></i></button>
                                        <button type="button" class="btn btn-icon btn-sm btn-outline-danger"><i
                                                class="fa fa-trash"></i></button>
                                    </div>
                                    <div class="card-footer text-center">
                                        <div class="row clearfix">
                                            <div class="col-6">
                                                <h5 class="mb-0">105</h5>
                                                <div class="text-muted">Employee</div>
                                            </div>
                                            <div class="col-6">
                                                <h5 class="mb-0">$3100</h5>
                                                <div class="text-muted">Earnings</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <img class="img-thumbnail rounded-circle avatar-xxl"
                                             src="../assets/images/sm/avatar1.jpg" alt="">
                                        <h6 class="mt-3">John Smith</h6>
                                        <div class="text-center text-muted mb-3">Web Development</div>
                                        <button type="button" class="btn btn-icon btn-sm btn-outline-primary"><i
                                                class="fa fa-eye"></i></button>
                                        <button type="button" class="btn btn-icon btn-sm btn-outline-primary"><i
                                                class="fa fa-pencil"></i></button>
                                        <button type="button" class="btn btn-icon btn-sm btn-outline-danger"><i
                                                class="fa fa-trash"></i></button>
                                    </div>
                                    <div class="card-footer text-center">
                                        <div class="row clearfix">
                                            <div class="col-6">
                                                <h5 class="mb-0">55</h5>
                                                <div class="text-muted">Employee</div>
                                            </div>
                                            <div class="col-6">
                                                <h5 class="mb-0">$12,024</h5>
                                                <div class="text-muted">Earnings</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <img class="img-thumbnail rounded-circle avatar-xxl"
                                             src="../assets/images/sm/avatar2.jpg" alt="">
                                        <h6 class="mt-3">Maryam Amiri</h6>
                                        <div class="text-center text-muted mb-3">Web Development</div>
                                        <button type="button" class="btn btn-icon btn-sm btn-outline-primary"><i
                                                class="fa fa-eye"></i></button>
                                        <button type="button" class="btn btn-icon btn-sm btn-outline-primary"><i
                                                class="fa fa-pencil"></i></button>
                                        <button type="button" class="btn btn-icon btn-sm btn-outline-danger"><i
                                                class="fa fa-trash"></i></button>
                                    </div>
                                    <div class="card-footer text-center">
                                        <div class="row clearfix">
                                            <div class="col-6">
                                                <h5 class="mb-0">23</h5>
                                                <div class="text-muted">Employee</div>
                                            </div>
                                            <div class="col-6">
                                                <h5 class="mb-0">$5210</h5>
                                                <div class="text-muted">Earnings</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="section-body">
            <jsp:include page="../common/footer.jsp"/>
        </div>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add Company</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row clearfix">
                    <div class="col-md-12">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Company Name">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Company Head">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <input type="number" class="form-control" placeholder="No of Employee">
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>

<!-- Scripts -->
<script src="../assets/bundles/lib.vendor.bundle.js"></script>


<script src="../assets/plugins/sweetalert/sweetalert.min.js"></script>

<script src="../assets/js/core.js"></script>
<script src="../assets/js/page/dialogs.js"></script>

</body>

</html>
