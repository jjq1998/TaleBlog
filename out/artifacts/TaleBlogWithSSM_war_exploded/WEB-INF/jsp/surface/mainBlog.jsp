<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/17
  Time: 20:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="icon" href="../../../image/favicon.png">
<link rel="stylesheet" href="../../../font-awesome-4.7.0/css/font-awesome.min.css">
<html style="cursor: url('/image/Arrow_page_01.png'),auto">
<head>
    <title>主站</title>
    <link rel="stylesheet" href="/css/surface/main.css">
</head>
<body>
<div id="header">
    <img src="/image/logo.png" onclick="javascript:location.href='/indexServlet'" style="cursor: pointer">
    <div class="bar">
        <a href="/link/friendLink">友链</a>
        <a href="/link/about">关于</a>
    </div>
</div>
<div id="body">
    <c:forEach items="${requestScope.list}" var="article">
        <c:if test="${article.state == '已发布'}" var="result">
            <a href="/article/articleReview?id=${article.id}">
                <div style="float: left;margin-left: 20px;position: relative;margin-top: 30px;width: 250px;height: 400px;background: url('${article.background}') no-repeat -225px 0px;background-size: auto;box-shadow: 1px 1px 1px 1px lightgray;border-radius: 5px"
                     onmousemove="this.style.backgroundSize= '300%'"
                     onmouseleave="this.style.backgroundSize= 'auto'">
                    <div style="background-color: white;position: absolute;bottom: 0px;width: 250px;height: 100px">
                        <h2 style="margin-left: 20px;margin-top: 20px">${article.title}</h2>
                        <span style="float: right;margin-right: 20px;margin-top: 20px">${article.userName}</span>
                        <span style="float: right;margin-right: 20px;margin-top: 20px">${article.categoryName}</span>
                    </div>
                </div>
            </a>
        </c:if>
    </c:forEach>
</div>
</body>
</html>
