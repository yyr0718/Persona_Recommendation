<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>西农图书馆</title>
<base href="../" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="referrer" content="no-referrer">
<script type="application/x-javascript">
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 


</script>
<!-- Custom Theme files -->
<link href="css2/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css2/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css2/menu.css" rel="stylesheet" type="text/css" media="all" />
<!-- menu style -->
<link href="css2/ken-burns.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- banner slider -->
<link href="css2/animate.min.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css2/owl.carousel.css" rel="stylesheet" type="text/css"
	media="all">
<!-- carousel slider -->
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="css2/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons -->
<!-- js -->
<script src="js2/jquery-2.2.3.min.js"></script>
<!-- //js -->
<!-- web-fonts -->
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Lovers+Quarrel'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Offside'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Tangerine:400,700'
	rel='stylesheet' type='text/css'>
<!-- web-fonts -->
<script src="js2/owl.carousel.js"></script>
<script>
	$(document).ready(function() {
		$("#owl-demo").owlCarousel({
			autoPlay : 3000, //Set AutoPlay to 3 seconds 
			items : 4,
			itemsDesktop : [ 640, 5 ],
			itemsDesktopSmall : [ 480, 2 ],
			navigation : true

		});
	});
</script>
<script src="js2/jquery-scrolltofixed-min.js" type="text/javascript"></script>
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
				marginTop : $('.header-two').outerHeight(true) + 10,
				zIndex : 999
			});
		});
	});
</script>
<!-- start-smooth-scrolling -->
<script type="text/javascript" src="js2/move-top.js"></script>
<script type="text/javascript" src="js2/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!-- //end-smooth-scrolling -->
<!-- smooth-scrolling-of-move-up -->
<script type="text/javascript">
	$(document).ready(function() {

		var defaults = {
			containerID : 'toTop', // fading element id
			containerHoverID : 'toTopHover', // fading element hover id
			scrollSpeed : 1200,
			easingType : 'linear'
		};

		$().UItoTop({
			easingType : 'easeOutQuart'
		});

	});
</script>
<!-- //smooth-scrolling-of-move-up -->
<script src="js2/bootstrap.js"></script>
</head>
<body>
	<!-- header -->
	<div class="header">
		<div class="w3ls-header">
			<!--header-one-->
			<div class="w3ls-header-left">
				<p>
					<a href="/"><i class="fa fa-gift" aria-hidden="true"></i>
						西农图书馆</a>
				</p>
			</div>
			<div class="w3ls-header-right">
				<ul>
					<li class="dropdown head-dpdn">
						<a href="goLogin" class="dropdown-toggle" > [ 亲，请先登录 ]</a> 
					</li>

				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="header-two">
			<!-- header-two -->
			<div class="container">
				<div class="header-logo">
					<div class="logo-img">
						<h1>
							<a href="/"><img src="./images/xiaohui.jpg"></a>
						</h1>
					</div>

				</div>
				<div class="header-search">
					<form action="search" method="post">
						<input type="search" name="search">
						<button type="submit" class="btn btn-default"
							aria-label="Left Align">
							<i class="fa fa-search" aria-hidden="true"> </i>
						</button>
					</form>
				</div>				
				<div class="header-cart">
<!--
					<div class="my-account">
						<a href="#"><i class="fa fa-map-marker"
							aria-hidden="true"></i> 论文推荐</a>
					</div>
-->					
					<div class="cart">
						<a href="login.jsp"><button
								class="w3view-cart" type="button" name="submit" value="">
								<i class="fa fa-heart" aria-hidden="true"></i>
							</button></a>

					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
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
						</span> <span> 带一卷书，走十里路，选一个清净地，看天，听鸟，倦了时，和身在草绵绵处寻梦去。
