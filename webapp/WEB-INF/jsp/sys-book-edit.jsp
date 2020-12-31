<%@ page import="java.io.PrintWriter"%><%--
  Created by IntelliJ IDEA.
  User: HRJ
  Date: 2019/6/29
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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

<title>图书管理</title>
<meta name="description" content="">
<meta name="author" content="templatemo">
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
<!--
    Visual Admin Template
    http://www.templatemo.com/preview/templatemo_455_visual_admin
    -->

<link href="../../css/font-awesome.min.css" rel="stylesheet">
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
			<div class="templatemo-search-form">
				<div class="input-group">
					<button type="submit" class="fa fa-search">
						&nbsp;<i class="i-font-normal"></i>
					</button>
					<label type="text" class="form-control" placeholder="管理员ID"
						name="srch-term" id="srch-term">管理员：${reader.cert_id}</label>
				</div>
			</div>
			<div class="mobile-menu-icon">
				<i class="i-font-big"></i>
			</div>
			<nav class="templatemo-left-nav">
				<ul>
					<li><a href="/sysAdmi"><i class="i-font-normal"></i>数据导入</a></li>
                <li><a href="/findAllUser.do" ><i class="i-font-normal"></i>用户管理</a></li>
                <li><a href="findBookById.do" class="active"><i class="i-font-normal"></i>图书管理</a></li> 
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
						<h2 class="templatemo-inline-block">在此处进行图书信息更改</h2>
						<hr>



						<form action="sys-updateBookInform"
							class="templatemo-login-form">
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="i-font-normal"></i>图书编号
									</div>
									<label class="form-control">${book.MARC_REC_NO}</label> <input
										type="hidden" name="book_id" value="${book.MARC_REC_NO}" />
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="i-font-normal"></i>图书名称
									</div>
									<input type="text" name="book_name" class="form-control"
										value="${book.BOOK_TITLE}" placeholder="${book.BOOK_TITLE}">
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="i-font-normal"></i>类别编号
									</div>
									<input type="text" name="book_kind" class="form-control"
										value="${book.BOOK_CALL_NO}">
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="i-font-normal"></i>作者
									</div>
									<input type="text" name="author" class="form-control"
										value="${book.BOOK_AUTHOR}" />
									
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="i-font-normal"></i>出版社
									</div>
									<input type="text" name="publisher" class="form-control"
										value="${book.BOOK_PUBLISHER}" />
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="i-font-normal"></i>出版日期
									</div>
									<input type="text" name="year" class="form-control"
										value="${book.BOOK_PUB_YEAR}" />
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="i-font-normal"></i>图片地址
									</div>
									<input type="text" name="image" class="form-control"
										value="${book.BOOK_IMAGES}" />
								</div>
							</div>
							
							<hr />
							<div class="form-group">
								<div class="form-group text-center">
									<button type="submit" class="templatemo-blue-button">提交</button>
									<button type="reset" class="templatemo-white-button">重置</button>

								</div>
							</div>
						</form>
					</div>
				</div>
				<!-- JS -->
				<script src="/js/jquery-1.11.2.min.js"></script>
				<!-- jQuery -->
				<script src="/js/jquery-migrate-1.2.1.min.js"></script>
				<!--  jQuery Migrate Plugin -->
				
				<script type="text/javascript" src="/js/templatemo-script.js"></script>
				<!-- Templatemo Script -->
			</div>
		</div>
	</div>
</body>
</html>
