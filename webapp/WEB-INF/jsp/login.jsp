<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%
	String path = "../";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>登录</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- Custom Theme files -->
<link href="<%=path%>css2/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="<%=path%>css2/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="<%=path%>css2/animate.min.css" rel="stylesheet"
	type="text/css" media="all" />
<!-- animation -->
<link href="<%=path%>css2/menu.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- menu style -->
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="<%=path%>css2/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons -->
<!-- js -->
<script src="<%=path%>js2/jquery-2.2.3.min.js"></script>
<script src="<%=path%>js2/jquery-scrolltofixed-min.js"
	type="text/javascript"></script>
<!-- fixed nav js -->
<script src="http://pv.sohu.com/cityjson?ie=utf-8"></script>
<script>
    $(document).ready(function() {

        // Dock the header to the top of the window when scrolled past the banner. This is the default behaviour.

        $('.header-two').scrollToFixed();  
        // previous summary up the page.

        var summaries = $('.summary');
        summaries.each(function(i) {
            var summary = $(summaries[i]);
            var next = summaries[i + 1];

            summary.scrollToFixed({
                marginTop: $('.header-two').outerHeight(true) + 10, 
                zIndex: 999
            });
        });
    });
</script>
<!-- //js -->
<!-- web-fonts -->
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Lovers+Quarrel'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Offside'
	rel='stylesheet' type='text/css'>
