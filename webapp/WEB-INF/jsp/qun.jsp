<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.net.*"%>
<%-- <%@ page import="com.iamoe.entity.critical_tables" %> --%>
<%@ page import="java.io.PrintWriter"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html lang="en">
<head>
<meta charset="utf8">
<meta charset="gb2312">
<meta http-equiv="X-UA-Compatible" content="IE=edge">


<title>数据中心</title>
<meta name="description" content="">
<meta name="author" content="templatemo">
<link rel="stylesheet" type="text/css" href="css/selectDemo.css">
<script src="js2/js2wordcloud.js"></script>
<script src="../../js/lib/esl.js"></script>
<script src="../../js/lib/config.js"></script>
<script src="../../js/lib/jquery.min.js"></script>
<style type="text/css">
#main, #main1, #main2 {
	width: 800px;
	padding: 0;
	margin: 0;
	height: 500px;
}
</style>

<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/images/favicon.ico"
	type="image/x-icon" />

<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/css/templatemo-style.css"
	rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.11.2.min.js">
	
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/animate.js">
	
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bootstrap-filestyle.min.js">
	
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/common.js">
	
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-migrate-1.2.1.min.js">
	
</script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/templatemo-script.js">
	
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
				<img
					src="${pageContext.request.contextPath}/images/profile-photo.jpg"
					alt="Profile Photo" class="img-responsive">
				<div class="profile-photo-overlay"></div>
			</div>
			<!-- Search box -->
			<%
				//           String session_user = (String)session.getAttribute("session_user");
				//           if(session_user==null){
				//             response.setContentType("text/html;charset=UTF-8");
				//             PrintWriter outPrintWriter = response.getWriter();
				//             PrintWriter writer = response.getWriter();
				//             String msg = null;
				//             msg = "alert( '登录超时，请重新登录' );location.href='/loginPage.do'";
				//             writer.print("<script type='text/javascript'>" + msg + "</script>");
				//             writer.flush();
				//             writer.close();
				//             response.sendRedirect("loginPage.do");
				//             return;}
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
					<li><a href="${pageContext.request.contextPath}/reader-zx?cert_id=${session}"><i class="i-font-normal"></i>个人信息</a></li>
					<%-- 					<li><a href="${pageContext.request.contextPath}/center-index"><i --%>
					<!-- 							class="i-font-normal"></i>论文推荐</a></li> -->
					<li><a href="${pageContext.request.contextPath}/ciyun"
						class="active"> <i class="i-font-normal"></i>用户画像
					</a></li>
					<li><a
						href="${pageContext.request.contextPath}/user-lendinquiry"><i
							class="i-font-normal"></i>借阅历史</a></li>
					<li><a
						href="${pageContext.request.contextPath}/user-bookinquiry"><i
							class="i-font-normal"></i>文献检索</a></li>
					<!-- 					<li><a -->
					<%-- 						href="${pageContext.request.contextPath}/center-lwinquiry"><i --%>
					<!-- 							class="i-font-normal"></i>论文查询</a></li> -->
					<!-- 					<li><a -->
					<%-- 						href="${pageContext.request.contextPath}/center-zlinquiry"><i --%>
					<!-- 							class="i-font-normal"></i>专利查询</a></li> -->
					<li><a href="index"><i class="i-font-normal"></i>返回首页</a></li>
				</ul>
			</nav>
		</div>
		<!-- Main content -->

		<div style="position: relative;"
			class="templatemo-content col-1 light-gray-bg">
			<div class="templatemo-top-nav-container">
				<div class="row">
					<nav class="templatemo-top-nav col-lg-12 col-md-12">
						<ul class="text-uppercase">
							<li><a href="${pageContext.request.contextPath}/ciyun">图书画像</a></li>
							<li><a href="${pageContext.request.contextPath}/qun">群体画像</a></li>
							<li><a href="${pageContext.request.contextPath}/user-data1">数据中心</a></li>
							

						</ul>
					</nav>
				</div>
			</div>
			
			<div style="top:2%;position: relative;background-color:white; ">
			<div style="left:15%;">
			<h1>&nbsp; &nbsp;&nbsp;&nbsp;总人数：${allNum}</h1>
			<h1>&nbsp; &nbsp;&nbsp;&nbsp;男：${M}&nbsp; &nbsp;&nbsp;&nbsp;女：${F}&nbsp;&nbsp;&nbsp;&nbsp;教师：${教师}&nbsp;&nbsp;&nbsp;&nbsp;学生：${学生}</h1>
			<br><br><br>
			</div></div>
			<div id="container1"
				style=" height: 700px;-webkit-tap-highlight-color: #efefef; user-select: none; position: relative;background-color: #efefef; "></div>
    				
			
					
    				
    <script>

  /*      var option = {
            tooltip: {
                show: true,
                formatter: function(item) {
                    return item[0] + ': 权值' + item[1] + '<br>'
                }
            },
            list: [['${bq.key1}', ${bq.value1}], ['${bq.key2}', ${bq.value2}], ['${bq.key3}', ${bq.value3}], ['${bq.key4}', ${bq.value4}], ['${bq.key5}', ${bq.value5}], ['${bq.key6}', ${bq.value6}], ['${bq.key7}', ${bq.value7}], ['${bq.key8}', ${bq.value8}], ['${bq.key9}', ${bq.value9}], ['${bq.key10}', ${bq.value10}]],
            	// list:[["玻璃瓶",941],["塑料瓶",15],["易拉罐",3]],
            color: '#15a4fa',
            shape: 'circle',
            ellipticity: 1,
            gridSize: 16
        }
        var wc = new Js2WordCloud(document.getElementById('container'))
        wc.showLoading({
            backgroundColor: '#fff',
            text: '数据加载中....',
            effect: 'spin'
        })
        setTimeout(function() {
            wc.hideLoading()
            wc.setOption(option)
        }, 2000)

        setTimeout(function() {
            wc.setOption({
                noDataLoadingOption: {
                    backgroundColor: '#f00',
                    text: '暂无数据'
                }    
            })
        }, 4000)

        setTimeout(function() {
            wc.setOption(option)
        }, 6000)*/

        /////////////////
        var option1 = {
            color: '#15a4fa',
          //imageShape: 'https://example.com/images/shape.png',     // 提供一张图片，根据其形状进行词云渲染，默认为null
            shape:'cardioid',
            noDataLoadingOption: {
                backgroundColor: '#eee',
                text: '数据加载中.......',
                textStyle: {
                    color: '#f00',
                    fontSize: 20
                }
            }
        }
        var wc1 = new Js2WordCloud(document.getElementById('container1'))
        wc1.showLoading()
        setTimeout(function() {
            wc1.hideLoading()
            wc1.setOption(option1)
        }, 2000)
        

        var option8 = {
            tooltip: {
                show: true,
                formatter: function(item) {
                    return item[0] + ': 权值' + item[1] + '<br>'
                }
            },
            //list: [['${bq.key1}', 2000], ['${bq.key2}', Math.round(${bq.value2}*1000)], ['${bq.key3}', Math.round(${bq.value3}*1000)], ['${bq.key4}', Math.round(${bq.value4}*1000)], ['${bq.key5}', Math.round(${bq.value5}*1000)], ['${bq.key6}', Math.round(${bq.value6}*1000)]
           // , ['${bq.key4}', Math.round(${bq.value4}*1000)], ['${bq.key4}', Math.round(${bq.value4}*1000)], ['${bq.key4}', Math.round(${bq.value4}*1000)], ['${bq.key4}', Math.round(${bq.value10}*1000)]],
            list: ${list},
           color: 'red',
           gridSize: 16
        }
        setTimeout(function() {
            wc1.setOption(option8)
        }, 4000)

        window.onresize = function() { 
            
            wc1.resize()
        }
        /////////////////
    </script> 
				</div>
				

		</div>


	<!-- JS -->

	<!--  jQuery Migrate Plugin -->
	

	 
	<!-- Templatemo Script -->
</body>
</html>