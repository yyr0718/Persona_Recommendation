<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: HRJ
  Date: 2019/6/29
  Time: 18:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
//     String sys_id = (String)session.getAttribute("sys_id");
//     if(sys_id==null){
//         response.setContentType("text/html;charset=UTF-8");
//         PrintWriter outPrintWriter = response.getWriter();
//         PrintWriter writer = response.getWriter();
//         String msg = null;
//         msg = "alert( '登录超时，请重新登录' );location.href='/admin/admin_login.do'";
//         writer.print("<script type='text/javascript'>" + msg + "</script>");
//         writer.flush();
//         writer.close();
//         response.sendRedirect("loginPage.do");
//         return;}
%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>鉴定系统</title>
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    <!--
      Visual Admin Template
      http://www.templatemo.com/preview/templatemo_455_visual_admin
      -->
    
    <link href="/css/font-awesome.min.css" rel="stylesheet">
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/templatemo-style.css" rel="stylesheet">
    <link rel="stylesheet" href="C:\Users\rwh\Desktop\layui-v2.5.4\layui\css\layui.css" media="all">

    <link href="/9511488_1542891214773_26513/Content/Layui-KnifeZ/css/layui.css" rel="stylesheet" />
    <script src="/9511488_1542891214773_26513/Content/Layui-KnifeZ/layui.js"></script>
    <script src="/9511488_1542891214773_26513/Content/ace/ace.js"></script>

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
        <div class="templatemo-search-form" >
            <div class="input-group">
                <button type="submit" class="fa fa-search">&nbsp;<i class="i-font-normal"></i></button>
                <label type="text" class="form-control" placeholder="管理员ID" name="srch-term" id="srch-term">管理员：${sys_id}</label>
            </div>
        </div>
        <div class="mobile-menu-icon">
            <i class="i-font-big"></i>
        </div>
        <nav class="templatemo-left-nav">
            <ul>
                <!-- <li><a href="#" class="active"><i class="i-font-normal"></i>个人主页</a></li>
                  <li><a href="user-application.html"><i class="i-font-normal"></i>鉴定申请</a></li>
                  <li><a href="user-payment-inquiry.html"><i class="i-font-normal"></i>缴费查询</a></li> -->
                <li><a href="/admin/findAllUser.do"><i class="i-font-normal"></i>用户管理</a></li>
                <li><a href="/admin/NoticeJSP.do"><i class="i-font-normal"></i>公告管理</a></li>
                <li><a href="/admin/exit.do"><i class="i-font-normal"></i>账号退出</a></li>
            </ul>
        </nav>
    </div>
    <!-- Main content -->
    <div class="templatemo-content col-1 light-gray-bg">
        <div class="templatemo-top-nav-container">
            <div class="row">
                <nav class="templatemo-top-nav col-lg-12 col-md-12">
                    <ul class="text-uppercase">
                        <li><a href="/admin/findAllNotice.do" class="active">查询公告</a></li>
                    </ul>
                </nav>
            </div>
        </div>


        <form action="/admin/insertNotice.do" class="templatemo-login-form">
        <div class="templatemo-content-container">
            <div class="templatemo-content-widget white-bg col-2">
                <div>
                    <div class="input-group">
                        <div class="input-group-addon">系统公告标题</div>
                        <input type="text" name="notice_typic" class="form-control">
                    </div><br/>
                    <textarea id="layeditDemo"name="notice_value"></textarea>
                    <div class="form-group text-center">
                        <button type="submit" class="templatemo-blue-button">提交</button>
                        <a href="/admin/findAllNotice.do" class="templatemo-white-button">取消</a>
                    </div>
                </div>
            </div>
        </div>
        </form>
            <script>
                layui.use(['layedit', 'layer', 'jquery'], function () {
                    var $ = layui.jquery;
                    var layedit = layui.layedit;
                    layedit.set({
                        //暴露layupload参数设置接口 --详细查看layupload参数说明
                        uploadImage: {
                            url: '/Attachment/LayUploadFile',
                            accept: 'image',
                            acceptMime: 'image/*',
                            exts: 'jpg|png|gif|bmp|jpeg',
                            size: '10240'
                        }
                        , uploadVideo: {
                            url: '/Attachment/LayUploadFile',
                            accept: 'video',
                            acceptMime: 'video/*',
                            exts: 'mp4|flv|avi|rm|rmvb',
                            size: '20480'
                        }
                        //右键删除图片/视频时的回调参数，post到后台删除服务器文件等操作，
                        //传递参数：
                        //图片： imgpath --图片路径
                        //视频： filepath --视频路径 imgpath --封面路径
                        , calldel: {
                            url: '/Attachment/DeleteFile'
                        }
                        //开发者模式 --默认为false
                        , devmode: true
                        //插入代码设置
                        , codeConfig: {
                            hide: true,  //是否显示编码语言选择框
                            default: 'javascript' //hide为true时的默认语言格式
                        }
                        , tool: [
                            'html', 'code', 'strong', 'italic', 'underline', 'del', 'addhr', '|', 'fontFomatt', 'colorpicker', 'face'
                            , '|', 'left', 'center', 'right', '|', 'link', 'unlink', 'image_alt', 'video', 'anchors'
                            , '|', 'fullScreen'
                        ]
                        , height: '500px'
                    });
                    var ieditor = layedit.build('layeditDemo');
                })
            </script>

        </div>


        <!-- <div class="templatemo-content-widget white-bg col-2">
                <i class="i-font-x fa-times"></i>
                <div class="square"></div>
                <h2 class="templatemo-inline-block">或许您是第一次使用本系统，请阅读一下文字了解本系统</h2><hr>
                <p>各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语</p>
                <p>各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语</p>
              </div>

              <div class="templatemo-content-widget white-bg col-2">
                <i class="i-font-x fa-times"></i>
                <div class="square"></div>
                <h2 class="templatemo-inline-block">重要更新与系统维护</h2><hr>
                <p>各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语</p>
                <p>各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语各种话语</p>
              </div> -->

        <!-- JS -->
        <script src="/js/jquery-1.11.2.min.js"></script> <!-- jQuery -->
        <script src="/js/jquery-migrate-1.2.1.min.js"></script> <!--  jQuery Migrate Plugin -->
        
        <script type="text/javascript" src="/js/templatemo-script.js"></script> <!-- Templatemo Script -->
</div>


</body>
</html>