<!-- web-fonts -->
<!-- start-smooth-scrolling -->
<script type="text/javascript" src="<%=path%>js2/move-top.js"></script>
<script type="text/javascript" src="<%=path%>js2/easing.js"></script>
<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
</script>
<!-- //end-smooth-scrolling -->
<!-- smooth-scrolling-of-move-up -->
<script type="text/javascript">
		$(document).ready(function() {
		
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
<!-- //smooth-scrolling-of-move-up -->
</head>
<body>
	<!-- header -->
	<div class="header">
		<div class="w3ls-header">
			<!--header-one-->
			<div class="w3ls-header-left">
				<p>
					<a href="/"><i class="fa fa-gift" aria-hidden="true"></i> 西农图书馆</a>
				</p>
			</div>
			<div class="w3ls-header-right">
				<ul>
					<li class="dropdown head-dpdn"><a href="goLogin"
						class="dropdown-toggle"> [ 亲，请先登录 ]</a></li>

				</ul>
			</div>
			<div class="clearfix"></div>
		</div>

		<!-- //header-two -->
		<div class="header-three">
			<!-- header-three -->
			<div class="container">
				<div class="menu">
					<div class="cd-dropdown-wrapper">
						<a class="cd-dropdown-trigger" href="#0"
							style="font-family: SimHei;">所有图书分类</a>
						<nav class="cd-dropdown">
							<a href="#0" class="cd-close">Close</a>
							<ul class="cd-dropdown-content">
								<li class="has-children"><a href="#"><i
										class="fa fa-tasks" aria-hidden="true"></i> &nbsp;索书号ABCDE</a>
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">Menu</a></li>
										<li class="see-all"><a href="../product/all.do">查看所有图书</a></li>
										<li><a href="../product/all.do">索书号A</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">All Electronics</a></li>
												<li>马克思主义</li>
												<li>列宁主义</li>
												<li>毛泽东思想</li>
												<li>邓小平理论</li>
												<li><a href="../product/all.do">more</a></li>
											</ul></li>
										<li><a href="../product/all.do">索书号B</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">All Electronics </a></li>
												<li>哲学</li>
												<li>宗教</li>
												<li><a href="products.html">more</a></li>
											</ul></li>
										<li><a href="../product/all.do">索书号C</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">All Electronics</a></li>
												<li>社会科学总论</li>
												<li><a href="products.html">more</a></li>
											</ul></li>
										<li><a href="../product/all.do">索书号D</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">All Electronics </a></li>
												<li>政治</li>
												<li>法律</li>
												<li><a href="products.html">more</a></li>
											</ul></li>
										<li><a href="../product/all.do">索书号E</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#0">All Electronics </a></li>
												<li>军事理论</li>
												<li>世界军事</li>
												<li>战略学</li>
												<li><a href="products.html">more</a></li>
											</ul></li>

									</ul> <!-- .cd-secondary-dropdown --></li>
								<!-- .has-children -->
								<li class="has-children"><a href="#"><i
										class="fa fa-tasks" aria-hidden="true"></i> &nbsp;索书号FGHIJ</a>
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">Menu</a></li>
										<li class="see-all"><a href="../product/all.do">查看所有图书</a></li>
										<li><a href="../product/all.do">索书号F</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">All Fashion Stores</a></li>
												<li>经济学</li>
												<li>农业、工业经济</li>
												<li>各国经济</li>
												<li><a href="products1.html">more</a></li>
											</ul></li>
										<li><a href="../product/all.do">索书号G</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">All Fashion Stores</a></li>
												<li>文化</li>
												<li>科学</li>
												<li>教育</li>
												<li>体育</li>
												<li><a href="products1.html">more</a></li>
											</ul></li>
										<li><a href="../product/all.do">索书号H</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">All Fashion Stores</a></li>
												<li>语言</li>
												<li>文字</li>
												<li><a href="../product/all.do">more</a></li>
											</ul></li>
										<li><a href="../product/all.do">索书号I</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">All Fashion Stores</a></li>
												<li>世界文学</li>
												<li>中国文学</li>
												<li><a href="../product/all.do">more</a></li>
											</ul></li>
										<li><a href="../product/all.do">索书号J</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">All Fashion Stores</a></li>
												<li>艺术</li>
												<li><a href="../product/all.do">more</a></li>
											</ul></li>

									</ul> <!-- .cd-secondary-dropdown --></li>
								<!-- .has-children -->
								<li class="has-children"><a href="products2.html"><i
										class="fa fa-tasks" aria-hidden="true"></i>&nbsp; 索书号KNOPQ</a>
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">Menu</a></li>
										<li class="see-all"><a href="../product/all.do">查看所有图书</a></li>
										<li><a href="../product/all.do">索书号K</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">All Kids Fashions</a></li>
												<li>历史</li>
												<li>地理</li>

												<li><a href="../product/all.do">more</a></li>
											</ul></li>
										<li><a href="../product/all.do">索书号N</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">All Kids Fashions</a></li>
												<li>自然科学总论</li>
												<li><a href="../product/all.do">more</a></li>
											</ul></li>
										<li><a href="../product/all.do">索书号O</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">All Kids Fashions</a></li>
												<li>数理科学</li>
												<li>化学</li>
												<li><a href="#">more</a></li>
											</ul></li>

										<li><a href="../product/all.do">索书号P</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">All Kids Fashions</a></li>
												<li>天文学</li>
												<li>地球科学</li>
												<li><a href="#">more</a></li>
											</ul></li>

										<li><a href="../product/all.do">索书号Q</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#">All Kids Fashions</a></li>
												<li>生物科学</li>

												<li><a href="#">more</a></li>
											</ul></li>
									</ul></li>
								<li class="has-children"><a href="#"><i
										class="fa fa-tasks" aria-hidden="true"></i>&nbsp;索书号RSTUV</a>
									<ul class="cd-secondary-dropdown is-hidden">
										<li class="go-back"><a href="#">Menu</a></li>
										<li class="see-all"><a href="products3.html">查看所有图书</a></li>
										<li><a href="../product/all.do">索书号R</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li>医药</li>
												<li>卫生</li>

												<li><a href="../product/all.do">more</a></li>
											</ul></li>
										<li><a href="../product/all.do">索书号S </a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li>农业科学</li>
												<li><a href="products3.html">more</a></li>
											</ul></li>
										<li><a href="../product/all.do">索书号T</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li>工业技术</li>
												<li><a href="products3.html">more</a></li>
											</ul></li>
										<li><a href="../product/all.do">索书号U</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li>交通运输</li>
												<li><a href="products3.html">more</a></li>
											</ul></li>
										<li><a href="../product/all.do">索书号V</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li>航空</li>
												<li>航天</li>
												<li><a href="products3.html">more</a></li>
											</ul></li>
									</ul> <!-- .cd-secondary-dropdown --></li>
								<!-- .has-children -->
								<li class="has-children"><a href="#"><i
										class="fa fa-tasks" aria-hidden="true"></i>&nbsp;索书号XZ</a>
									<ul class="cd-secondary-dropdown is-hidden"
										style="height: 450px;">
										<li class="go-back"><a href="#">Menu</a></li>
										<li class="see-all"><a
											style="position: relative; bottom: 5px;"
											href="../product/all.do">查看所有图书</a></li>
										<li><a href="../product/all.do">索书号X</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li>环境科学</li>
												<li>安全科学</li>

												<li><a href="../product/all.do">more</a></li>
											</ul></li>
										<li><a href="../product/all.do">索书号Z</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#"></a></li>
												<li>综合图书</li>
												<li>辞典</li>
												<li>百科全书</li>
												<li>期刊</li>

												<li><a href="../product/all.do">more</a></li>
											</ul></li>

									</ul> <!-- .cd-secondary-dropdown --></li>
								<!-- .has-children -->

							</ul>
							<!-- .cd-dropdown-content -->
						</nav>
						<!-- .cd-dropdown -->
					</div>
					<!-- .cd-dropdown-wrapper -->
				</div>
				<div class="move-text">
					<div class="marquee">
						<a href="offers.html"> 好的书籍是最贵重的珍宝。 <span>书籍就像一盏神灯，它照亮人们最遥远最黯淡的生活道路。
						</span> <span> 带一卷书，走十里路，选一个清净地，看天，听鸟，倦了时，和身在草绵绵处寻梦去。 </span></a>
					</div>
					<script type="text/javascript"
						src="<%=path%>js2/jquery.marquee.min.js"></script>
					<script>
					  $('.marquee').marquee({ pauseOnHover: true });
					  //@ sourceURL=pen.js
					</script>
				</div>
			</div>
		</div>
	</div>
	<!-- //header -->
	<!-- login-page -->
	<div class="login-page">
		<div class="container">
			<h3 class="w3ls-title w3ls-title1">
				<i class="fa fa-user" aria-hidden="true">&nbsp;&nbsp;&nbsp;用户登录</i>
			</h3>
			<div class="login-body">
				
					<input type="text" id="zhanghao"class="user" name="cert_id" placeholder="学号"
						required=""> 
					<input type="password" name="passwd"
						class="lock" id="mima"placeholder="密码" rsequired="">
					<div style="color: red; font-size: 13px" id="errMsgDiv"><%=request.getAttribute("errMsg")%><br>
					</div>
					<script>
					if(<%=request.getAttribute("errMsg")%>==null){
						$("#errMsgDiv").hide();
					}
					</script>
					<input type="submit" id="denglu" value="登录">

					<div class="forgot-grid">
						<label class="checkbox"><input type="checkbox"
							name="checkbox"><i></i>自动登录</label>
						<div class="forgot">
							<a href="#">忘记密码?</a>
						</div>
						<div class="clearfix"></div>

					</div>
				
			</div>

		</div>
	</div>
	<!-- //login-page -->
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="footer-info w3-agileits-info">
				<div class="col-md-4 address-left agileinfo">
					<div class="footer-logo header-logo">
						<h2>
							<a href="index"><img src="./images/xiaohui.jpg"></a>
						</h2>

					</div>
					<ul>
						<li><i class="fa fa-map-marker"></i>陕西省·咸阳市·杨凌区·西北农林科技大学</li>
						<li><i class="fa fa-mobile"></i> 333 222 3333</li>
						<li><i class="fa fa-phone"></i> +222 11 4444</li>
						<li><i class="fa fa-envelope-o"></i> <a
							href="mailto:example@mail.com"> mail@example.com</a></li>
					</ul>
				</div>
				<div class="col-md-8 address-right">
					<div class="col-md-4 footer-grids">
						<h3 style="font-family: SimHei;">西农图书馆</h3>
						<ul>
							<li><a href="about.html">关于我们</a></li>
							<li><a href="marketplace.html">友情链接</a></li>
							<li><a href="values.html">服务宗旨</a></li>
							<li><a href="privacy.html">隐私保护</a></li>
						</ul>
					</div>
					<div class="col-md-4 footer-grids">
						<h3 style="font-family: SimHei;">为您服务</h3>
						<ul>
							<li><a href="contact.html">联系我们</a></li>
							<li><a href="login.html">意见反馈</a></li>
							<li><a href="faq.html">联系方式</a></li>
							<li><a href="sitemap.html">作者中心</a></li>
							<li><a href="login.html">帮助中心</a></li>
						</ul>
					</div>

					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //footer -->
	<div class="copy-right">
		<div class="container">
			<p>
				Copyright &copy; 2018-2019 All rights reserved. 版权所有：<a
					href="<%=path%>index.jsp">西农图书馆</a>
			</p>
		</div>
	</div>
	<!-- cart-js -->
	<script src="<%=path%>js2/minicart.js"></script>
	<script>
        w3ls.render();

        w3ls.cart.on('w3sb_checkout', function (evt) {
        	var items, len, i;

        	if (this.subtotal() > 0) {
        		items = this.items();

        		for (i = 0, len = items.length; i < len; i++) {
        			items[i].set('shipping', 0);
        			items[i].set('shipping2', 0);
        		}
        	}
        });
    </script>
	<script type="text/javascript">
function detectOS() {
	var sUserAgent = navigator.userAgent;
	var isWin = (navigator.platform == "Win32") || (navigator.platform == "Windows");
	var isMac = (navigator.platform == "Mac68K") || (navigator.platform == "MacPPC") || (navigator.platform == "Macintosh") || (navigator.platform == "MacIntel");
	if (isMac) return "Mac";
	var iPhone = sUserAgent.indexOf("iPhone") > -1 || sUserAgent.indexOf("iPhone") > -1;
	if (iPhone) return "iPhone";
	var isUnix = (navigator.platform == "X11") && !isWin && !isMac;
	if (isUnix) return "Unix";
	var isLinux = (String(navigator.platform).indexOf("Linux") > -1);
	var bIsAndroid = sUserAgent.toLowerCase().match(/android/i) == "android";
	if (isLinux) {
	if(bIsAndroid) return "Android";
	else return "Linux";
	}
	if (isWin) {
	var isWin2K = sUserAgent.indexOf("Windows NT 5.0") > -1 || sUserAgent.indexOf("Windows 2000") > -1;
	if (isWin2K) return "Windows2000";
	var isWinXP = sUserAgent.indexOf("Windows NT 5.1") > -1 ||
	sUserAgent.indexOf("Windows XP") > -1;
	if (isWinXP) return "WindowsXP";
	var isWin2003 = sUserAgent.indexOf("Windows NT 5.2") > -1 || sUserAgent.indexOf("Windows 2003") > -1;
	if (isWin2003) return "Win2003";
	var isWinVista= sUserAgent.indexOf("Windows NT 6.0") > -1 || sUserAgent.indexOf("Windows Vista") > -1;
	if (isWinVista) return "WinVista";
	var isWin7 = sUserAgent.indexOf("Windows NT 6.1") > -1 || sUserAgent.indexOf("Windows 7") > -1;
	if (isWin7) return "Windows7";
	var isWin8 = sUserAgent.indexOf("Windows NT 6.2") > -1 || sUserAgent.indexOf("Windows 8") > -1;
	if (isWin8) return "Windows8";
	var isWin81 = sUserAgent.indexOf("Windows NT 6.3") > -1 || sUserAgent.indexOf("Windows 8.1") > -1;
	if (isWin81) return "Windows8.1";
	var isWin10 = sUserAgent.indexOf("Windows NT 10.0") > -1 || sUserAgent.indexOf("Windows 10") > -1;
	if (isWin10) return "Windows10";
	 
	}

	return "other";
	}
document.getElementById("denglu").onclick = function(){
	var version = navigator.userAgent;
	//"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3223.0 Safari/537.36" 
	if(version.indexOf("Windows NT 5")!=-1) { 
	    console.log("这是XP系统");
	}else if(version.indexOf("Windows NT 7")!=-1){
	    console.log("这是win7系统");
	}else if(version.indexOf("Windows NT 10")!=-1){
	    console.log("这是win10系统");
	}
	var usr_id=${"zhanghao"}.value;
	var usr_passwd=${"mima"}.value;
	var system=detectOS(); 
	console.log(system);
// 	console.log(usr_id);
// 	console.log(usr_passwd);
// 	console.log("IP地址是：" + returnCitySN['cip'] + "    " + "城市名字：" + returnCitySN['cname']);
	window.location.href="/login?usr_id="+usr_id+
			"&usr_passwd="+usr_passwd+"&usr_ip="+returnCitySN['cip']+
			"&zd="+system+"&passwd="+usr_passwd+"&cert_id="+usr_id;
}
</script>
	<!-- //cart-js -->
	<!-- menu js aim -->
	<script src="<%=path%>js2/jquery.menu-aim.js"> </script>
	<script src="<%=path%>js2/main.js"></script>
	<!-- Resource jQuery -->
	<!-- //menu js aim -->
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="<%=path%>js2/bootstrap.js"></script>


</body>
</html>