<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/13
  Time: 18:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="icon" href="../../../image/favicon.png">
<link rel="stylesheet" href="../../../font-awesome-4.7.0/css/font-awesome.min.css">
<html style="cursor: url('/image/Arrow_page_01.png'),auto">
<head>
    <title>${sessionScope.user.blogName}</title>
    <link rel="stylesheet" href="/css/surface/archive.css">
</head>
<body style="background-color: #f7f7f7">
<div id="header">
    <img src="/image/logo.png" onclick="javascript:location.href='/indexServlet'" style="cursor: pointer">
    <div class="bar">
        <form action="/article/search">
            <input type="text" id="search" onblur="this.style.visibility = 'hidden'" name="search">
            <button type="submit" class="btn btn-block btn-info"
                    style="border: 0px;background-color: white;outline: none">
                <i class="fa fa-search"
                   onmousemove="document.getElementById('search').style.visibility = 'visible'"
                   style="font-size: 20px"
                ></i>
            </button>
        </form>
    </div>
    <div class="bar">
        <a href="/article/archive">归档</a>
        <a href="/link/friendLink">友链</a>
        <a href="/link/about">关于</a>
    </div>
</div>
<div id="body" style="width: 1000px;margin: 0 auto">
    <c:forEach items="${requestScope.list}" var="article">
        <c:if test="${article.state == '已发布'}">
            <a href="/article/articleReview?id=${article.id}">
                <div style="background-color: white;float: left;box-shadow: 1px 1px 1px 1px lightgray;width: 300px;margin-left: 20px;margin-right: 10px;margin-top: 50px">
                    <br><span style="font-weight: bold;font-size: 20px">${article.title}</span><br><br>
                    <span>发布于&nbsp;<fmt:formatDate value="${article.createTime}"
                                                   pattern="MM月dd日 HH:mm"></fmt:formatDate></span><br><br>
                </div>
            </a>
        </c:if>
    </c:forEach>
</div>
</body>
</html>
