<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 25.11.19
  Time: 13:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="header_top" class="header_top">
    <div class="container">
        <div class="hleft">
            <a class="header-brand" href="index.html"><i class="fe fe-command brand-logo"></i></a>
            <div class="dropdown">
                <a href="../pages/search.html" class="nav-link icon"><i class="fa fa-search"></i></a>
                <a href="../pages/calendar.html" class="nav-link icon app_inbox"><i class="fa fa-calendar"></i></a>
                <a href="../pages/contact.html" class="nav-link icon xs-hide"><i class="fa fa-id-card-o"></i></a>
                <a href="../chatapp/chat.html" class="nav-link icon xs-hide"><i class="fa fa-comments-o"></i></a>
                <a href="../pages/filemanager.html" class="nav-link icon app_file xs-hide"><i
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