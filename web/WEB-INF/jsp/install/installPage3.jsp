<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/2
  Time: 0:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html style="cursor: url('/image/Arrow_page_01.png'),auto">
<head>
    <title>Tale-博客安装</title>
    <link rel="icon" href="../../../image/favicon.png">
    <link rel="stylesheet" href="../../../css/install/installPage3.css">
</head>
<body style="background-color: rgb(245,245,245)">
<h1 style="color: rgb(80,84,88);margin: 60px auto;text-align: center">开始用Tale写博客吧:)</h1>
<div style="background-color: rgb(250,250,250);width: 890px;height: 580px;margin: 0px auto">
    <div style="width: 890px;height: 60px">
        <h3 style="color: rgb(118,118,118);padding-top: 18px;padding-left: 27px">TALE安装向导</h3>
    </div>
    <div style="background-color: rgb(255,255,255);width: 890px;height: 520px" class="bottom">
        <ul>
            <li>1.&nbsp&nbsp网站设置</li>
            <li>2.&nbsp&nbsp数据库设置</li>
            <li style="background-color: rgb(110,140,215);color: white">3.&nbsp&nbsp安装完成</li>
        </ul>
        <h1 align="center" style="margin-top: 50px">恭喜你，设置完毕！</h1>
    </div>
    <form action="/user/doInstall">
        <%--password=123--%>
        <input type="hidden" name="dbURL" value="${param.dbURL}">
        <input type="hidden" name="dbName" value="${param.dbName}">
        <input type="hidden" name="dbUserName" value="${param.dbUserName}">
        <input type="hidden" name="dbPassword" value="${param.dbPassword}">
        <input type="hidden" name="blogName" value="${param.blogName}">
        <input type="hidden" name="websiteURL" value="${param.websiteURL}">
        <input type="hidden" name="name" value="${param.name}">
        <input type="hidden" name="email" value="${param.email}">
        <input type="hidden" name="password" value="${param.password}">
        <ul style="list-style: none;width: 250px;height: 43px;position: absolute;left: 1100px;top: 650px">
            <a href="/user/install2">
                <input type="button"
                       style="float: left;width: 95px;height: 43px;background-color: rgb(110,140,215);border: 0px;margin-right: 10px;color: white"
                       value="上一步">
            </a>
            <input type="submit"
                   style="float: left;width: 95px;height: 43px;background-color: rgb(110,140,215);border: 0px;margin-left: 10px;color: white"
                   value="登录后台">
        </ul>
    </form>
</div>
</body>
</html>
