<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/11
  Time: 20:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="../../../font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="icon" href="../../../image/favicon.png">
<html style="cursor: url('/image/Arrow_page_01.png'),auto">
<head>
    <title>首页</title>
    <link rel="stylesheet" href="/css/surface/article.css">
</head>
<body>
<div id="header">
    <img src="/image/logo.png" onclick="javascript:location.href='/indexServlet'" style="cursor: pointer">
    <div class="bar">
        <form action="/article/search">
            <input type="text" id="search" onblur="this.style.visibility = 'hidden'">
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
<div id="body" style="width: 800px;margin: 0 auto">
    <br>
    <h1>${article.title}</h1><br>
    发布于&nbsp;<fmt:formatDate value="${article.createTime}" pattern="MM月dd日 HH:mm"></fmt:formatDate>&nbsp;/
    &nbsp;${article.categoryName}&nbsp;/&nbsp;${article.messageCount}条评论&nbsp;/&nbsp;${article.visitCount}次浏览<br><br>
    <c:forEach items="${article.tags}" var="tag">
        <span style="background-color: #6fa3ef;font-size: 20px;color: white;border-radius: 20px">&emsp;#${tag.name}&emsp;</span>
    </c:forEach>
    <br>
    <hr style="margin-top: 10px">
    <br>
    <pre style="white-space: pre-wrap;word-wrap: break-word;">${article.content}</pre>
    <br><br>
    <hr>
    <div style="margin: 100px auto 0;width: 500px">
        <c:forEach items="${messageList}" var="message">
            <span style="font-size: 20px;font-weight: bold;color:royalblue;">${message.userName}</span><br><br>
            <span>&emsp;${message.content}</span>
            <hr>
        </c:forEach>
    </div>
    <div style="width: 400px;margin: 100px auto 0;">
        <form action="/message/messageInsert">
            <textarea name="content" placeholder="请输入留言内容"
                      style="width: 400px;height: 200px;font-size: 20px"></textarea>
            <input type="hidden" name="userName" value="${sessionScope.user.name}">
            <input type="hidden" name="articleId" value="${article.id}">
            <input type="submit" value="确定" style="width: 400px;height: 30px;border: 0px">
        </form>
    </div>
</div>
</body>
</html>
