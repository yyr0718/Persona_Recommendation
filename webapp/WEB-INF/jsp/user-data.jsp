<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.net.*"%>
<%-- <%@ page import="com.iamoe.entity.critical_tables" %> --%>
<%@ page import="java.io.PrintWriter"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<meta charset="utf8">
<html lang="en">
<head>
<meta charset="gb2312">
<meta http-equiv="X-UA-Compatible" content="IE=edge">


<title>数据中心</title>
<meta name="description" content="">
<meta name="author" content="templatemo">
<link rel="stylesheet" type="text/css" href="css/selectDemo.css">
<script src="../../js/lib/esl.js"></script>
<script src="../../js/lib/config.js"></script>
<script src="../../js/lib/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="../../css/lanrenzhijia.css" />
<script type="text/javascript" src="../../js/lanrenzhijia.js"></script>
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
	src="${pageContext.request.contextPath}/js/rotarymap.js">
	
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
			<div>
				<div class="varietyBox">
					<div class="category">选择展示内容:</div>
					<ul>
						<li class="firstCol">借阅趋势</li>
						<li class="firstCol">相似用户</li>
						<li class="firstCol">类型偏好</li>
					</ul>

				</div>
			</div>
			<div>
				<div id="main" style="position:absolute;left:15%;top:20%;display:none;width: 1000px; height: 600px;"></div>
				<div id="main1" style="position:absolute;left:15%;top:20%;display:none;width: 1000px; height: 600px;"></div>
				<div id="main3"
					style="display:none;left:15%;top:20%;width: 1000px; height: 600px; -webkit-tap-highlight-color: transparent; user-select: none;position:absolute;"></div>
			</div>

		</div>
	</div>
	<!-- JS -->

	<script src="../../js/jquery-1.11.2.min.js"></script>
	<!-- jQuery -->
	<script src="../../js/jquery-migrate-1.2.1.min.js"></script>
	<!--  jQuery Migrate Plugin -->
	
	<script>
		require([ 'echarts' ],
				function(echarts) {
					var chart = echarts.init(document.getElementById('main'),
							null, {});

					window.onresize = function() {
						chart.resize();
					};
					var date = new Date();
					$.ajax({
						data : {},
						url : "/user-qushi",
						dataType : "json",
						success : function(data) {

							var year = new Array();
							var y = 0;
							for (var b = 4; b >= 0; b--) {
								year[y] = date.getFullYear() - b;
								y++;
							}
							year = year.map(String);
							var array1 = new Array();
							var array2 = new Array();
							var array3 = new Array();
							var array4 = new Array();
							var array5 = new Array();

							for (var i = 0; i < 60; i++) {
								for (var j = 0; j < 12; j++) {

									if (i == 0) {
										array1[j] = data[i + j].count;

									} else if (i == 12) {
										array2[j] = data[i + j].count;
									} else if (i == 24) {
										array3[j] = data[i + j].count;
									} else if (i == 36) {
										array4[j] = data[i + j].count;
									} else if (i == 48) {
										array5[j] = data[i + j].count;
									}
								}
							}
							chart.setOption({

								title : {
									
									text : '图书借阅趋势',
									textStyle: { //图例文字的样式
			                            fontSize:28,
			                        }
									
								},
								tooltip : {
									trigger : 'axis'
								},
								legend : {
									 textStyle: { //图例文字的样式
				                            fontSize: 18
				                        },
									data : year
									
								},
								grid : {
									left : '3%',
									right : '5%',
									bottom : '3%',
									top:70,
									containLabel : true
								},
								toolbox : {
									feature : {
										saveAsImage : {}
									}
								},
								xAxis : {
									nameTextStyle: { //图例文字的样式
			                            fontSize: 18
			                        },
			                        
									name:'月份',
									type : 'category',
									boundaryGap : false,
									
									data : [ '一月', '二月', '三月', '四月', '五月',
											'六月', '七月', '八月', '九月', '十月',
											'十一月', '十二月'],
											textStyle: { //图例文字的样式
					                            fontSize: 18
					                        },
								},
								yAxis : {
									
									name:'借阅数量/本',
									type : 'value',
									nameTextStyle: { //图例文字的样式
			                            fontSize:18
			                        },
								},
								series : [ {
									name : year[0],
									type : 'line',
									stack : '总量',
									data : array1
								}, {
									name : year[1],
									type : 'line',
									stack : '总量',
									data : array2
								}, {
									name : year[2],
									type : 'line',
									stack : '总量',
									data : array3
								}, {
									name : year[3],
									type : 'line',
									stack : '总量',
									data : array4
								}, {
									name : year[4],
									type : 'line',
									stack : '总量',
									data : array5
								} ]
							});
						}
					});

				});
	</script>
	<script>
		require(
				[ 'echarts' ],
				function(echarts) {
					var chart = echarts.init(document.getElementById('main1'),
							null, {});

					window.onresize = function() {
						chart.resize();
					};

					$.ajax({
						data : {},
						url : "${pageContext.request.contextPath}/user-data",
						type : "POST",
						dataType : "JSON",
						success : function(httpdata) {
							var item = httpdata[0];
							var myArray = new Array();
							var myArray1 = new Array();
							var myArray2 = new Array();

							if (item != null) {
								for (var i = 0; i < item.length; i++) {

									myArray[i] = item[i].name;
									myArray1[i] = item[i].count;
									myArray2[i] = item[i].CERT_ID_F;
									console.log(myArray + "  " + myArray1);
								}
							} else {
								alert("error");
							}
							chart.hideLoading();
							chart.setOption({
								title : {
									text : '与我有相似图书借阅记录的用户',
									textStyle: { //图例文字的样式
			                            fontSize:28,
			                        }
								},
								color : [ '#3398DB' ],
								tooltip : {
									trigger : 'axis',
									axisPointer : { // 坐标轴指示器，坐标轴触发有效
										type : 'shadow' // 默认为直线，可选为：'line' | 'shadow'
									}
								},
								grid : {
									left : '3%',
									right : '5%',
									bottom : '3%',
									top:70,
									containLabel : true
								},
								xAxis : [ {
									name:'学号',
									type : 'category',
									data : myArray2,
									axisTick : {
										alignWithLabel : true
									},
									nameTextStyle: { //图例文字的样式
			                            fontSize: 18
			                        },
								} ],
								yAxis : [ {
									name:'相似值',
									type : 'value',
									nameTextStyle: { //图例文字的样式
			                            fontSize: 18
			                        }
								} ],
								series : [ {
									name : '相似值',
									type : 'bar',
									barWidth : '60%',
									data : myArray1,
									nameTextStyle: { //图例文字的样式
			                            fontSize: 18
			                        },
								} ]
							});

						}
					});
					chart
							.on(
									'click',
									function(param) {
										var name = param.name;
										window.location.href = "${pageContext.request.contextPath}/reader-zx?cert_id="
												+ name;
									});
				});
	</script>
	s
	<script>
		/* Google Chart 
		-------------------------------------------------------------------*/
		// Load the Visualization API and the piechart package.
		google.load('visualization', '1.0', {
			'packages' : [ 'corechart' ]
		});

		// Set a callback to run when the Google Visualization API is loaded.
		google.setOnLoadCallback(drawChart);

		// Callback that creates and populates a data table,
		// instantiates the pie chart, passes in the data and
		// draws it.
		function drawChart() {

			// Create the data table.
			var data = new google.visualization.DataTable();
			data.addColumn('string', 'Topping');
			data.addColumn('number', 'Slices');
			data.addRows([ [ 'Mushrooms', 3 ], [ 'Onions', 1 ],
					[ 'Olives', 1 ], [ 'Zucchini', 1 ], [ 'Pepperoni', 2 ] ]);

			// Set chart options
			var options = {
				'title' : 'How Much Pizza I Ate Last Night'
			};

			// Instantiate and draw our chart, passing in some options.
			var pieChart = new google.visualization.PieChart(document
					.getElementById('pie_chart_div'));
			pieChart.draw(data, options);

			var barChart = new google.visualization.BarChart(document
					.getElementById('bar_chart_div'));
			barChart.draw(data, options);
		}

		$(document).ready(function() {
			if ($.browser.mozilla) {
				//refresh page on browser resize
				// http://www.sitepoint.com/jquery-refresh-page-browser-resize/
				$(window).bind('resize', function(e) {
					if (window.RT)
						clearTimeout(window.RT);
					window.RT = setTimeout(function() {
						this.location.reload(false); /* false to get page from cache */
					}, 200);
				});
			} else {
				$(window).resize(function() {
					drawChart();
				});
			}
		});
	</script>
	<script type="text/javascript" src="../../js/templatemo-script.js"></script>
	<script>
		require([ 'echarts' ], function(echarts) {
			var chart = echarts
					.init(document.getElementById('main3'), null, {});

			window.onresize = function() {
				chart.resize();
			};

			$.ajax({
				data : {},
				url : "/user-leixing",
				dataType : "json",
				success : function(data) {
					var array1 = new Array();
					var array2 = new Array();
					for (var i = 0; i < data.length; i++) {
						array1[i] = data[i].leixing;
						array2[i] = data[i].count;
					}
					console.log(array1);
					console.log(array2);
					chart.setOption({
						title : {
							textStyle:{
								fontSize:28
							},
							text : '图书类型偏好TOP5',
							subtext : '类型数据',
							left : 'center'
						},
						tooltip : {
							trigger : 'item',
							formatter : '{a} <br/>{b} : {c} ({d}%)'
						},
						legend : {
							orient : 'vertical',
							left : 'left',
							data : array1,
							textStyle:{
								fontSize:18
							}
						},
						series : [ {
							name : '图书类型',
							type : 'pie',
							radius : '70%',
							center : [ '50%', '60%' ],
							data : [ {
								value : array2[0],
								name : array1[0]
							}, {
								value : array2[1],
								name : array1[1]
							}, {
								value : array2[2],
								name : array1[2]
							}, {
								value : array2[3],
								name : array1[3]
							}, {
								value : array2[4],
								name : array1[4]
							} ],
							emphasis : {
								itemStyle : {
									shadowBlur : 10,
									shadowOffsetX : 0,
									shadowColor : 'rgba(0, 0, 0, 0.5)'
								}
							}
						} ]

					});
				}
			});
			chart
			.on(
					'click',
					function(param) {
						var name = param.name;
						window.location.href = "https://www.baidu.com/";
					});
		});
	</script>
	<script>
		var varietyButton = 0;
		var addCount = 0;
		$(".varietyBox ul li")
				.click(
						function() {
							var _this1 = this;
							var content = $(this).find("a").html();
							var count = 0;
							$(".searchTerm .selected .my-content").each(
									function() {
										var _this = this;
										// console.log($(_this).html())
										if ($(_this).html() != content) {
											count++;
										}
									})
							/* --------*/
							//如果已经是选中的就去除seleced样式
							if ($(this).hasClass("selected")) {
								$(this).removeClass("selected");
								$(this).find("a").css("color", "#000");
								var tempname = $(this).find("a").html();
								$(".my-content").each(function() {
									//console.info($(this).html());
									if ($(this).html() == tempname) {
										$(this).parent().remove();
									}
								})
								return;
							}
							if ($(".searchTerm .selected").length == count) {
								var addInfo = "<div href='#' class='selected'><span class='my-content' style='margin-right: 10px;'>"
										+ content
										+ "</span><span class='close' style='display: inline-block;height: 100%;'>x</span></div>";
								$(this).children().css("color", "#fff");
								$(".selected a").css("color", "#fff");
								addCount++;
							}
							if (varietyButton == 0 ) {
								$(".searchTerm .selected .my-content").html(
										content);
								
								$(".varietyBox ul li").each(function() {
										$(this).removeClass("selected");
										$(this).find("a").css("color", "#000");	
								})
								$(_this1).addClass("selected");
								$(_this1).find("a").css("color", "#fff");	
								var i=0;
								$(".varietyBox ul li").each(function() {
									var className = $(this).attr("class");
									
									if(className!="firstCol selected"){
										if(i==0){
											document.getElementById("main").style.display="none";
										}
										else if(i==1){
											document.getElementById("main1").style.display="none";
										}
										else if(i==2){
											document.getElementById("main3").style.display="none";
										}else if(i==3){
											document.getElementById("main2").style.display="none";
										}else if(i==4){
											document.getElementById("main4").style.display="none";
										}
										
									}
									else if(className=="firstCol selected"){
										if(i==0){
											document.getElementById("main").style.display="block";
										}
										else if(i==1){
											document.getElementById("main1").style.display="block";
										}
										else if(i==2){
											document.getElementById("main3").style.display="block";
										}else if(i==3){
											document.getElementById("main2").style.display="block";
										}else if(i==4){
											document.getElementById("main4").style.display="block";
										}
									}
									i++;
								})
								
							}
						})
	</script>
	 
	<!-- Templatemo Script -->
</body>
</html>