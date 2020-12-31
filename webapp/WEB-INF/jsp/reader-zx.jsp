<%@ page import="java.io.PrintWriter"%><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/29 0029
  Time: 8:29
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.net.*"%>
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

<title>用户信息</title>
<meta name="description" content="">
<meta name="author" content="templatemo">

<link rel="icon" href="static/img/32.png" sizes="32x32" />
<link rel="icon" href="static/img/192.png" sizes="192x192" />
<link href="../../qqFace/css/bootstrap.min.css" rel="stylesheet"
	media="screen">
<link rel="stylesheet" href="../../qqFace/css/reset.css">
<link rel="stylesheet" type="text/css" href="../../css/total.css">

<%
	String cert_id = request.getParameter("cert_id");
	String se = String.valueOf(request.getSession().getAttribute("session"));
	String sf = String.valueOf(request.getSession().getAttribute("sf"));
	String xs = "学生";
	String js = "教师";
	System.out.println(sf);
%>
<link rel="stylesheet" href="../../css/mescroll.min.css">
<%
	String totlesize = String.valueOf(request.getAttribute("totlesize"));
%>
<link rel="stylesheet" type="text/css"
	href="../../css/font-awesome.4.6.0.css">
<meta name="viewport"
	content="width=device-width, maximum-scale=1, initial-scale=1" />
<link rel="stylesheet" href="../../touxiang/amazeui.min.css">
<link rel="stylesheet" href="../../touxiang/amazeui.cropper.css">
<link rel="stylesheet" href="../../touxiang/custom_up_img.css">

<link rel='stylesheet' href='../../css/style.css' media='screen' />
<script src="../../js/mescroll.min.js" type="text/javascript"
	charset="utf-8"></script>
<link href="../../css/shizhong.css" rel="stylesheet" type="text/css" />
<script src="./../js/jquery.min.js"></script>

<script type="text/javascript" src="../../js/jquery.lazyload.min.js"></script>
<script type="text/javascript" src="../../js/blocksit.min.js"></script>


<script type="text/javascript" src="../../js/index.js"></script>

<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

<script src="https://cdn.bootcss.com/amazeui/2.7.2/js/amazeui.min.js"
	charset="utf-8"></script>
<script src="touxiang/cropper.min.js" charset="utf-8"></script>
<script src="touxiang/custom_up_img.js" charset="utf-8"></script>
<script>
function test2(){
	
	alert("ad");
}
</script>
<style>
	
html {
    cursor: url('../../images/menghuan.ico'), auto;
}
.draw {
    position: fixed;
    width: 1px;
    line-height: 1px;
    pointer-events: none;
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
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-webkit-tap-highlight-color: transparent;
}

body {
	background-color: white
}

ul {
	list-style-type: none
}

a {
	text-decoration: none;
	color: #18B4FE;
}

/*模拟的标题*/
.header {
	z-index: 9990;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 44px;
	line-height: 44px;
	text-align: center;
	border-bottom: 1px solid #eee;
	background-color: white;
}

.header .btn-left {
	position: absolute;
	top: 0;
	left: 0;
	padding: 12px;
	line-height: 22px;
}

.header .btn-right {
	position: absolute;
	top: 0;
	right: 0;
	padding: 0 12px;
}
/*说明*/
.mescroll .notice {
	font-size: 14px;
	padding: 20px 0;
	border-bottom: 1px solid #eee;
	text-align: center;
	color: #555;
}
/*列表*/
.mescroll {
	position: fixed;
	top: 44px;
	bottom: 0;
	height: auto;
}
/*展示上拉加载的数据列表*/
.news-list li {
	padding: 16px;
	border-bottom: 1px solid #eee;
}

.news-list .new-content {
	font-size: 14px;
	margin-top: 6px;
	margin-left: 10px;
	color: #666;
}
</style>
<style>
* {
	padding: 0;
	margin: 0;
}

a {
	text-decoration: none;
}

