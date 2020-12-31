<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/26 0026
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--启用el表达式--%>
<%@ page isELIgnored="false"%>

<% String path = request.getContextPath(); %>


<html lang="en">
<head>
    <meta charset="utf-8">
    <title>西北农林科技大学图书馆</title>
    <meta name="author" content="Astuolermer">
    <link rel="shortcut icon" href="/images/favicon.ico"  type="image/x-icon"/>
    <link href="../../denglu/css/default.css" rel="stylesheet" type="text/css" />
	<!--必要样式-->
    <link href="../../denglu/css/styles.css" rel="stylesheet" type="text/css" />
    <link href="../../denglu/css/demo.css" rel="stylesheet" type="text/css" />
    <link href="../../denglu/css/loaders.css" rel="stylesheet" type="text/css" />
    <script src="http://pv.sohu.com/cityjson?ie=utf-8"></script>

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
<div class='login'>
	  <div class='login_title'>
	    <span>用户登录</span>
	  </div>
	  <div class='login_fields'>
	    <div class='login_fields__user'>
	      <div class='icon'>
	        <img alt="" src='../../denglu/img/user_icon_copy.png'>
	      </div>
	      <input name="login"id="zhanghao" placeholder='用户名' maxlength="16" type='text' autocomplete="off" value=""/>
	        <div class='validation'>
	          <img alt="" src='../../denglu/img/tick.png'>
	        </div>
	    </div>
	    <div class='login_fields__password'>
	      <div class='icon'>
	        <img alt="" src='../../denglu/img/lock_icon_copy.png'>
	      </div>
	      <input name="pwd"id="mima" placeholder='密码' maxlength="16" type='text' autocomplete="off">
	      <div class='validation'>
	        <img alt="" src='../../denglu/img/tick.png'>
	      </div>
	    </div>
	    <div class='login_fields__password'>
	      <div class='icon'>
	        <img alt="" src='../../denglu/img/key.png'>
	      </div>
	      <input name="code" placeholder='验证码' maxlength="4" type='text' name="ValidateNum" autocomplete="off">
	      <div class='validation' style="opacity: 1; right: -5px;top: -3px;">
          <canvas class="J_codeimg" id="myCanvas" onclick="Code();">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
	      </div>
	    </div>
	    <div class='login_fields__submit'>
	      <input type='button' value='登录'>
	    </div>
	  </div>
	  <div class='success'id="denglu" >
	  </div>
	  <div class='disclaimer'>
	    <h6>西北农林科技大学图书馆用户画像系统</h6>
	  </div>
	</div>
	<div class='authent'>
	  <div class="loader" style="height: 44px;width: 44px;margin-left: 28px;">
        <div class="loader-inner ball-clip-rotate-multiple">
            <div></div>
            <div></div>
            <div></div>
        </div>
        </div>
	  <p>认证中...</p>
	</div>
	<div class="OverWindows"></div>
    <link href="../../denglu/layui/css/layui.css" rel="stylesheet" type="text/css" />
	<script src="../../js/lib/jquery.min.js"></script>
	<script type="text/javascript" src="../../denglu/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src='../../denglu/js/stopExecutionOnTimeout.js?t=1'></script>
    <script src="../../denglu/layui/layui.js" type="text/javascript"></script>
    <script src="../../denglu/js/Particleground.js" type="text/javascript"></script>
    <script src="../../denglu/js/Treatment.js" type="text/javascript"></script>
    <script src="../../denglu/js/jquery.mockjax.js" type="text/javascript"></script>
	<script type="text/javascript">
		var canGetCookie = 0;//是否支持存储Cookie 0 不支持 1 支持
		var ajaxmockjax = 1;//是否启用虚拟Ajax的请求响 0 不启用  1 启用
		//默认账号密码
		
		var truelogin = "学号";
		var truepwd = "123456";
		
		var CodeVal = 0;
	    Code();
	    function Code() {
			if(canGetCookie == 1){
				createCode("AdminCode");
				var AdminCode = getCookieValue("AdminCode");
				showCheck(AdminCode);
			}else{
				showCheck(createCode(""));
			}
	    }
	    function showCheck(a) {
			CodeVal = a;
	        var c = document.getElementById("myCanvas");
	        var ctx = c.getContext("2d");
	        ctx.clearRect(0, 0, 1000, 1000);
	        ctx.font = "80px 'Hiragino Sans GB'";
	        ctx.fillStyle = "#E8DFE8";
	        ctx.fillText(a, 0, 100);
	    }
	    $(document).keypress(function (e) {
	        // 回车键事件  
	        if (e.which == 13) {
	            $('input[type="button"]').click();
	        }
	    });
	    //粒子背景特效
	    $('body').particleground({
	        dotColor: '#E8DFE8',
	        lineColor: '#133b88'
	    });
	    $('input[name="pwd"]').focus(function () {
	        $(this).attr('type', 'password');
	    });
	    $('input[type="text"]').focus(function () {
	        $(this).prev().animate({ 'opacity': '1' }, 200);
	    });
	    $('input[type="text"],input[type="password"]').blur(function () {
	        $(this).prev().animate({ 'opacity': '.5' }, 200);
	    });
	    $('input[name="login"],input[name="pwd"]').keyup(function () {
	        var Len = $(this).val().length;
	        if (!$(this).val() == '' && Len >= 5) {
	            $(this).next().animate({
	                'opacity': '1',
	                'right': '30'
	            }, 200);
	        } else {
	            $(this).next().animate({
	                'opacity': '0',
	                'right': '20'
	            }, 200);
	        }
	    });
	    var open = 0;
	    
	    layui.use('layer', function () {
			var msgalert = '默认账号:' + truelogin + '<br/> 默认密码:' + truepwd;
    		var index = layer.alert(msgalert, { icon: 6, time: 4000, offset: 't', closeBtn: 0, title: '友情提示', btn: [], anim: 2, shade: 0 });  
			layer.style(index, {
				color: '#777'
			}); 
	        //非空验证
	        $('input[type="button"]').click(function () {
	            var login = $('input[name="login"]').val();
	            var pwd = $('input[name="pwd"]').val();
	            var code = $('input[name="code"]').val();
	            
	            if (login == '') {
	                ErroAlert('请输入您的账号');
	            } else if (pwd == '') {
	                ErroAlert('请输入密码');
	            } else if (code == '' || code.length != 4) {
	                ErroAlert('输入验证码');
	            } else {
	            	var loginflag=0;
		    		$.ajax({
		    			data:{usr_id:login,usr_passwd:pwd},
		    			url:"/login-ajax",
		    			dataType : "JSON",
		    			success:function(httpdata){
		    				
		    				loginflag=httpdata.loginflag;
		    				console.log("1  "+loginflag);
		    			
	                //认证中..
	                fullscreen();
	                $('.login').addClass('test'); //倾斜特效
	                setTimeout(function () {
	                    $('.login').addClass('testtwo'); //平移特效
	                }, 300);
	                setTimeout(function () {
	                    $('.authent').show().animate({ right: -320 }, {
	                        easing: 'easeOutQuint',
	                        duration: 600,
	                        queue: false
	                    });
	                    $('.authent').animate({ opacity: 1 }, {
	                        duration: 200,
	                        queue: false
	                    }).addClass('visible');
	                }, 500);

	                //登陆
	                var JsonData = { login: login, pwd: pwd, code: code };
					//此处做为ajax内部判断
					
					var url = "";
					console.log("2  "+loginflag);
					if(loginflag==1 && JsonData.code.toUpperCase() == CodeVal.toUpperCase()){
						url = "Ajax/Login";
					}else{
						url = "Ajax/LoginFalse";
					}
					
					
	                AjaxPost(url, JsonData,
	                                function () {
	                                    //ajax加载中
	                                },
	                                function (data) {
	                                    //ajax返回 
	                                    //认证完成
	                                    setTimeout(function () {
	                                        $('.authent').show().animate({ right: 90 }, {
	                                            easing: 'easeOutQuint',
	                                            duration: 600,
	                                            queue: false
	                                        });
	                                        $('.authent').animate({ opacity: 0 }, {
	                                            duration: 200,
	                                            queue: false
	                                        }).addClass('visible');
	                                        $('.login').removeClass('testtwo'); //平移特效
	                                    }, 2000);
	                                    setTimeout(function () {
	                                        $('.authent').hide();
	                                        $('.login').removeClass('test');
	                                        if (data.Status == 'ok') {
	                                            //登录成功
	                                            $('.login div').fadeOut(100);
	                                            $('.success').fadeIn(1000);
	                                            $('.success').html(data.Text);
												//跳转操作
												
	                                        } else {
	                                            AjaxErro(data);
	                                        }
	                                    }, 2400);
	                                })
	            }
	        })
	            }
    		})
	    })
	    var fullscreen = function () {
	        
	    }  
		if(ajaxmockjax == 1){
			$.mockjax({  
				url: 'Ajax/Login',  
				status: 200,  
				responseTime: 50,          
				responseText: {"Status":"ok","Text":"登陆成功<br /><br />欢迎回来,点我进入系统"}  
			}); 
			$.mockjax({  
				url: 'Ajax/LoginFalse',  
				status: 200,  
				responseTime: 50,          
				responseText: {"Status":"Erro","Erro":"账号名或密码或验证码有误"}
			});   
		}
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
	window.location.href="/checkLogin2?usr_id="+usr_id+
			"&usr_passwd="+usr_passwd+"&usr_ip="+returnCitySN['cip']+
			"&zd="+system;
}
</script>
<script>
var canvas = document.getElementById("canvas");
var ctx = canvas.getContext("2d");
var bgg = document.getElementById("bg_glow");
w = ctx.canvas.width = window.innerWidth;
h = ctx.canvas.height = window.innerHeight;

