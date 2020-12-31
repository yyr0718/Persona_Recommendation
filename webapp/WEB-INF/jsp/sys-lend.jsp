<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.nwsuaf.entity.Lend" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<meta charset="utf8">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <title>管理中心</title>
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon"/>
   
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="${pageContext.request.contextPath}/css/templatemo-style.css" rel="stylesheet" type="text/css"
          media="all"/>
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
//             String session_user = (String)session.getAttribute("session_user");
//             if(session_user==null){
//                 response.setContentType("text/html;charset=UTF-8");
//                 PrintWriter outPrintWriter = response.getWriter();
//                 PrintWriter writer = response.getWriter();
//                 String msg = null;
//                 msg = "alert( '登录超时，请重新登录' );location.href='/loginPage.do'";
//                 writer.print("<script type='text/javascript'>" + msg + "</script>");
//                 writer.flush();
//                 writer.close();
//                 response.sendRedirect("loginPage.do");
//                 return;}
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
                <li><a href="/sysAdmi"><i class="i-font-normal"></i>数据导入</a></li>
                <li><a href="/findAllUser.do" ><i class="i-font-normal"></i>用户管理</a></li>
                <li><a href="findBookById.do"><i class="i-font-normal"></i>图书管理</a></li> 
                <li><a href="/sys-lendinquiry" class="active"><i class="i-font-normal"></i>借阅数据</a></li>
                
                <li><a href="/user-exit"><i class="i-font-normal"></i>账号退出</a></li>
            </ul>
        </nav>
    </div>
    <!-- Main content -->
    <div class="templatemo-content col-1 light-gray-bg">
        <div class="templatemo-top-nav-container">
            <div class="row">
                <nav class="templatemo-top-nav col-lg-12 col-md-12">
                    <ul class="text-uppercase">
                        <li><a href="${pageContext.request.contextPath}/user-application">借阅数据</a></li>
                        
                    </ul>
                </nav>
            </div>
        </div>
        <div class="templatemo-content-container">
            <div class="templatemo-flex-row flex-content-row">
                <table class="table table-striped table-bordered templatemo-user-table">
                    <thead>
                    <tr>
                    <td><a href="" class="white-text templatemo-sort-by">序号 <span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">用户名 <span class="caret"></span></a></td>
                        <td><a href="" class="white-text templatemo-sort-by">资产号 <span class="caret"></span></a></td>
                        <td><a href="" class="white-text templatemo-sort-by">书名 <span class="caret"></span></a></td>
                        <td><a href="" class="white-text templatemo-sort-by">借书日期<span class="caret"></span></a></td>
                        <td><a href="" class="white-text templatemo-sort-by">归还日期 <span class="caret"></span></a></td>
                        <td><a href="" class="white-text templatemo-sort-by">操作 <span class="caret"></span></a></td>
                    </tr>
                    </thead>
                    <tbody>
                    <form action="resultDownload" class="templatemo-login-form" method="post" enctype="multipart/form-data">
                        <c:forEach items="${bookinquiry}" var="bookinquiry">
                        <tr>
                       
                            <td>${bookinquiry.id}</td>
                            <td>${bookinquiry.CERT_ID_F}</td>
                            <td>${bookinquiry.PROP_NO_F}</td>
                            <td>${bookinquiry.BOOK_TITLE}</td>
                            <td>${bookinquiry.LEND_DATE}</td>
                            <td>${bookinquiry.RET_DATE}</td>
                            <td><a href="/admin/deleteLend?id=${bookinquiry.id}"
											class="templatemo-edit-btn">删除</a></td>
                        </tr>
                        </c:forEach>
                        <c:if test="${jian!=0 }">
									<tr>

										<td colspan="7" align="center">
											共${pagetotal+1}页,当前第${pagenum}页 <c:if test="${pagenum-3>0}">
												<a
													href="${pageContext.request.contextPath}/sys-lendinquirynum?pagenum=${pagenum-3}">${pagenum-3}</a>
											</c:if> <c:if test="${pagenum-2>0}">
												<a
													href="${pageContext.request.contextPath}/sys-lendinquirynum?pagenum=${pagenum-2}">${pagenum-2}</a>
											</c:if> <c:if test="${pagenum-1>0}">
												<a
													href="${pageContext.request.contextPath}/sys-lendinquirynum?pagenum=${pagenum-1}">${pagenum-1}</a>
											</c:if> <a
											href="${pageContext.request.contextPath}/sys-lendinquiryup">上一页</a>&nbsp;
											<a
											href="${pageContext.request.contextPath}/sys-lendinquirydn">下一页</a>&nbsp;
											<c:if test="${pagenum+1<pagetotal}">
												<a
													href="${pageContext.request.contextPath}/sys-lendinquirynum?pagenum=${pagenum+1}">${pagenum+1}</a>
											</c:if> <c:if test="${pagenum+2<pagetotal}">
												<a
													href="${pageContext.request.contextPath}/sys-lendinquirynum?pagenum=${pagenum+2}">${pagenum+2}</a>
											</c:if> <c:if test="${pagenum+3<pagetotal}">
												<a
													href="${pageContext.request.contextPath}/sys-lendinquirynum?pagenum=${pagenum+3}">${pagenum+3}</a>
											</c:if> 去第<input type="text" name="pn" size=3 />页 <input
											type="submit" value="确定" id="btn_id" />
									</tr>
								</c:if>
                    </tbody>
                    </form>
                </table>
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