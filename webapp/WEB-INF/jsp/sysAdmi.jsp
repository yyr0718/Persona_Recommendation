<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial- scale=1">
    <title>管理中心</title>
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon"/>

   
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="${pageContext.request.contextPath}/css/templatemo-style.css" rel="stylesheet" type="text/css" media="all"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.2.min.js">
    </script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/animate.js">
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-filestyle.min.js">
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js">
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-migrate-1.2.1.min.js">
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/rotarymap.js">
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/templatemo-script.js">
    </script>


  </head>
  <body>
  <!-- Left column -->
  
  <div class="templatemo-flex-row">
    <div class="templatemo-sidebar">
      <header class="templatemo-site-header">
        <div class="square"></div>
        <h1>管理中心</h1>
      </header>

      <!-- Search box -->
      <%
//         String session_user = (String)session.getAttribute("session_user");
//         if(session_user==null){
//           response.setContentType("text/html;charset=UTF-8");
//           PrintWriter outPrintWriter = response.getWriter();
//           PrintWriter writer = response.getWriter();
//           String msg = null;
//           msg = "alert( '登录超时，请重新登录' );location.href='/loginPage.do'";
//           writer.print("<script type='text/javascript'>" + msg + "</script>");
//           writer.flush();
//           writer.close();
//           response.sendRedirect("loginPage.do");
//           return;}
      %>
      <div class="templatemo-search-form" >
        <div class="input-group">
          <button type="submit" class="fa fa-search">&nbsp;<i class="i-font-normal"></i></button>
          <label type="text" class="form-control"  name="srch-term" id="srch-term">管理员：${session}</label>
        </div>
      </div>
      <div class="mobile-menu-icon">
        <i class="i-font-big"></i>
      </div>
      <nav class="templatemo-left-nav">
        <ul>
                <li><a href="/sysAdmi"class="active"><i class="i-font-normal"></i>数据导入</a></li>
                <li><a href="/findAllUser.do" ><i class="i-font-normal"></i>用户管理</a></li>
                <li><a href="findBookById.do"><i class="i-font-normal"></i>图书管理</a></li> 
                <li><a href="/sys-lendinquiry"><i class="i-font-normal"></i>借阅数据</a></li>
                
                <li><a href="/user-exit"><i class="i-font-normal"></i>账号退出</a></li>
            </ul>
      </nav>
    </div>
    <!-- Main content -->
    <div class="templatemo-content col-1 light-gray-bg">
      <div class="templatemo-content-container">
        <div class="templatemo-content-widget white-bg">
          <h2 class="margin-bottom-10">系统管理</h2>
          <form action="addUser" method="post" enctype="multipart/form-data">
            <div class="row form-group">
              <div class="col-lg-12">
                <label class="control-label templatemo-block">用户导入</label>
                <!-- <input type="file" name="fileToUpload" id="fileToUpload" class="margin-bottom-10"> -->
                <input type="file" name="fileToUpload" id="fileToUpload" class="filestyle" data-buttonName="btn-primary" data-buttonBefore="true" data-icon="false"enctype="multipart/form-data">
                <p>最大上传20M的文件</p>
              </div>
            </div>
            <div class="form-group text-right">
              <button type="submit" class="templatemo-blue-button">导入</button>
            </div>
          </form>
          <form action="addBooks" method="post" enctype="multipart/form-data">
            <div class="row form-group">
              <div class="col-lg-12">
                <label class="control-label templatemo-block">书籍导入</label>
                <!-- <input type="file" name="fileToUpload" id="fileToUpload" class="margin-bottom-10"> -->
                <input type="file" name="fileToUpload" id="fileToUpload1" class="filestyle" data-buttonName="btn-primary" data-buttonBefore="true" data-icon="false"enctype="multipart/form-data">
                <p>最大上传20M的文件</p>
              </div>
            </div>
            <div class="form-group text-right">
              <button type="submit" class="templatemo-blue-button">导入</button>
            </div>
          </form>
           <form action="addlend" method="post" enctype="multipart/form-data">
            <div class="row form-group">
              <div class="col-lg-12">
                <label class="control-label templatemo-block">借阅记录导入</label>
                <!-- <input type="file" name="fileToUpload" id="fileToUpload" class="margin-bottom-10"> -->
                <input type="file" name="fileToUpload" id="fileToUpload4" class="filestyle" data-buttonName="btn-primary" data-buttonBefore="true" data-icon="false"enctype="multipart/form-data">
                <p>最大上传20M的文件</p>
              </div>
            </div>
            <div class="form-group text-right">
              <button type="submit" class="templatemo-blue-button">导入</button>
            </div>
          </form>
          <form action="addLW" method="post" enctype="multipart/form-data">
            <div class="row form-group">
              <div class="col-lg-12">
                <label class="control-label templatemo-block">论文导入</label>
                <!-- <input type="file" name="fileToUpload" id="fileToUpload" class="margin-bottom-10"> -->
                <input type="file" name="fileToUpload" id="fileToUpload2" class="filestyle" data-buttonName="btn-primary" data-buttonBefore="true" data-icon="false"enctype="multipart/form-data">
                <p>最大上传20M的文件</p>
              </div>
            </div>
            <div class="form-group text-right">
              <button type="submit" class="templatemo-blue-button">导入</button>
            </div>
          </form>
          <form action="addZL" method="post" enctype="multipart/form-data">
            <div class="row form-group">
              <div class="col-lg-12">
                <label class="control-label templatemo-block">专利导入</label>
                <!-- <input type="file" name="fileToUpload" id="fileToUpload" class="margin-bottom-10"> -->
                <input type="file" name="fileToUpload" id="fileToUpload3" class="filestyle" data-buttonName="btn-primary" data-buttonBefore="true" data-icon="false"enctype="multipart/form-data">
                <p>最大上传20M的文件</p>
              </div>
            </div>
            <div class="form-group text-right">
              <button type="submit" class="templatemo-blue-button">导入</button>
            </div>
          </form>
          <form action="updatebq" method="post" enctype="multipart/form-data">
						<div class="form-group text-right">
							<button type="submit" class="templatemo-blue-button">更新标签</button>
						</div>
		  </form>
		  <form action="juLei" method="post" enctype="multipart/form-data">
						<div class="form-group text-right">
							<button type="submit" class="templatemo-blue-button">更新聚类结果</button>
						</div>
		  </form>
        </div>
      </div>
    </div>
  </div>
  <!-- JS -->
  <!-- JS -->
<%--   <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.2.min.js"></script>        <!-- jQuery --> --%>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-filestyle.min.js"></script>  <!-- http://markusslima.github.io/bootstrap-filestyle/ -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/templatemo-script.js"></script>        <!-- Templatemo Script -->
s

  </body>
</html>