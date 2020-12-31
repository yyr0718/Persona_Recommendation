<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/2 0002
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>忘记密码-验证</title>
    <meta name="author" content="Astuolermer">
    <link href="../../css/font-awesome.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="favicon.ico"  type="image/x-icon"/>
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/templatemo-style.css" rel="stylesheet">
    <style type="text/css">
        body{
            background-image: url('../../images/bkg.jpg');
        }
    </style>
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

<body class="light-gray-bg">
<div class="templatemo-content-widget templatemo-login-widget white-bg">
    <header class="text-center">
        <div class="square"></div>
        <h1>忘记密码-验证</h1>
    </header>
    <form name="loginForm3" method="post" action="${pageContext.request.contextPath}/user/checkFind.do" class="templatemo-login-form">
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon"><i class="i-font-normal"></i>&nbsp用&nbsp户&nbsp名&nbsp</div>
                <input type="text" name="usr_id" id="usr_id" value="${f_usr_id}" class="form-control" placeholder="在这里输入你的用户名"><span>${msg1}</span></td>
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon"><i class="i-font-normal"></i>邮&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp箱&nbsp</div>
                <input type="text" name="email" id="email" value="${f_email}" class="form-control" placeholder="在这里输入你的邮箱">
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon"><i class="i-font-normal"></i>验&nbsp证&nbsp码&nbsp</div>
                <input  style="display: table-cell;" type="text"  name="emailmsg" class="form-control" placeholder="在这里输入获取的验证码"><span>${msg2}</span></td>
                <button style="display: table-cell;height:34px;float: right;" type="submit" formaction="${pageContext.request.contextPath}/user/checkEmail3.do" class="templatemo-blue-button width-100">获取验证码</button>
            </div>
        </div>
        <div class="form-group">
            <button type="submit" class="templatemo-blue-button width-100">我要修改密码</button>
        </div>
    </form>
</div>
<script type="text/javascript" src="../../js/templatemo-script.js"></script>      <!-- Templatemo Script -->
</body>
</html>
