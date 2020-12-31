<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String appPath = request.getContextPath(); %>
<html lang="en">



<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>西农图书馆_个人中心</title>
    <% String ra="profileResource/";%>

    <!-- Bootstrap Core CSS -->
    <link href="<%=ra %>vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<%=ra %>vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="<%=ra %>vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="<%=ra %>vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<%=ra %>dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<%=ra %>vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="<%=ra %>starability-minified/starability-all.min.css"/>
    <link rel="stylesheet" href="<%=ra %>assets/css/amazeui.css" /> 
        <link rel="stylesheet" href="<%=ra %>assets/css/admin.css" />
        <link rel="stylesheet" href="<%=ra %>assets/css/menu.css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom Theme files -->

<link href="<%=ra %>css/style.css" rel="stylesheet" type="text/css" media="all" /> 



<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="<%=ra %>css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- js -->
 

    <!-- Include the FontAwesome CSS if you want to use feedback icons provided by FontAwesome -->
    <!--<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" />-->

    <script type="text/javascript" src="<%=ra %>vendor/jquery/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="<%=ra %>vendor/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=ra %>dist/js/bootstrapValidator.js"></script>
<!-- //js --> 

<style type="text/css">body{overflow:scroll;}</style>

</head>



<body >

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">

        <div class="header">
        <div class="w3ls-header"><!--header-one--> 
            <div class="w3ls-header-left">
                <div class="w3ls-header-left">
				<p>
					<a href="/"><i class="fa fa-gift" aria-hidden="true"></i>
						西农图书馆</a>
				</p>
			</div>
            </div>
            <div class="w3ls-header-right">
                <ul>
                    <li class="dropdown head-dpdn">
                        <a href="index" ><i class="fa fa-user" aria-hidden="true"></i> 返回</a>
                    </li> 
                   
                    <li class="dropdown head-dpdn"><a href="user-exit"
						class="dropdown-toggle"><i class="fa fa-map-marker"
							aria-hidden="true"></i> 退出</a></li>
                    
                </ul>
            </div>
            <div class="clearfix"> </div> 
        </div>
    </div>
    <!-- //header -->


        <!-- cart-js -->

        
        <!-- /.navbar-top-links -->

        <div class="navbar-default sidebar" role="navigation" style="font-size: 18px">
            <div class="sidebar-nav navbar-collapse">
                <!-- User -->
                <div class="user-box am-hide-sm-only" >
                    <div style="position: relative;top: -20px;"><h4>个人中心</h4></div>
                    <div class="user-img">
                      <img src="<%=ra %>assets/img/avatar-1.jpg" alt="user-img" title="Mat Helme" class="img-circle img-thumbnail img-responsive">
                      <div class="user-status offline"><i class="am-icon-dot-circle-o" aria-hidden="true"></i></div>
                  </div>
                  <br>
                  <h5><a href="#">${reader.name}的<br>个人中心</a> </h5>

              </div>
              <!-- End User -->
              <ul class="nav" id="main-menu">
                
                <li>
                        <a href="./profile.do?href=content">&nbsp&nbsp&nbsp<i class="fa fa-edit"></i>&nbsp兴趣画像 </a>
                    </li>
                    <li>
                        <a href="./profile.do?href=content1">&nbsp&nbsp&nbsp<i class="fa fa-qrcode"></i>&nbsp群体画像</a>
                    </li>
                    
            </ul>
            
            
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper" >
            <div class="header"> 
                <h1 class="page-header">
                    账户信息 <small>Profile</small>
                </h1>                                   
            </div>

            <div id="page-inner"> 

                <div id="page-inner"> 
                  <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                          		   修改信息
                         </div>
                         <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form" id="defaultForm" method="post"  accept-charset="utf-8">
                                    <%
                                    //User user=(User)request.getAttribute("user"); 
                                    %>
                                        <div class="form-group">
                                            <label>用户ID：</label>${reader.cert_id}
                                            <p class="form-control-static"><%//=user.getUserId()%></p>
                                        </div>

                                        <div class="form-group">
                                            <label>用户名：</label>${reader.name}
                                            <input id="username" name="username" class="form-control" placeholder="点击修改" value=<%//=user.getUsername()%> >
                                        </div>

                                        <div class="form-group">
                                            <label>学院：</label>${reader.dept}
                                            <input id="stuId" name="stuId" class="form-control" placeholder="点击修改" value=<%//=user.getClasses()%> >
                                        </div>
                                        <div class="form-group">
                                            <label>新密码</label>
                                            <input id="passwd" name="passwd" type="password" class="form-control" placeholder="点击修改" value=<%//=user.getPasswd()%> >
                                            <p class="help-block">密码长度至少6位</p>

                                        </div>
                                        <div class="form-group" >
                                            <label>请再次输入密码</label>
                                            <input name="confirmPassword" type="password"  class="form-control" placeholder="点击修改">
                                        </div>

                                       

                                    <!--<div class="form-group">
                                        <label>上传头像</label>
                                        <input type="file">
                                    </div>-->
                                    <br>
                                    
                                    <!--<button type="submit" class="btn btn-default">提交</button>-->
                                    <!--<a href="profile.html"><button type=button id="validateBtn" class="btn btn-primary">提交</button></a>-->
                                    <div><button type="reset" class="btn btn-default">重置</button>
                                    <button class="btn btn-primary " id="validateBtn" type="submit" >提交</button>
                                   </div>                                  
                                    
                                </form>
                            </div>
                            <!-- /.col-lg-6 (nested) -->
                        </div>
                        <!-- /.row (nested) -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
    </div>
    <!-- /. PAGE INNER  -->