window.onresize = function() {
  w = ctx.canvas.width = window.innerWidth;
  h = ctx.canvas.height = window.innerHeight;
  maxHeight = h*.9
  minHeight = h*.5;
  dots = [];
  pushDots();
  ctx.globalCompositeOperation = "lighter";
};

document.getElementById("overlay").onclick = function(){
  hue = Math.random()*360;
  bgg.style.background = "radial-gradient(ellipse at center, hsla("+hue+",50%,50%,.8) 0%,rgba(0,0,0,0) 100%)";
  dots = [];
  pushDots();
}

dots=[{}];
mx = 0; my = 0;
md = 100;
maxWidth = 15;
minWidth = 2;
maxHeight = h*.9
minHeight = h*.5;
maxSpeed = 35;
minSpeed = 6;
hue = 230;
hueDif = 50; // Hue +/-
glow = 10; // Turn this off for better performance
ctx.globalCompositeOperation = "lighter";

function pushDots(num){
  for(i=1; i<md; i++){
    dots.push({
      x:Math.random()*w,
      y:Math.random()*h/2,
      h:Math.random()*(maxHeight-minHeight)+minHeight,
      w:Math.random()*(maxWidth-minWidth)+minWidth,
      c:Math.random()*((hue+hueDif)-(hue-hueDif))+(hue-hueDif),
      m:Math.random()*(maxSpeed-minSpeed)+minSpeed
    });
  }
}pushDots();

