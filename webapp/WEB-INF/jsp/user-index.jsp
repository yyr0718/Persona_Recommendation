<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- <%@ page import="com.iamoe.entity.critical_result" %> --%>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
      
    <title>图书推荐</title>
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon"/>
    
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="${pageContext.request.contextPath}/css/templatemo-style.css" rel="stylesheet" type="text/css" media="all"/>
   
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
          <img src="${pageContext.request.contextPath}/images/profile-photo.jpg" alt="Profile Photo" class="img-responsive">
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
//             return;
//           }
        %>
        <div class="templatemo-search-form" >
          <div class="input-group">
            <button type="submit" class="fa fa-search">&nbsp;<i class="i-font-normal"></i></button>
            <label type="text" class="form-control"  name="srch-term" id="srch-term">用户：${session}</label>
          </div>
        </div>
        <div class="mobile-menu-icon">
            <i class="i-font-big"></i>
        </div>
        <nav class="templatemo-left-nav">          
           <ul>
            <li><a href="${pageContext.request.contextPath}/reader-zx?cert_id=${session}" class="active"><i class="i-font-normal"></i>个人信息</a></li>
            <li><a href="${pageContext.request.contextPath}/ciyun"><i class="i-font-normal"></i>用户画像</a></li>
            <li><a href="${pageContext.request.contextPath}/user-lendinquiry"><i class="i-font-normal"></i>借阅历史</a></li>
            <li><a href="${pageContext.request.contextPath}/user-bookinquiry"><i class="i-font-normal"></i>图书查询</a></li>
<%--             <li><a href="${pageContext.request.contextPath}/user-result-uplode"><i class="i-font-normal"></i>图书借阅</a></li> --%>

            <li><a href="index"><i class="i-font-normal"></i>返回首页</a></li>
          </ul>   
        </nav>
      </div>
      <!-- Main content --> 
      <div class="templatemo-content col-1 light-gray-bg">
        <div class="templatemo-top-nav-container">
          <div class="row">
            <nav class="templatemo-top-nav col-lg-12 col-md-12">
              <ul class="text-uppercase">
                <li><a href="${pageContext.request.contextPath}/login" target="_Blank" class="active">图书推荐 </a></li>
                <li><a href="${pageContext.request.contextPath}/user-index" class="active">论文推荐</a></li>
                 <li><a href="${pageContext.request.contextPath}/user-information" class="active">个人信息修改</a></li>
              </ul>  
            </nav> 
          </div>
        </div>
        <div class="templatemo-content-container">
          <div class="templatemo-flex-row flex-content-row">
            <div class="col-1"> </div>
          </div>
          <c:forEach items="${listNotice}" var="Notice">
            <div class="templatemo-content-widget white-bg col-2">
              <i class="i-font-x fa-times"></i>
              <div class="square"></div>
              <h2 class="templatemo-inline-block">${Notice.notice_typic}</h2><hr>
              <p>${Notice.notice_value}</p>
            </div>
          </c:forEach>
          </div>
        </div>
      </div>
    </div>
            
    <!-- JS -->
    <script src="../../js/jquery-1.11.2.min.js"></script>      <!-- jQuery -->
    <script src="../../js/jquery-migrate-1.2.1.min.js"></script> <!--  jQuery Migrate Plugin -->
    
  
    <script type="text/javascript" src="../../js/templatemo-script.js"></script>      <!-- Templatemo Script -->
 
  </body>
</html>