</div>
<!-- /. PAGE WRAPPER  -->
<!-- /. WRAPPER  -->

<div id="page-inner"> 

                <div id="page-inner"> 
                  <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                          		   用户画像
                         </div>
                         <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    
                                  <h1 id="normal">兴趣画像</h1>
    <div id="container" style="height: 400px;"></div>
    <h1 id="no-data">群体画像</h1>
    <div id="container1" style="height: 400px;"></div>
    <script src="js/js2wordcloud.js"></script>
    <script>

        var option = {
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
        }, 6000)

        /////////////////
        var option1 = {
            color: '#15a4fa',
            noDataLoadingOption: {
                backgroundColor: '#eee',
                text: '暂无数据',
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
            wc.resize()
            wc1.resize()
        }
        /////////////////
    </script>     

                                    
                                                                   
                               
                            </div>
                            <!-- /.col-lg-6 (nested) -->
                        </div>
                        <!-- /.row (nested) -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
    </div>
    <!-- /. PAGE INNER  -->
</div>


</div>
<div class="clearfix" style=" padding:50px; "></div>




<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="footer-info w3-agileits-info">
				<div class="col-md-4 address-left agileinfo">
					<div class="footer-logo header-logo">
						<h2>
							<img src="./images/xiaohui.jpg">
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
				Copyright &copy; 2019-2020 All rights reserved. 版权所有：<a
					href="index.html">西农图书馆</a>
			</p>
		</div>
	</div>






<!-- JS Scripts-->
<script>
/*$(document).ready(function() {
	$("#successAlert").hide();
});*/
/*$("#submitBtn").click(function(){

	$("#successAlert").hide();
	setTimeout(function(){$("#successAlert").hide(300);},2000);
	

 	   $.ajax({
            type: 'POST',
            url: "profileEdit.do",
            data: {"username":$("#username").val(),
            	"stuId":$("#stuId").val(),
            	"email":$("#email").val(),
            	"phone":$("#phone").val()}

        });
		    

});*/
</script>
<script>
/*if(!$('#saveadmin_form').data('bootstrapValidator').isValid()){  
	 $("#validateBtn").Attr("disabled","disabled");
} else {
   $("#validateBtn").removeAttr("disabled");
}*/
</script>
<script type="text/javascript">
$(document).ready(function() {
    function randomNumber(min, max) {
        return Math.floor(Math.random() * (max - min + 1) + min);
    };
    $('#captchaOperation').html([randomNumber(1, 100), '+', randomNumber(1, 200), '='].join(' '));

    $('#defaultForm').bootstrapValidator({
//        live: 'disabled',

        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            
            username: {
                message: 'The username is not valid',
                validators: {
                    notEmpty: {
                        message: '用户名不允许为空'
                        
                    },
                }
            },
            email: {
                validators: {
                                        notEmpty: {
                        message: 'Email地址不允许为空'
                    },
                    emailAddress: {
                        message: '不是有效的Email地址'
                    }
                }
            },
            passwd: {
                validators: {

                    notEmpty: {
                        message: '密码不允许为空'
                    },
                    /*stringLength: {
                        min: 6,
                        max: 30,
                        message: '密码长度不符合要求'
                    },*/
                    different: {
                        field: 'username',
                        message: '密码不允许与用户名相同'
                    }
                }
            },
            confirmPassword: {
                validators: {
                    identical: {
                        field: 'passwd',
                        message: '两次输入的密码不一致'
                    },
                    
                }
            },

            stuId: {
                validators: {
                    notEmpty: {
                        message: '班级不允许为空'
                    },
                    /*regexp: {
                        regexp: /^[0-9]+$/,
                        message: '学号必须为纯数字'
                    }*/
                }
            },
            phone: {
                validators: {
                    notEmpty: {
                        message: '电话不允许为空'
                    },
                    regexp: {
                        regexp: /^[0-9*#/-]+$/,
                        message: '不是合法的电话号码'
                    }
                }
            }

            

        }
    });

    // Validate the form manually
    $('#validateBtn').click(function() {
        $('#defaultForm').bootstrapValidator('validate');
    });

    $('#resetBtn').click(function() {
        $('#defaultForm').data('bootstrapValidator').resetForm(true);
    });
});
</script>



</body>
</html>