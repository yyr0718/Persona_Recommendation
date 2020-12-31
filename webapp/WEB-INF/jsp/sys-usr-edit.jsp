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

<title>用户管理</title>
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
						name="srch-term" id="srch-term">管理员：${reader.name}</label>
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
						<h2 class="templatemo-inline-block">在此处进行用户信息更改</h2>
						<hr>



						<form action="sys-updateInform"
							class="templatemo-login-form">
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="i-font-normal"></i>账户
									</div>
									<label class="form-control">${user.cert_id}</label> <input
										type="hidden" name="usr_id" value="${user.cert_id}" />
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="i-font-normal"></i>姓名
									</div>
									<input type="text" name="usr_name" class="form-control"
										value="${user.name}" placeholder="${user.name}">
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="i-font-normal"></i>密码
									</div>
									<input type="text" name="usr_passwd" class="form-control"
										value="${user.password}">
								</div>
							</div>
							
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="i-font-normal"></i>性别
									</div>
									<select id="sex" class="form-control" name="sex">
										<option value="M">男</option>
										<option value="F">女</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="i-font-normal"></i>生日
									</div>
									<input type="date" name="age" class="form-control"
										value="${user.birthday}" />
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="i-font-normal"></i>用户类别
									</div>
									<select id="sex" class="form-control" name="occupation">
										<option value="${user.occupation}" selected:disabled style="diaplay:none">${user.occupation}</option>
										<option value="学生">学生</option>
										<option value="教师">教师</option>
										<option value="管理员">管理员</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="i-font-normal"></i>学院
									</div>
									<select class="form-control" name="xy">
										<option value="${user.dept}" selected:disabled style="diaplay:none">${user.dept}</option>
										<option value="农学院">农学院</option>
										<option value="植物保护学院">植物保护学院</option>
										<option value="园艺学院">园艺学院</option>
										<option value="动物科技学院">动物科技学院</option>
										<option value="动物医学院">动物医学院</option>
										<option value="林学院">林学院</option>
										<option value="资源环境学院">资源环境学院</option>
										<option value="水利与建筑工程学院">水利与建筑工程学院</option>
										<option value="机械与电子工程学院">机械与电子工程学院</option>
										<option value="信息工程学院">信息工程学院</option>
										<option value="食品科学与工程学院">食品科学与工程学院</option>
										<option value="葡萄酒学院">葡萄酒学院</option>
										<option value="生命科学学院">生命科学学院</option>
										<option value="理学院">理学院</option>
										<option value="经济管理学院">经济管理学院</option>
										<option value="人文社会发展学院">人文社会发展学院</option>
										<option value="创新实验学院">创新实验学院</option>
										<option value="外语系">外语系</option>
										<option value="体育部">体育部</option>
										<option value="成人教育（继续教育）学院">成人教育（继续教育）学院</option>
										<option value="水土保持研究所">水土保持研究所</option>
										<option value="马克思主义学院">马克思主义学院</option>
										<option value="国际学院">国际学院</option>
										<option value="风景园林艺术学院">风景园林艺术学院</option>
										<option value="化学与药学院">化学与药学院</option>
										<option value="草业与草原学院">草业与草原学院</option>
										<!-- 										<option value="党委校长办公室（党委政策研究室）">党委校长办公室（党委政策研究室）</option> -->
										<!-- 										<option value="党委组织部">党委组织部</option> -->
										<!-- 										<option value="党委宣传部">党委宣传部</option> -->
										<!-- 										<option value="党委统战部">党委统战部</option> -->
										<!-- 										<option value="纪检委（党委巡察工作办公室）">纪检委（党委巡察工作办公室）</option> -->
										<!-- 										<option value="机关党委">机关党委</option> -->
										<!-- 										<option value="工会">工会</option> -->
										<!-- 										<option value="团委">团委</option> -->
										<!-- 										<option value="校友会">校友会</option> -->
										<!-- 										<option value="党委巡察工作办公室">党委巡察工作办公室</option> -->
										<!-- 										<option value="党委政策研究室">党委政策研究室</option> -->
										<!-- 										<option value="校领导">校领导</option> -->
										<!-- 										<option value="教务处">教务处</option> -->
										<!-- 										<option value="科研处">科研处</option> -->
										<!-- 										<option value="科技推广处(扶贫工作办公室)">科技推广处(扶贫工作办公室)</option> -->
										<!-- 										<option value="人事处">人事处</option> -->
										<!-- 										<option value="研究生院">研究生院</option> -->
										<!-- 										<option value="学生工作处（党委学生工作部）">学生工作处（党委学生工作部）</option> -->
										<!-- 										<option value="国际合作与交流处（港澳台办）">国际合作与交流处（港澳台办）</option> -->
										<!-- 										<option value="计划财务处">计划财务处</option> -->
										<!-- 										<option value="实验室管理处">实验室管理处</option> -->
										<!-- 										<option value="国有资产管理处">国有资产管理处</option> -->
										<!-- 										<option value="监察处">监察处</option> -->
										<!-- 										<option value="审计处">审计处</option> -->
										<!-- 										<option value="后勤管理处（后勤服务中心）">后勤管理处（后勤服务中心）</option> -->
										<!-- 										<option value="基建处">基建处</option> -->
									</select>
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