function render(){
  ctx.clearRect(0,0,w,h);
  for(i=1; i<dots.length; i++){
    ctx.beginPath();
    grd = ctx.createLinearGradient(dots[i].x, dots[i].y, dots[i].x+dots[i].w, dots[i].y+dots[i].h);
    grd.addColorStop(.0, "hsla("+dots[i].c+",50%,50%,.0)");
    grd.addColorStop(.2, "hsla("+dots[i].c+20+",50%,50%,.5)");
    grd.addColorStop(.5, "hsla("+dots[i].c+50+",70%,60%,.8)");
    grd.addColorStop(.8, "hsla("+dots[i].c+80+",50%,50%,.5)");
    grd.addColorStop(1., "hsla("+(dots[i].c+100)+",50%,50%,.0)");
    ctx.shadowBlur = glow;
    ctx.shadowColor = "hsla("+(dots[i].c)+",50%,50%,1)";
    ctx.fillStyle=grd;
    ctx.rect(dots[i].x,dots[i].y,dots[i].w,dots[i].h);
    ctx.fill();
    ctx.closePath();
    dots[i].x += dots[i].m/100;
    if(dots[i].x > w+maxWidth){
      dots.splice(i,1);
      dots.push({
        x:0,
        y:Math.random()*h,
        h:Math.random()*(maxHeight-minHeight)+minHeight,
        w:Math.random()*(maxWidth-minWidth)+minWidth,
        c:Math.random()*(280-200)+200,
        m:Math.random()*(maxSpeed-minSpeed)+minSpeed
      });
    }
  }window.requestAnimationFrame(render);
}

bgg.style.background = "radial-gradient(ellipse at center, hsla("+hue+",50%,50%,.8) 0%,rgba(0,0,0,0) 100%)";
render();</script>
</body>
<script type="text/javascript" src="../../js/lib/echarts.js"></script>
</html>