</span></a>
					</div>
					<script type="text/javascript" src="js2/jquery.marquee.min.js"></script>
					<script>
						$('.marquee').marquee({
							pauseOnHover : true
						});
						//@ sourceURL=pen.js
					</script>
				</div>
			</div>
		</div>
	</div>
	<!-- //header -->
	<!-- banner -->
	
	
	<!-- welcome -->
	<div class="welcome">
		<div class="container">
			<div class="welcome-info">
				<div class="bs-example bs-example-tabs" role="tabpanel"
					data-example-id="togglable-tabs">
					<ul id="myTab" class=" nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#home"
							id="home-tab" role="tab" data-toggle="tab"> <i
								class="fa fa-laptop" aria-hidden="true"></i>
								<h5>今日推荐</h5>
						</a></li>
						
						<li role="presentation"><a href="#james" role="tab"
							id="james-tab" data-toggle="tab"> <i class="fa fa-book"
								aria-hidden="true" style="color: #FF8C00;"></i>
								<h5>借阅排行</h5>
						</a></li>
						<li role="presentation"><a href="#decor" role="tab"
							id="decor-tab" data-toggle="tab"> <i class="fa fa-heartbeat"
								aria-hidden="true" style="color: #6495ED;"></i>
								<h5>最新上架</h5>
						</a></li>
						

					</ul>
					<div class="clearfix"></div>
					<h3 class="w3ls-title" style="font-family: SimHei;">为您推荐图书</h3>
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade in active" id="home"
							aria-labelledby="home-tab">
							<div class="tabcontent-grids">
								<div id="owl-demo" class="owl-carousel">
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<img src="https://img3.doubanio.com/view/subject/l/public/s28323390.jpg"
												height="215.86px" width="179.89px" alt="img">
											<div class="view-caption agileits-w3layouts">
												<h4 style="font-family: SimHei;">
													人间失格
												</h4>
												<p>收录《人间失格》《维庸之妻》《Good-bye》《灯笼》《满愿》《美男子与香烟》《皮肤与心》《蟋蟀》《樱桃》</p>
												<h4>【日】太宰治  著</h4>

												<form action="detail" method="post">
													<input type="hidden" name="id" value="0000546203" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-book" aria-hidden="true"></i> 查看详情
													</button>
												</form>
												
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>hot !</h6>
											</div>
											<img src="https://img1.doubanio.com/view/subject/l/public/s29634528.jpg"
												height="215.86px" width="179.89px" alt="img">
											<div class="view-caption agileits-w3layouts">
												<h4 style="font-family: SimHei;">
													月亮与六便士
												</h4>
												<p>“满地都是六便士，他却抬头看见了月亮。”</p>
												<h4>【英】 威廉·萨默赛特·毛姆 著</h4>
												<form action="detail" method="post">
													<input type="hidden" name="id" value="0000559976" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-book" aria-hidden="true"></i> 查看详情
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>New</h6>
											</div>
											<img src="images/baiduren.png"
												height="215.86px" width="179.89px" alt="img">
											<div class="view-caption agileits-w3layouts">
												<h4 style="font-family: SimHei;">
													摆渡人
												</h4>
												<p>男孩将她带离了事故现场。但是，迪伦很快意识到，男孩并不是偶然出现的路人，他似乎是特意在此等候。</p>
												<h4>【英】克莱儿·麦克福尔,付强  著</h4>
												<form action="detail" method="post">
													<input type="hidden" name="id" value="0000566318" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-book" aria-hidden="true"></i> 查看详情
													</button>
												</form>
											</div>
										</div>
									</div>


									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>hot !</h6>
											</div>
											<img src="https://img9.doubanio.com/view/subject/l/public/s26872396.jpg"
												height="215.86px" width="179.89px" alt="img">
											<div class="view-caption agileits-w3layouts">
												<h4 style="font-family: SimHei;">
													断舍离
												</h4>
												<p> 所谓断舍离，就是透过整理物品了解自己，整理心中的混沌，让人生舒适的行动技术。</p>
												<h4>【日】山下英子  著</h4>
												<form action="detail" method="post">
													<input type="hidden" name="id" value="0000563604" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-book" aria-hidden="true"></i> 查看详情
													</button>
												</form>
											</div>
										</div>
									</div>


									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<img src="images/zahuo.png"
												height="215.86px" width="179.89px" alt="img">
											<div class="view-caption agileits-w3layouts">
												<h4 style="font-family: SimHei;">
													解忧杂货店
												</h4>
												<p>僻静的街道旁有一家杂货店，只要写下烦恼投进店前门卷帘门的投信口，第二天就会在店后的牛奶箱里得到回答</p>
												<h4>【日】东野圭吾  著</h4>
												<form action="detail" method="post">
													<input type="hidden" name="id" value="0000532198" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-book" aria-hidden="true"></i> 查看详情
													</button>
												</form>
											</div>
										</div>
									</div>

									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<img src="https://img9.doubanio.com/view/subject/l/public/s27466554.jpg"
												height="215.86px" width="179.89px" alt="img">
											<div class="view-caption agileits-w3layouts">
												<h4 style="font-family: SimHei;">
													乖摸摸头
												</h4>
												<p>真实的故事自有万钧之力
													这本书讲述了12个真实的故事
													或许会让你看到那些你永远无法去体会的生活
													见识那些可能你永远都无法结交的人</p>
												<h4>大冰  著</h4>
												<form action="detail" method="post">
													<input type="hidden" name="id" value="0000547013" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-book" aria-hidden="true"></i> 查看详情
													</button>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<div role="tabpanel" class="tab-pane fade" id="james"
							aria-labelledby="james-tab">
							<div class="tabcontent-grids">
								<script>
									$(document).ready(function() {
										$("#owl-demo2").owlCarousel({

											autoPlay : 3000, //Set AutoPlay to 3 seconds

											items : 4,
											itemsDesktop : [ 640, 5 ],
											itemsDesktopSmall : [ 414, 4 ],
											navigation : true

										});

									});
								</script>



								<div id="owl-demo2" class="owl-carousel">
									
									<c:forEach items="${result3}" var="c">
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>hot !</h6>
											</div>
											<img src="${c.BOOK_IMAGES}"
												height="215.86px" width="179.89px" alt="img">
											<div class="view-caption agileits-w3layouts">
												<h4 style="font-family: SimHei;">
													${c.BOOK_TITLE}
												</h4>
												<p>${c.BOOK_PUBLISHER}</p>
												<h4>${c.BOOK_AUTHOR}</h4>
												<form action="detail" method="post">
													<input type="hidden" name="id" value="${c.MARC_REC_NO}" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-book" aria-hidden="true"></i> 查看详情
													</button>
												</form>
											</div>
										</div>
									</div>
                                     </c:forEach>
	
								</div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="decor"
							aria-labelledby="decor-tab">
							<div class="tabcontent-grids">
								<script>
									$(document).ready(function() {
										$("#owl-demo3").owlCarousel({

											autoPlay : 3000, //Set AutoPlay to 3 seconds

											items : 4,
											itemsDesktop : [ 640, 5 ],
											itemsDesktopSmall : [ 414, 4 ],
											navigation : true

										});

									});
								</script>
								<div id="owl-demo3" class="owl-carousel">
									<c:forEach items="${result4}" var="c">
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>new !</h6>
											</div>
											<img src="${c.BOOK_IMAGES}"
												height="215.86px" width="179.89px" alt="img">
											<div class="view-caption agileits-w3layouts">
												<h4 style="font-family: SimHei;">
													${c.BOOK_TITLE}
												</h4>
												<p>${c.BOOK_PUBLISHER}</p>
												<h4>${c.BOOK_AUTHOR}</h4>
												<form action="detail" method="post">
													<input type="hidden" name="id" value="${c.MARC_REC_NO}" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-book" aria-hidden="true"></i> 查看详情
													</button>
												</form>
											</div>
										</div>
									</div>
                                     </c:forEach>
									
								</div>
							</div>
						</div>
					</div>
			</div>
		</div>
	</div>
	<!-- //welcome -->

	<!-- coming soon -->
	<div class="wthree-offers">
		<div class="container">
		<h3 class="w3ls-title" style="font-family: SimHei;">搜索结果</h3>
		<c:forEach items="${result6}" var="c">
		<div class="col-md-3 product-grids">
			<div class="agile-products">
				<img height="170px"
					src="${c.BOOK_IMAGES}" class="img-responsive" alt="img">
				<div class="agile-product-text">
					<h5 align="center" style="font-size: 1.2em">
						<a style="white-space: nowrap; maxwidth: 136px; overflow: hidden; text-overflow: ellipsis">
							${c.BOOK_TITLE}</a>
					</h5>
					

					<form action="detail" method="post">
						<input type="hidden" name="id" value="${c.MARC_REC_NO}" />
						<button type="submit" class="w3ls-cart pw3ls-cart">
							<i class="fa fa-heart" aria-hidden="true"></i> 查看详情
						</button>
					</form>
				</div>
			</div>
		</div>
	</c:forEach>
		</div>
	</div>
	<!-- //coming soon -->
	

	<!-- deals -->
	<div class="deals">
		<div class="container">
			<h3 class="w3ls-title" style="font-family: SimHei;">所有图书分类</h3>
			<div class="deals-row">
				<div class="col-md-2 focus-grid w3focus-grid-mdl">
					<a href="../product/all.do" class="wthree-btn wthree2">
						<div class="focus-image">
							<i class="fa fa-laptop"></i>
						</div>
						<h4 class="clrchg">计算机</h4>
					</a>
				</div>
				<div class="col-md-2 focus-grid w3focus-grid-mdl">
					<a href="../product/all.do" class="wthree-btn wthree4">
						<div class="focus-image">
							<i class="fa fa-asterisk"></i>
						</div>
						<h4 class="clrchg">科学技术</h4>
					</a>
				</div>
				<div class="col-md-2 focus-grid w3focus-grid-mdl">
					<a href="../product/all.do" class="wthree-btn wthree3">
						<div class="focus-image">
							<i class="fa fa-book"></i>
						</div>
						<h4 class="clrchg">青春文学</h4>
					</a>
				</div>

				<div class="col-md-2 focus-grid w3focus-grid-mdl">
					<a href="../product/all.do" class="wthree-btn wthree">
						<div class="focus-image">
							<i class="fa fa-music" aria-hidden="true"></i>
						</div>
						<h4 class="clrchg">音乐歌曲</h4>
					</a>
				</div>
				<div class="col-md-2 focus-grid w3focus-grid-mdl">
					<a href="../product/all.do" class="wthree-btn wthree1">
						<div class="focus-image">
							<i class="fa fa-car"></i>
						</div>
						<h4 class="clrchg">交通运输</h4>
					</a>
				</div>
				<div class="col-md-2 focus-grid w3focus-grid-mdl"
					style="color: #FFB6C1;">
					<a href="../product/all.do" class="wthree-btn wthree6"
						style="height: 131.39px;">
						<div class="focus-image">
							<br>
							<p>
								<b>更多...</b>
							</p>
							<br>
						</div>
					</a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="footer-info w3-agileits-info">
				<div class="col-md-4 address-left agileinfo">
					<div class="footer-logo header-logo">
						<h2>
							<a href="/"><img src="./images/xiaohui.jpg">
						</h2>

						</a>
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
				Copyright &copy; 2019-2020 All rights reserved. 版权所有：<a
					href="/">西农图书馆</a>
			</p>
		</div>
	</div>
	<!-- menu js aim -->
	<script src="js2/jquery.menu-aim.js">
		
	</script>
	<script src="js2/main.js"></script>
	<!-- Resource jQuery -->
	<!-- //menu js aim -->
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
</body>
</html>