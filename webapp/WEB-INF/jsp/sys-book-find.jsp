<%@ page import="java.io.PrintWriter"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
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
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>系统管理</title>
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
<link rel="stylesheet"
	href="C:\Users\rwh\Desktop\layui-v2.5.4\layui\css\layui.css"
	media="all">

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
						<i class="fa fa-times"></i>
						<h2 class="templatemo-inline-block">图书管理：</h2>
						<hr>
						<form method="post" action="findBookById.do">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="i-font-normal"></i>图书查询
								</div>
								<input type="text" name="book_id" class="form-control"
									placeholder="在这里输入你要查询的图书ID或书名或作者或出版社">

							</div>
							<div class="form-group text-center" align="center">
								<hr>
								<button type="submit" class="templatemo-blue-button">查询图书</button>
								<a href="findAllBook.do"><button type="submit"
										class="templatemo-blue-button">查询所有图书</button></a>
							</div>
						</form>


						<hr>
						<table
							class="table table-striped table-bordered templatemo-user-table">
							<thead>
								<tr>
									<td><a href="" class="white-text templatemo-sort-by">图书ID
											<span class="caret"></span>
									</a></td>
									<td><a href="" class="white-text templatemo-sort-by">图书封面
											<span class="caret"></span>
									</a></td>
									<td><a href="" class="white-text templatemo-sort-by">图书名称
											<span class="caret"></span>
									</a></td>
									<td><a href="" class="white-text templatemo-sort-by">图书类型
											<span class="caret"></span>
									</a></td>
									<td><a href="" class="white-text templatemo-sort-by">作者
											<span class="caret"></span>
									</a></td>
									<td><a href="" class="white-text templatemo-sort-by">出版社
											<span class="caret"></span>
									</a></td>
									<!--                             <td><a href="" class="white-text templatemo-sort-by">状态 <span class="caret"></span></a></td> -->
									
									<td width="8%"><a href="" class="white-text templatemo-sort-by">  操作  
									<span class="caret"> </span>
									</a></td>
									
								</tr>
							</thead>
							<tbody>
							<form
								action="findBookByIdnum"
								class="templatemo-login-form" method="post"
								enctype="multipart/form-data">
							<c:forEach items="${bookList}" var="book">
									<tr>
										<td>${book.MARC_REC_NO}</td>
										
										<td><img width="60" class="thumbnail" src="${book.BOOK_IMAGES }"></td>
										<td>${book.BOOK_TITLE}</td>
										
										<td>${book.BOOK_CALL_NO}</td>
										<td>${book.BOOK_AUTHOR}</td>
										<td>${book.BOOK_PUBLISHER}</td>
						
										<td><div><a
											href="updateBook?book_id=${book.MARC_REC_NO}"
											class="templatemo-edit-btn">编辑</a></div><br>
										<div><a href="deleteBook?book_id=${book.MARC_REC_NO}"
											class="templatemo-edit-btn">删除</a></div><br>
										<div><c:if test="${book.OPAC_FLAG==0}">
												<a href="activeBook?book_id=${book.MARC_REC_NO}"
													class="templatemo-edit-btn">上架</a>
											</c:if> <c:if test="${book.OPAC_FLAG==1}">
												<a href="dongjieBook?book_id=${book.MARC_REC_NO}"
													class="templatemo-edit-btn">下架</a>
											</c:if></div></td>
									</tr>
								</c:forEach>
								<c:if test="${jian!=0 }">
									<tr>

										<td colspan="10" align="center">
											共${pagetotal+1}页,当前第${pagenum}页 <c:if test="${pagenum-3>0}">
												<a
													href="findBookByIdnum?pagenum=${pagenum-3}">${pagenum-3}</a>
											</c:if> <c:if test="${pagenum-2>0}">
												<a
													href="findBookByIdnum?pagenum=${pagenum-2}">${pagenum-2}</a>
											</c:if> <c:if test="${pagenum-1>0}">
												<a
													href="findBookByIdnum?pagenum=${pagenum-1}">${pagenum-1}</a>
											</c:if> 
											<c:if test="${pagenum-1>0}">
											<a
											href="findBookByIdup">上一页</a>&nbsp;
											</c:if>
											<c:if test="${pagenum<pagetotal+1}">
											<a
											href="findBookByIddn">下一页</a>&nbsp;
											</c:if>
											<c:if test="${pagenum+1<=pagetotal+1}">
												<a
													href="findBookByIdnum?pagenum=${pagenum+1}">${pagenum+1}</a>
											</c:if> <c:if test="${pagenum+2<=pagetotal+1}">
												<a
													href="findBookByIdnum?pagenum=${pagenum+2}">${pagenum+2}</a>
											</c:if> <c:if test="${pagenum+3<=pagetotal+1}">
												<a
													href="findBookByIdnum?pagenum=${pagenum+3}">${pagenum+3}</a>
											</c:if> 去第<input type="text" name="pn" size=3 />页 <input
											type="submit" value="确定" id="btn_id" />
									</tr>
								</c:if>
								</form>
							</tbody>
						</table>

					</div>
					<script src="/js/jquery-1.11.2.min.js"></script>
					<!-- jQuery -->
					<script src="/js/jquery-migrate-1.2.1.min.js"></script>
					<!--  jQuery Migrate Plugin -->
					
					<script type="text/javascript" src="/js/templatemo-script.js"></script>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
