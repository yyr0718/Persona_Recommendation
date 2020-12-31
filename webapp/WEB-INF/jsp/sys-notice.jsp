<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: HRJ
  Date: 2019/6/30
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <%
        String sys_id = (String)session.getAttribute("sys_id");
        if(sys_id==null){
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter outPrintWriter = response.getWriter();
            PrintWriter writer = response.getWriter();
            String msg = null;
            msg = "alert( '登录超时，请重新登录' );location.href='/admin/admin_login.do'";
            writer.print("<script type='text/javascript'>" + msg + "</script>");
            writer.flush();
            writer.close();
            response.sendRedirect("loginPage.do");
            return;}
    %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>系统管理</title>
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    <!--
      Visual Admin Template
      http://www.templatemo.com/preview/templatemo_455_visual_admin
      -->
    
    <link href="/css/font-awesome.min.css" rel="stylesheet">
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/templatemo-style.css" rel="stylesheet">
    <link rel="stylesheet" href="C:\Users\rwh\Desktop\layui-v2.5.4\layui\css\layui.css" media="all">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<!-- Left column -->
<div class="templatemo-flex-row">
    <div class="templatemo-sidebar">
        <header class="templatemo-site-header">
            <div class="square"></div>
            <h1>系统管理</h1>
        </header>

        <!-- Search box -->
        <div class="templatemo-search-form" >
            <div class="input-group">
                <button type="submit" class="fa fa-search">&nbsp;<i class="i-font-normal"></i></button>
                <label type="text" class="form-control" placeholder="管理员ID" name="srch-term" id="srch-term">管理员：${session}</label>
            </div>
        </div>




        <div class="mobile-menu-icon">
            <i class="i-font-big"></i>
        </div>
        <nav class="templatemo-left-nav">
            <ul>
                <!-- <li><a href="#" class="active"><i class="i-font-normal"></i>个人主页</a></li>
                  <li><a href="user-application.html"><i class="i-font-normal"></i>鉴定申请</a></li>
                  <li><a href="user-payment-inquiry.html"><i class="i-font-normal"></i>缴费查询</a></li> -->
                <li><a href="/admin/findAllUser.do"><i class="i-font-normal"></i>用户管理</a></li>
                <li><a href="/admin/NoticeJSP.do"><i class="i-font-normal"></i>公告管理</a></li>

                <li><a href="/admin/exit.do"><i class="i-font-normal"></i>账号退出</a></li>
            </ul>
        </nav>
    </div>
    <div class="templatemo-content col-1 light-gray-bg">
        <div class="templatemo-top-nav-container">
            <div class="row">
                <nav class="templatemo-top-nav col-lg-12 col-md-12">
                    <ul class="text-uppercase">
                        <li><a href="/admin/insertNoticeJSP.do" class="active">上传系统公告</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    <!-- Main content -->
    <div class="templatemo-content col-1 light-gray-bg">
        <div class="templatemo-top-nav-container">
            <div class="row">
                <nav class="templatemo-top-nav col-lg-12 col-md-12">
                    <!-- <ul class="text-uppercase">
                        <li><a href="#" class="active">个人业务清单</a></li>
                        <li><a href="user-index.html">个人主页</a></li>
                      </ul>   -->
                </nav>
            </div>
        </div>
        <div class="templatemo-content-container">
            <div class="templatemo-flex-row flex-content-row">
                <!-- <div class="templatemo-content-widget white-bg col-2">
                    <i class="fa fa-times"></i>
                    <div class="square"></div>
                    <h2 class="templatemo-inline-block">欢迎您的登录，感谢您对本系统的支持</h2><hr>
                    <p>各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语</p>
                    <p>各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语</p>
                  </div> -->

                <div class="templatemo-content-widget white-bg col-2">
                    <i class="fa fa-times"></i>

                    <h2 class="templatemo-inline-block">系统所有公告：</h2>
                    <hr>
                    <form method="post" action="/admin/findNoticeById.do">
                    <div class="input-group">
                        <div class="input-group-addon"><i class="i-font-normal"></i>查询公告</div>
                        <input type="text" name="notice_id" class="form-control" placeholder="在这里输入你要查询的公告ID">

                    </div>
                    <div class="form-group text-center">
                        <hr>
                        <a href="">
                            <button type="submit" class="templatemo-blue-button">查询</button>
                            <a href="/admin/findAllNotice.do"><button type="submit" class="templatemo-blue-button">查询所有公告</button></a>
                        </a>
                    </div>
                    </form>
                    <hr>
                    <table class="table table-striped table-bordered templatemo-user-table">
                        <thead>
                        <tr>
                            <td><a href="" class="white-text templatemo-sort-by">ID <span class="caret"></span></a></td>
                            <td><a href="" class="white-text templatemo-sort-by">标题 <span class="caret"></span></a></td>
                            <td><a href="" class="white-text templatemo-sort-by">内容 <span class="caret"></span></a></td>
                            <td><a href="" class="white-text templatemo-sort-by">编辑 <span class="caret"></span></a></td>
                            <td><a href="" class="white-text templatemo-sort-by">删除 <span class="caret"></span></a></td>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${listNotice}" var="notice">
                            <tr>
                                <td>${notice.notice_id}</td>
                                <td>${notice.notice_typic }</td>
                                <td>${notice.notice_value }</td>
                                <td><a href="/admin/updateNoticeJSP.do?notice_id=${notice.notice_id}" class="templatemo-edit-btn">编辑</a></td>
                                <td><a href="/admin/deleteNotice.do?notice_id=${notice.notice_id}" class="templatemo-edit-btn">删除</a></td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>

                    <!-- <div class="form-group text-center">
                      <hr>
                      <a href="sys-usr-add.html">
                        <button type="submit" class="templatemo-blue-button">增加用户</button>
                      </a>
                    </div> -->

                </div>


                <!-- <div class="templatemo-content-widget white-bg col-2">
                    <i class="fa fa-times"></i>
                    <div class="square"></div>
                    <h2 class="templatemo-inline-block">重要更新与系统维护</h2><hr>
                    <p>各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语</p>
                    <p>各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语</p>
                  </div> -->

                <!-- JS -->
                <script src="/js/jquery-1.11.2.min.js"></script> <!-- jQuery -->
                <script src="/js/jquery-migrate-1.2.1.min.js"></script> <!--  jQuery Migrate Plugin -->
               
                <script type="text/javascript" src="/js/templatemo-script.js"></script> <!-- Templatemo Script -->
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>
