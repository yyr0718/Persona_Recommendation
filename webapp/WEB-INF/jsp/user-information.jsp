<%@ page import="java.io.PrintWriter"%><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/29 0029
  Time: 8:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%--启用el表达式--%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>个人信息修改</title>
<meta name="description" content="">
<meta name="author" content="templatemo">
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
<!--
    Visual Admin Template
    http://www.templatemo.com/preview/templatemo_455_visual_admin
    -->

<link href="../../css/font-awesome.min.css" rel="stylesheet">
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link href="../../css/templatemo-style.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<style>
	
html {
    cursor: url('../../images/menghuan.ico'), auto;
}
.draw {
    position: fixed;
    width: 1px;
    line-height: 1px;
    pointer-events: none;
    z-index:999;
}
@keyframes floatOne {
0% {
opacity:1;
}
50% {
opacity:1;
}
100% {
opacity:0;
transform:translate3D(0, -20px, 0) scale(5) rotate(45deg);
}
}
</style>
</head>
<body>
	<!-- Left column -->
	<div class="templatemo-flex-row">
		<div class="templatemo-sidebar">
			<header class="templatemo-site-header">
				<div class="square"></div>
				<h1>个人中心</h1>
			</header>
			<div class="profile-photo-container">
				<img src="../../images/profile-photo.jpg" alt="Profile Photo"
					class="img-responsive">
				<div class="profile-photo-overlay"></div>
			</div>
			<!-- Search box -->
			<%
				//             String session_user = (String)session.getAttribute("session_user");
				//             if(session_user==null){
				//                 response.setContentType("text/html;charset=UTF-8");
				//                 PrintWriter outPrintWriter = response.getWriter();
				//                 PrintWriter writer = response.getWriter();
				//                 String msg = null;
				//                 msg = "alert( '登录超时，请重新登录' );location.href='/loginPage.do'";
				//                 writer.print("<script type='text/javascript'>" + msg + "</script>");
				//                 writer.flush();
				//                 writer.close();
				//                 response.sendRedirect("loginPage.do");
				//                 return;}
			%>
			<div class="templatemo-search-form">
				<div class="input-group">
					<button type="submit" class="fa fa-search">
						&nbsp;<i class="i-font-normal"></i>
					</button>
					<label type="text" class="form-control" name="srch-term"
						id="srch-term">用户ID：${session}</label>
				</div>
			</div>
			<div class="mobile-menu-icon">
				<i class="i-font-big"></i>
			</div>
			<nav class="templatemo-left-nav">
				<ul>
					<li><a href="${pageContext.request.contextPath}/reader-zx?cert_id=${session}" class="active"><i class="i-font-normal"></i>个人信息</a></li>
					<li><a href="${pageContext.request.contextPath}/ciyun"><i
							class="i-font-normal"></i>用户画像</a></li>
					<li><a
						href="${pageContext.request.contextPath}/user-lendinquiry"><i
							class="i-font-normal"></i>借阅历史</a></li>
					<li><a
						href="${pageContext.request.contextPath}/user-bookinquiry"><i
							class="i-font-normal"></i>图书查询</a></li>
					<%--             <li><a href="${pageContext.request.contextPath}/user-result-uplode"><i class="i-font-normal"></i>图书借阅</a></li> --%>

					<li><a href="index"><i class="i-font-normal"></i>返回首页</a></li>
				</ul>
			</nav>
		</div>
		<!-- Main content -->
		<div class="templatemo-content col-1 light-gray-bg">
			<div class="templatemo-top-nav-container">
				<div class="row">
					<nav class="templatemo-top-nav col-lg-12 col-md-12">
						<ul class="text-uppercase">
						    <li><a
								href="${pageContext.request.contextPath}/reader-zx?cert_id=${session}"
								>个人信息</a></li>
							<li><a
								href="${pageContext.request.contextPath}/user-information"
								class="active">修改个人信息</a></li>
						</ul>
					</nav>
				</div>
			</div>
			<div class="templatemo-content-container">
				<div class="templatemo-flex-row flex-content-row">
					<div class="templatemo-content-widget white-bg col-2">
						<i class="i-font-x fa-times"></i>
						<div class="square"></div>
						<h2 class="templatemo-inline-block">在此处修改你的个人信息</h2>
						<hr>
						<form method="post"
							action="${pageContext.request.contextPath}/updateInform"
							class="templatemo-login-form">
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="i-font-normal"></i>旧&nbsp&nbsp密&nbsp&nbsp码&nbsp
									</div>
									<input type="password" name="oldpwd"
										value="" class="form-control"
										placeholder="请输入旧密码"><span></span>
									</td>
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="i-font-normal"></i>新&nbsp&nbsp密&nbsp&nbsp码&nbsp
									</div>
									<input type="password" name="usr_passwd"
										value="${u_usr_passwd}" class="form-control"
										placeholder="在这里输入你的密码"><span>${msg1}</span>
									</td>
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="i-font-normal"></i>确认密码
									</div>
									<input type="password" name="usr_passwd1"
										value="${u_usr_passwd1}" class="form-control"
										placeholder="在这里输入你的密码"><span>${msg2}</span>
									</td>
								</div>
							</div>
							
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="i-font-normal"></i>出生日期
									</div>
									<input type="date" name="age" value="${oldage}"
										class="form-control" placeholder="在这里输入你的年龄"><span>${msg3}</span>
									</td>
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="i-font-normal"></i>学院
									</div>
									<select class="form-control" name="xy">
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
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="i-font-normal"></i>性别
									</div>
									<select class="form-control" name="sex">
										<option value="M">男</option>
										<option value="F">女</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<button type="submit" class="templatemo-blue-button width-100">修改</button>
							</div>
						</form>
					</div>
				</div>
				<!-- JS -->
				<script src="../../js/jquery-1.11.2.min.js"></script>
				<!-- jQuery -->
				<script src="../../js/jquery-migrate-1.2.1.min.js"></script>
				<!--  jQuery Migrate Plugin -->
				
				<script type="text/javascript" src="../../js/templatemo-script.js"></script>
				<!-- Templatemo Script -->
			</div>
		</div>
	</div>
</body>
 
</html>