.form-control {
	display: inline-block;
	width: auto;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.42857143;
	color: #555;
	background-color: #fff;
	background-image: none;
	border: 1px solid #ccc;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}

.btn {
	display: inline-block;
	padding: 6px 12px;
	margin-bottom: 0;
	font-size: 14px;
	font-weight: 400;
	line-height: 1.42857143;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	background-image: none;
	border: 1px solid transparent;
	border-radius: 4px;
}

.btn-primary {
	color: #fff;
	background-color: #337ab7;
	border-color: #2e6da4;
}

/*组件主样式*/
.overflow-text {
	display: block;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	opacity: 0;
	clear: both;
	padding: 0 10px;
	border-radius: 10px;
	box-sizing: border-box;
	max-width: 100%;
	color: #fff;
	animation: colorchange 3s infinite alternate;
	-webkit-animation: colorchange 3s infinite alternate;
	/*Safari and Chrome*/
}

@
keyframes colorchange { 0%{
	color: red;
}

50%{
color









:green






;
}
100%{
color






:






#6993f9






;
}
}
* {
	margin: 0;
	padding: 0
}

ul {
	list-style: none
}

.countTxt {
	display: block;
	text-align: right;
	padding-bottom: 10px;
}

.countTxt em {
	font-size: 16px;
	font-weight: bold;
	font-style: normal;
	padding: 0 5px
}

.countTxt .red {
	color: red;
}

textarea {
	padding: 10px;
	display: block;
	width: 480px;
	resize: none;
	height: 100px;
	border: 1px solid #ccc;
	font-size: 14px
}

.commonBtn {
	height: 40px;
	width: 100px;
	border: 1px solid #ccc;
	margin: 10px 0 0 380px
}

hr {
	margin: 20px 0
}

.talkList li {
	border: 1px solid #ccc;
	padding: 35px 20px 20px;
	border-radius: 10px;
	position: relative;
	margin-bottom: 20px
}

.talkList li p {
	min-height: 50px;
	margin-bottom: 10px;
	word-break: break-all
}

.talkList li .toolsBar {
	text-align: right
}

.talkList li .toolsBar span {
	margin-left: 20px;
	cursor: pointer
}

.talkList li time {
	position: absolute;
	top: 10px;
	right: 15px;
}

.talkList li tim {
	position: absolute;
	top: 10px;
	right: 15px;
}

.comment {
	width: 680px;
	margin: 20px auto;
	position: relative;
	background: #fff;
	padding: 20px 50px 50px;
	border: 1px solid #DDD;
	border-radius: 5px;
}

.comment h3 {
	height: 28px;
	line-height: 28px
}

.com_form {
	width: 100%;
	position: relative
}

.input {
	width: 99%;
	height: 60px;
	border: 1px solid #ccc
}

.com_form p {
	height: 28px;
	line-height: 28px;
	position: relative;
	margin-top: 10px;
}

span.emotion {
	width: 42px;
	height: 20px;
	padding-left: 20px;
	cursor: pointer
}

span.emotion:hover {
	background-position: 2px -28px
}

.qqFace {
	margin-top: 4px;
	background: #fff;
	padding: 2px;
	border: 1px #dfe6f6 solid;
}

.qqFace table td {
	padding: 0px;
}

.qqFace table td img {
	cursor: pointer;
	border: 1px #fff solid;
}

.qqFace table td img:hover {
	border: 1px #0066cc solid;
}

#show {
	width: 770px;
	margin: 20px auto;
	background: #fff;
	padding: 5px;
	border: 1px solid #DDD;
	vertical-align: top;
}

