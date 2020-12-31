<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: HRJ
  Date: 2019/6/29
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <%
//         String sys_id = (String)session.getAttribute("sys_id");
//         if(sys_id==null){
//             response.setContentType("text/html;charset=UTF-8");
//             PrintWriter outPrintWriter = response.getWriter();
//             PrintWriter writer = response.getWriter();
//             String msg = null;
//             msg = "alert( '登录超时，请重新登录' );location.href='/admin/admin_login.do'";
//             writer.print("<script type='text/javascript'>" + msg + "</script>");
//             writer.flush();
//             writer.close();
//             response.sendRedirect("loginPage.do");
//             return;}
    %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <title>添加用户</title>
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    <link rel="shortcut icon" href="favicon.ico"  type="image/x-icon"/>
    <!--
    Visual Admin Template
    http://www.templatemo.com/preview/templatemo_455_visual_admin
    -->
   
    <link href="/css/font-awesome.min.css" rel="stylesheet">
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/templatemo-style.css" rel="stylesheet">

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
                <label type="text" class="form-control" placeholder="管理员ID" name="srch-term" id="srch-term">管理员：${sys_id}</label>
            </div>
        </div>
        <div class="mobile-menu-icon">
            <i class="i-font-big"></i>
        </div>
        <nav class="templatemo-left-nav">
             <ul>
                <li><a href="/sysAdmi"><i class="i-font-normal"></i>数据导入</a></li>
                <li><a href="/findAllUser.do" class="active"><i class="i-font-normal"></i>用户管理</a></li>
                <li><a href="findBookById.do"><i class="i-font-normal"></i>图书管理</a></li> 
                <li><a href="/sys-lendinquiry"><i class="i-font-normal"></i>借阅数据</a></li>
                
                <li><a href="/user-exit"><i class="i-font-normal"></i>账号退出</a></li>
            </ul>
        </nav>
    </div>
    <!-- Main content -->
    <div class="templatemo-content col-1 light-gray-bg">
       
        <div class="templatemo-content-container">
            <div class="templatemo-flex-row flex-content-row">
                <div class="templatemo-content-widget white-bg col-2">
                    <i class="i-font-x fa-times"></i>
                    <div class="square"></div>
                    <h2 class="templatemo-inline-block">在此处输入所添加用户的信息</h2><hr>
                    <form action="/admin/insertUser.do" class="templatemo-login-form">
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon"><i class="i-font-normal"></i>账户</div>
                                <input type="text" name="usr_id" class="form-control" placeholder="在这里输入ID">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon"><i class="i-font-normal"></i>姓名</div>
                                <input type="text" name="usr_name" class="form-control" placeholder="在这里输入用户名">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon"><i class="i-font-normal"></i>密码</div>
                                <input type="text" name="usr_passwd" class="form-control" placeholder="在这里输入密码">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon"><i class="i-font-normal"></i>性别</div>
                                <select id="sex" class="form-control" name="sex">
                                    <option value ="男">男</option>
                                    <option value ="女">女</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon"><i class="i-font-normal"></i>生日</div>
                                <input type="date"  name="age"  placeholder="在这里输入生日" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon"><i class="i-font-normal"></i>邮箱</div>
                                <input type="text" name="email"    class="form-control" placeholder="在这里输入邮箱">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon"><i class="i-font-normal"></i>部门</div>
                                <select id="dept_id" class="form-control" name="dept_id">
                                    <option value ="0">鉴定部门</option>
                                    <option value ="1">消防部门</option>
                                    <option value="2">司法部门</option>
                                    <option value="3">技术服务部门</option>
                                </select>
                            </div>
                        </div>
                        <hr />
                        <div class="form-group">
                            <button type="submit" class="templatemo-blue-button width-100">确认</button>
                        </div>
                    </form>

                </div>
            </div>
            <!-- JS -->
            <script src="/js/jquery-1.11.2.min.js"></script>      <!-- jQuery -->
            <script src="/js/jquery-migrate-1.2.1.min.js"></script> <!--  jQuery Migrate Plugin -->
            
            <script type="text/javascript" src="/js/templatemo-script.js"></script>      <!-- Templatemo Script -->
        </div>
    </div>
</div>
</body>
</html>
