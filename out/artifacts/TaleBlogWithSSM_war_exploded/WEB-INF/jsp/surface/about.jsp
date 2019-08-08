<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/17
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>关于</title>
</head>
<body>
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
        <form action="/searchServlet">
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
<h1 align="center">我再也不想写前端了</h1>
<div style="background-image: url('/image/smile.jpg');width: 1600px;height: 900px;margin: 0px auto"></div>
</body>
</html>
</body>
</html>