.sub_btn {
	position: absolute;
	right: 0px;
	top: 0;
	display: inline-block;
	zoom: 1; /* zoom and *display = ie7 hack for display:inline-block */
	*display: inline;
	vertical-align: baseline;
	margin: 0 2px;
	outline: none;
	cursor: pointer;
	text-align: center;
	font: 14px/100% Arial, Helvetica, sans-serif;
	padding: .5em 2em .55em;
	text-shadow: 0 1px 1px rgba(0, 0, 0, .6);
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .2);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .2);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .2);
	color: #e8f0de;
	border: solid 1px #538312;
	background: #64991e;
	background: -webkit-gradient(linear, left top, left bottom, from(#7db72f),
		to(#4e7d0e));
	background: -moz-linear-gradient(top, #7db72f, #4e7d0e);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#7db72f',
		endColorstr='#4e7d0e');
}

.sub_btn:hover {
	background: #538018;
	background: -webkit-gradient(linear, left top, left bottom, from(#6b9d28),
		to(#436b0c));
	background: -moz-linear-gradient(top, #6b9d28, #436b0c);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#6b9d28',
		endColorstr='#436b0c');
}
</style>
<style type="text/css">
.up-img-cover {
	width: 100px;
	height: 100px;
}

.up-img-cover img {
	width: 100%;
}

.up-img-txt label {
	font-weight: 100;
	margin-top: 50px;
}
</style>
<style type="text/css">
.box1 {
	background: url(../../jianjie/timg.jpg)
}
</style>
<!--
    Visual Admin Template
    http://www.templatemo.com/preview/templatemo_455_visual_admin
    -->

<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link href="../../css/templatemo-style.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
	<div
		style="position: absolute; width: 485px; height: 440px; left: 540px; top: 540px; z-index: 999"
		"
				id="mescroll" class="mescroll">
		<ul id="newsList" class="talkList">
			<hr>

		</ul>
	</div>
	<div class="templatemo-flex-row">
		<div class="templatemo-sidebar">
			<header class="templatemo-site-header">
				<div class="square"></div>
				<h1>个人中心</h1>
			</header>
			<div class="profile-photo-container">
				<img
					src="${pageContext.request.contextPath}/images/profile-photo.jpg"
					alt="Profile Photo" class="img-responsive">
				<div class="profile-photo-overlay"></div>
			</div>
			<div class="templatemo-search-form">
				<div class="input-group">
					<label type="text" class="form-control" name="srch-term"
						id="srch-term">用户ID：${session}</label>
				</div>
			</div>

			<nav class="templatemo-left-nav">
				<c:if test="<%=sf.equals(xs)%>">
					<ul>
						<li><a href="${pageContext.request.contextPath}/reader-zx?cert_id=${session}" class="active"><i class="i-font-normal"></i>个人信息</a></li>
						<%-- 					<li><a href="${pageContext.request.contextPath}/center-index"><i --%>
						<!-- 							class="i-font-normal"></i>论文推荐</a></li> -->
						<li><a href="${pageContext.request.contextPath}/ciyun"
							> <i class="i-font-normal"></i>用户画像
						</a></li>
						<li><a
							href="${pageContext.request.contextPath}/user-lendinquiry"><i
								class="i-font-normal"></i>借阅历史</a></li>
						<li><a
							href="${pageContext.request.contextPath}/user-bookinquiry"><i
								class="i-font-normal"></i>图书查询</a></li>
						<!-- 					<li><a -->
						<%-- 						href="${pageContext.request.contextPath}/center-lwinquiry"><i --%>
						<!-- 							class="i-font-normal"></i>论文查询</a></li> -->
						<!-- 					<li><a -->
						<%-- 						href="${pageContext.request.contextPath}/center-zlinquiry"><i --%>
						<!-- 							class="i-font-normal"></i>专利查询</a></li> -->
						<li><a href="index"><i class="i-font-normal"></i>返回首页</a></li>
					</ul>
				</c:if>
				<c:if test="<%=sf.equals(js)%>">
					<ul>
						<li><a href="${pageContext.request.contextPath}/reader-zx?cert_id=${session}" class="active"><i
								class="i-font-normal"></i>个人信息</a></li>
						<%-- 					<li><a href="${pageContext.request.contextPath}/center-index"><i --%>
						<!-- 							class="i-font-normal"></i>论文推荐</a></li> -->
						<li><a href="${pageContext.request.contextPath}/center-ciyun"
							> <i class="i-font-normal"></i>用户画像
						</a></li>
						<li><a
							href="${pageContext.request.contextPath}/center-lendinquiry"><i
								class="i-font-normal"></i>借阅历史</a></li>
						<li><a
							href="${pageContext.request.contextPath}/center-bookinquiry"><i
								class="i-font-normal"></i>文献检索</a></li>
						<!-- 					<li><a -->
						<%-- 						href="${pageContext.request.contextPath}/center-lwinquiry"><i --%>
						<!-- 							class="i-font-normal"></i>论文查询</a></li> -->
						<!-- 					<li><a -->
						<%-- 						href="${pageContext.request.contextPath}/center-zlinquiry"><i --%>
						<!-- 							class="i-font-normal"></i>专利查询</a></li> -->
						<li><a href="index"><i class="i-font-normal"></i>返回首页</a></li>
					</ul>
				</c:if>
			</nav>
		</div>
		<div style="position: relative;height:980px;"
			class="templatemo-content col-1 light-gray-bg">
<!-- 			<div style="position: fixed; height: 100%; width: 100%;"> -->
<%-- 				<canvas id="J_dotLine" style="background-color: #FDF5E6;"></canvas> --%>
<!-- 			</div> -->

			<div class="templatemo-top-nav-container">
				<div class="row">
					<nav class="templatemo-top-nav col-lg-12 col-md-12">
						<ul class="text-uppercase">
							<c:if test="<%=sf.equals(xs)%>">
								<li><a
								href="${pageContext.request.contextPath}/reader-zx?cert_id=${session}"
								class="active">个人信息</a></li>
							<li><a
								href="${pageContext.request.contextPath}/user-information"
								>修改个人信息</a></li>
							</c:if>
							<c:if test="<%=sf.equals(js)%>">
								<li><a
								href="${pageContext.request.contextPath}/reader-zx?cert_id=${session}"
								class="active">个人信息</a></li>
							    <li><a
								href="${pageContext.request.contextPath}/center-information"
								>修改个人信息</a></li>
							</c:if>
						</ul>
					</nav>
				</div>
			</div>
			<div>

				<section id="info">

					<div
						style="position: absolute; float: left; left: 100px; top: 110px; width: 150px; height: 150px;">
						<div class="up-img-cover" id="up-img-touch">
							<img class="am-circle" alt="点击图片上传"
								src="/ciyun/${touxiangid}.jpg?id=${session}"
								data-am-popover="{content: '点击上传', trigger: 'hover focus'}">
						</div>

						<c:if test="<%=se.equals(cert_id)%>">
							<div class="am-modal am-modal-no-btn up-modal-frame"
								tabindex="-1" id="up-modal-frame">
								<div class="am-modal-dialog up-frame-parent up-frame-radius">
									<div class="am-modal-hd up-frame-header">
										<label>修改头像</label> <a href="javascript: void(0)"
											class="am-close am-close-spin" data-am-modal-close>&times;</a>
									</div>
									<div class="am-modal-bd  up-frame-body">
										<div class="am-g am-fl">
											<div class="am-form-group am-form-file">
												<div class="am-fl">
													<button type="button"
														class="am-btn am-btn-default am-btn-sm">
														<i class="am-icon-cloud-upload"></i> 选择要上传的文件
													</button>
												</div>
												<input type="file" class="up-img-file">
											</div>
										</div>
										<div class="am-g am-fl">
											<div class="up-pre-before up-frame-radius">
												<img alt="" src="" class="up-img-show" id="up-img-show">
											</div>
											<div class="up-pre-after up-frame-radius"></div>
										</div>
										<div class="am-g am-fl">
											<div class="up-control-btns">
												<span class="am-icon-rotate-left" id="up-btn-left"></span> <span
													class="am-icon-rotate-right" id="up-btn-right"></span> <span
													class="am-icon-check up-btn-ok"
													url="${pageContext.request.contextPath}/reader-touxiang"
													parameter="{width:'100',height:'100'}"> </span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:if>
						<div class="am-modal am-modal-loading am-modal-no-btn"
							tabindex="-1" id="up-modal-loading">
							<div class="am-modal-dialog">
								<div class="am-modal-hd">正在上传...</div>
								<div class="am-modal-bd">
									<span class="am-icon-spinner am-icon-spin"></span>
								</div>
							</div>
						</div>

						<div class="am-modal am-modal-alert" tabindex="-1"
							id="up-modal-alert">
							<div class="am-modal-dialog">
								<div class="am-modal-hd">信息</div>
								<div class="am-modal-bd" id="alert_content">成功了</div>
								<div class="am-modal-footer">
									<span class="am-modal-btn"><a
										href="${pageContext.request.contextPath}/reader-zx?cert_id=${cert_id}">确定</a></span>
								</div>
							</div>
						</div>

					</div>
					<div class="wrap">

						<h2 class="title"></h2>
						<div></div>
						<div class="row">
							<div class="col-l-3"
								style="position: relative; z-index: 999; left: 260px; top: 10px; width: 200;">
								<p style="font-size: 20px;">姓名：${user.name}</p>

								<c:if test="${user.sex=='M'}">
									<p style="font-size: 20px;">性别：男</p>
								</c:if>
								<c:if test="${user.sex=='F'}">
									<p style="font-size: 20px;">性别：女</p>
								</c:if>
								<p style="font-size: 20px;">出生日期：${user.birthday}</p>
								<p style="font-size: 20px;">手机号：${user.phone}</p>

							</div>
							<div class="col-l-3"
								style="position: relative; z-index: 999; left: 600px; top: -140px; width: 200;">
								<p style="font-size: 20px;">学院：${user.dept}</p>
								<p style="font-size: 20px;">身份：${user.occupation}</p>
								<p style="font-size: 20px;">借阅次数：${lendc}次</p>
								<c:if test="<%=sf.equals(js)%>">
									<p style="font-size: 20px;">发表论文&专利次数：${fabiaoc}次</p>
								</c:if>
							</div>
						</div>


					</div>
				</section>

			</div>


		</div>
		<div></div>
		<div style="position: absolute; right: 3%; top: 12%;">
			<div class="dowebok">
				<div class="hours"></div>
				<div class="minutes"></div>
				<div class="seconds"></div>
			</div>
		</div>
		<div class="wrap"
			style="position: absolute; z-index: 999; left: 540px; top: 280px; width: 500px; height: 300px; font-size: 14px; margin: 50px auto">

			<form
				action="${pageContext.request.contextPath}/reader-zx?cert_id=${cert_id}&sub=1"
				method="post">
				<span class="countTxt">您还可以输入<em>140</em>字
				</span>
				<textarea class="ckeditor" id="saytext" name="saytext"
					style="height: 100px;"></textarea>
				<c:if test="<%=se.equals(cert_id)%>">
					<span class="emotion"
						style="position: absolute; float: left; width: 100px;">表情</span>

					<button type="submit" class="commonBtn" disabled>发表动态</button>
				</c:if>
			</form>

			<hr>
			<ul class="talkList">
				<c:forEach items="${dongtais}" var="dongtai">
					<hr>
					<li class=lazy><script>
						var str = "${dongtai.text}";
						str = str.replace(/\</g,'&lt;');
	                    str = str.replace(/\>/g,'&gt;');
	                    str = str.replace(/\n/g,'<br/>');
	                    str = str.replace(/\[em_([0-9]*)\]/g,'<img src="qqFace/arclist/$1.gif" border="0" />');
	                    document.write("<p>"+str+"</p>");
	                    </script>

						<div class="toolsBar">
							<span><a
								href="${pageContext.request.contextPath}/reader-zx?ding=1&id=${dongtai.id}&cert_id=${cert_id}">顶</a>
								<b>${dongtai.ding}</b></span> <span><a
								href="${pageContext.request.contextPath}/reader-zx?cai=1&id=${dongtai.id}&cert_id=${cert_id}">踩</a>
								<b>${dongtai.cai}</b></span>
						</div>
						<div style="position: absolute; top: 10px; right: 15px;">${dongtai.time}</div>
					</li>
				</c:forEach>
			</ul>

		</div>

	</div>
	<form
		action="${pageContext.request.contextPath}/reader-zx?cert_id=${cert_id}&ly=1"
		method="post">
		<div style="position: fixed; z-index: 999; right: 7%; bottom: 30px;"
			class="aq" id="sqq">
			<c:if test="<%=!se.equals(cert_id)%>">
				<input style="width: 250px; height: 40px;" type="text"
					class="form-control" name="lyb" id="barrage_content"
					placeholder="添加留言内容">
				<button type="submit" class="btn btn-primary" id="submit_barraget">留言</button>
			</c:if>
			<div id="barrage"
				style="z-index: 999; max-width: 100%; position: fixed; bottom: 80px; right: 2% px;"></div>
		</div>
	</form>
</body>
<script src="../../js/shizhong.js"></script>

<script type="text/javascript" src="../../qqFace/js/jquery.qqFace.js"></script>

<script>
function replace_em(str){

	str = str.replace(/\</g,'&lt;');

	str = str.replace(/\>/g,'&gt;');

	str = str.replace(/\n/g,'<br/>');

	str = str.replace(/\[em_([0-9]*)\]/g,'<img src="qqFace/arclist/$1.gif" border="0" />');

	return str;

}
function isChinese(str){//判断是不是中文 中文：true 字符：false
var reCh=/[u00-uff]/;
return !reCh.test(str);
}

$('.emotion').qqFace({

		id : 'facebox', 

		assign:'saytext', 

		path:'qqFace/arclist/'	//表情存放的路径

	});

$('.t2').qqFace({

	id : 'facebox', 

	assign:'saytext', 

	path:'qqFace/arclist/'	//表情存放的路径

});
$("textarea").keyup(function(){
var txtval=$(this).val();

$(".commonBtn").prop("disabled",txtval==""?true:false);//设定按钮
var str_length=0;//初始定义长度为0；

for(var i=0;i<txtval.length;i++){
if(isChinese(txtval.charAt(i))){str_length=str_length+2}//中文为2个字符
else{str_length=str_length+1}//英文为1个字符
}
str_length=Math.ceil(str_length/2);//中英文相加除2 向下取整数（一个中文 + 一个英文）

var count=140-str_length;
if(count<0){
$(".countTxt").html('超出<em class="red">'+Math.abs(count)+'</em>字');
$(".commonBtn").prop("disabled",true);
}else{
$(".countTxt").html("您还可以输入<em>"+count+"</em>字")
}
})

</script>
<script type="text/javascript">

	// 数据初始化
	var item;
	$.ajax({
		data :{cert_id:${cert_id}},
		url : "${pageContext.request.contextPath}/reader-liuyan",
		type : "POST",
		dataType : "JSON",
		success : function(httpdata) {
			 item= httpdata;
			var Obj = $("#sqq").barrage({
				data : item, //数据列表
				row : 5,   //显示行数
				time : 2500, //间隔时间
				gap : 20,    //每一个的间隙
				position : 'fixed', //绝对定位
				direction : 'bottom right', //方向
				ismoseoverclose : true, //悬浮是否停止
				height : 30, //设置单个div的高度
			})
			Obj.start(); 
			$("#submit_barraget").click(function(){

				var val = $("#barrage_content").val();
				//此格式与dataa.js的数据格式必须一致
				var addVal = {
					href : '',
					text : val
				}
				//添加进数组
				if(val.length>20){
					alert('留言最多20字，请重试');
					}
				else if(val.length<5){
					alert('留言最少5字，请重试');
					}else{
					alert('评论成功');
					}

			})
		}
	});
	
	//添加评论
	
</script>
<script type="text/javascript" charset="utf-8">
		$(function(){
			//创建MeScroll对象
			var s=new Array();
			var d=new Array();
			$.ajax({
		data :{cert_id:${cert_id}},
		url : "${pageContext.request.contextPath}/dongtai-data",
		type : "POST",
		dataType : "JSON",
		success : function(httpdata) {
			s=httpdata;
			d=httpdata;
		}
				});
			var mescroll = new MeScroll("mescroll", {
				down: {
					auto: false, //是否在初始化完毕之后自动执行下拉回调callback; 默认true
					callback: downCallback //下拉刷新的回调
				},
				up: {
					auto: true, //是否在初始化时以上拉加载的方式自动加载第一页数据; 默认false
					isBounce: false, //此处禁止ios回弹,解析(务必认真阅读,特别是最后一点): http://www.mescroll.com/qa.html#q10
					callback: upCallback, //上拉回调,此处可简写; 相当于 callback: function (page) { upCallback(page); }
					toTop:{ //配置回到顶部按钮
						src : "../res/img/mescroll-totop.png", //默认滚动到1000px显示,可配置offset修改
						//offset : 1000
					}
				}
			});
			
			/*下拉刷新的回调 */
			function downCallback(){
				//联网加载数据
				getListDataFromNet(0, 1, function(data){
					//联网成功的回调,隐藏下拉刷新的状态
					mescroll.endSuccess();
					//设置列表数据
					setListData(data, false);
				}, function(){
					//联网失败的回调,隐藏下拉刷新的状态
	                mescroll.endErr();
				});
			}
			
			/*上拉加载的回调 page = {num:1, size:10}; num:当前页 从1开始, size:每页数据条数 */
			function upCallback(page){
				console.log("1");
				//联网加载数据
				getListDataFromNet(page.num, page.size, function(curPageData){
					console.log("2");
					//联网成功的回调,隐藏下拉刷新和上拉加载的状态;
					//mescroll会根据传的参数,自动判断列表如果无任何数据,则提示空;列表无下一页数据,则提示无更多数据;
					var tt='<%=totlesize%>';
					console.log("page.num="+page.num+", page.size="+page.size+", curPageData.length="+curPageData.length);
					
					//方法一(推荐): 后台接口有返回列表的总页数 totalPage
					//mescroll.endByPage(curPageData.length, totalPage); //必传参数(当前页的数据个数, 总页数)
					
					//方法二(推荐): 后台接口有返回列表的总数据量 totalSize
					mescroll.endBySize(curPageData.length,tt); //必传参数(当前页的数据个数, 总数据量)
					
					//方法三(推荐): 您有其他方式知道是否有下一页 hasNext
					//mescroll.endSuccess(curPageData.length, hasNext); //必传参数(当前页的数据个数, 是否有下一页true/false)
					
					//方法四 (不推荐),会存在一个小问题:比如列表共有20条数据,每页加载10条,共2页.如果只根据当前页的数据个数判断,则需翻到第三页才会知道无更多数据,如果传了hasNext,则翻到第二页即可显示无更多数据.
					//mescroll.endSuccess(curPageData.length,tt);
					
					//提示:curPageData.length必传的原因:
					// 1.判断是否有下一页的首要依据: 当传的值小于page.size时,则一定会认为无更多数据.
					// 2.比传入的totalPage, totalSize, hasNext具有更高的判断优先级
					// 3.使配置的noMoreSize生效
					
					//设置列表数据
					setListData(curPageData, true);
				}, function(){
					//联网失败的回调,隐藏下拉刷新和上拉加载的状态;
	                mescroll.endErr();
				});
			}
			function replace_em(str){

				str = str.replace(/\</g,'&lt;');

				str = str.replace(/\>/g,'&gt;');

				str = str.replace(/\n/g,'<br/>');

				str = str.replace(/\[em_([0-9]*)\]/g,'<img src="qqFace/arclist/$1.gif" border="0" />');

				return str;

			}
			/*设置列表数据*/
			function setListData(curPageData, isAppend) {
				console.log("3");
				var listDom=document.getElementById("newsList");
				for (var i = 0; i < curPageData.length; i++) {
					var newObj=curPageData[i];
					
// 					var str='<p>'+newObj.title+'</p>';
// 					str+='<p class="new-content">'+newObj.content+'</p>';
                    var str1 = replace_em(newObj.title);
                    var str ='<p>'+str1+'</p>'+'<div class="toolsBar">'+
        						'<span>'+'<a href="${pageContext.request.contextPath}/reader-zx?ding=1&id='+d[i].id+'&cert_id='+d[i].cert_id+'">顶</a>'+
        							'<b>'+d[i].ding+'</b>'+'</span> <span>'+'<a href="${pageContext.request.contextPath}/reader-zx?cai=1&id='+d[i].id+'&cert_id='+d[i].cert_id+'">踩</a>'
        							+'<b>'+d[i].cai+'</b>'+'</span>'+'</div>'+'<div style="position: absolute; top: 10px; right: 15px;">'+d[i].time+'</div>';
					
					var liDom=document.createElement("li");
					liDom.innerHTML=str;
					
					if (isAppend) {
						listDom.appendChild(liDom);//加在列表的后面,上拉加载
					} else{
						listDom.insertBefore(liDom, listDom.firstChild);//加在列表的前面,下拉刷新
					}
				}
			}
			
			/*联网加载列表数据
			 在您的实际项目中,请参考官方写法: http://www.mescroll.com/api.html#tagUpCallback
			 请忽略getListDataFromNet的逻辑,这里仅仅是在本地模拟分页数据,本地演示用
			 实际项目以您服务器接口返回的数据为准,无需本地处理分页.
			 * */
			var downIndex=0;
			function getListDataFromNet(pageNum,pageSize,successCallback,errorCallback) {
				//延时一秒,模拟联网
                setTimeout(function () {
                	try{
                		var newArr=[];
	                	if(pageNum==0){
	                		
	                	}else{
	                		//此处模拟上拉加载返回的数据
	                		for (var i = 0; i < pageSize; i++) {
	                			var upIndex=(pageNum-1)*pageSize+i;
	                			var newObj={title:s[upIndex].text, content:s[upIndex].time};
	                			console.log(newObj);
	                			newArr.push(newObj);
	                		}
	                	}
	                	//联网成功的回调
	                	successCallback&&successCallback(newArr);
                	}catch(e){
                		//联网失败的回调
                		successCallback&&successCallback(newArr);
                	}
                },1500)
		
			}
				
		});
	</script>
<script>
		;(function(window){
			function Dotline(option){
				this.opt = this.extend({
					dom:'J_dotLine',//画布id
					cw:1000,//画布宽
					ch:500,//画布高
					ds:100,//点的个数
					r:0.5,//圆点半径
					cl:'#000',//颜色
					dis:100//触发连线的距离
				},option);
				this.c = document.getElementById(this.opt.dom);//canvas元素id
				this.ctx = this.c.getContext('2d');
				this.c.width = this.opt.cw;//canvas宽
				this.c.height = this.opt.ch;//canvas高
				this.dotSum = this.opt.ds;//点的数量
				this.radius = this.opt.r;//圆点的半径
				this.disMax = this.opt.dis*this.opt.dis;//点与点触发连线的间距
				this.color = this.color2rgb(this.opt.cl);//设置粒子线颜色
				this.dots = [];
				//requestAnimationFrame控制canvas动画
				var RAF = window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.oRequestAnimationFrame || window.msRequestAnimationFrame || function(callback) {
				            window.setTimeout(callback, 0);
				        };
				var _self = this;
				//增加鼠标效果
				var mousedot = {x:null,y:null,label:'mouse'};
				this.c.onmousemove = function(e){
					var e = e || window.event;
					mousedot.x = e.clientX - _self.c.offsetLeft-300;
					mousedot.y = e.clientY - _self.c.offsetTop;
				};
				this.c.onmouseout = function(e){
					mousedot.x = null;
					mousedot.y = null;
				}
				//控制动画
				this.animate = function(){
					_self.ctx.clearRect(0, 0, _self.c.width, _self.c.height);
					_self.drawLine([mousedot].concat(_self.dots));
					RAF(_self.animate);
				};
			}
			//合并配置项，es6直接使用obj.assign();
			Dotline.prototype.extend = function(o,e){
				for(var key in e){
					if(e[key]){
						o[key]=e[key]
					}
				}
				return o;
			};
			//设置线条颜色(参考{抄袭}张鑫旭大大，http://www.zhangxinxu.com/wordpress/2010/03/javascript-hex-rgb-hsl-color-convert/)
			Dotline.prototype.color2rgb = function(colorStr){
				var red = null,
					green = null,
					blue = null;
				var cstr = colorStr.toLowerCase();//变小写
				var cReg = /^#[0-9a-fA-F]{3,6}$/;//确定是16进制颜色码
				if(cstr&&cReg.test(cstr)){
					if(cstr.length==4){
						var cstrnew = '#';
						for(var i=1;i<4;i++){
							cstrnew += cstr.slice(i,i+1).concat(cstr.slice(i,i+1));
						}
						cstr = cstrnew;
					}
					red = parseInt('0x'+cstr.slice(1,3));
					green = parseInt('0x'+cstr.slice(3,5));
					blue = parseInt('0x'+cstr.slice(5,7));
				}
				return red+','+green+','+blue;
			}
			//画点
			Dotline.prototype.addDots = function(){
				var dot;
				for(var i=0; i<this.dotSum; i++){//参数
					dot = {
						x : Math.floor(Math.random()*this.c.width)-this.radius,
						y : Math.floor(Math.random()*this.c.height)-this.radius,
						ax : (Math.random() * 2 - 1) / 1.5,
						ay : (Math.random() * 2 - 1) / 1.5
					}
					this.dots.push(dot);
				}
			};
			//点运动
			Dotline.prototype.move = function(dot){
				dot.x += dot.ax;
				dot.y += dot.ay;
				//点碰到边缘返回
				dot.ax *= (dot.x>(this.c.width-this.radius)||dot.x<this.radius)?-1:1;
				dot.ay *= (dot.y>(this.c.height-this.radius)||dot.y<this.radius)?-1:1;
				//绘制点
				this.ctx.beginPath();
				this.ctx.arc(dot.x, dot.y, this.radius, 0, Math.PI*2, true);
				this.ctx.stroke();
			};
			//点之间画线
			Dotline.prototype.drawLine = function(dots){
				var nowDot;
				var _that = this;
				//自己的思路：遍历两次所有的点，比较点之间的距离，函数的触发放在animate里
				this.dots.forEach(function(dot){
					
					_that.move(dot);
					for(var j=0; j<dots.length; j++){
						nowDot = dots[j];
						if(nowDot===dot||nowDot.x===null||nowDot.y===null) continue;//continue跳出当前循环开始新的循环
						var dx = dot.x - nowDot.x,//别的点坐标减当前点坐标
							dy = dot.y - nowDot.y;
						var dc = dx*dx + dy*dy;
						if(Math.sqrt(dc)>Math.sqrt(_that.disMax)) continue;
						// 如果是鼠标，则让粒子向鼠标的位置移动
						if (nowDot.label && Math.sqrt(dc) >Math.sqrt(_that.disMax)/2) {
							dot.x -= dx * 0.02;
							dot.y -= dy * 0.02;
						}
						var ratio;
						ratio = (_that.disMax - dc) / _that.disMax;
						_that.ctx.beginPath();
						_that.ctx.lineWidth = ratio / 2;
	          			_that.ctx.strokeStyle = 'rgba('+_that.color+',' + parseFloat(ratio + 0.2).toFixed(1) + ')';
						_that.ctx.moveTo(dot.x, dot.y);
						_that.ctx.lineTo(nowDot.x, nowDot.y);
						_that.ctx.stroke();//不描边看不出效果

						//dots.splice(dots.indexOf(dot), 1);
					}
				});
			};
			//开始动画
			Dotline.prototype.start = function(){
				var _that = this;
				this.addDots();
				setTimeout(function() {
				     _that.animate();
				}, 0);
			}
			window.Dotline = Dotline;
		}(window));
		//调用
		window.onload = function(){
			var dotline = new Dotline({
				dom:'J_dotLine',//画布id
				cw:1600,//画布宽
				ch:1000,//画布高
				ds:250,//点的个数
				r:1,//圆点半径
				cl:'#12FC41',//粒子线颜色
				dis:120//触发连线的距离
			}).start();
		}
	</script>
<script>
$(function(){
	$('.dowebok').flipTimer({
		seconds: true
	});
});
</script>
</html>


