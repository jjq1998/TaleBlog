<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/4
  Time: 20:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html style="cursor: url('/image/Arrow_page_01.png'),auto">
<head>
    <title>登录界面</title>
    <link rel="icon" href="../../../image/favicon.png">
    <link rel="stylesheet" href="/css/login/login.css">
    <c:if test="${error != null}">
        <script>
            alert('${error}')
        </script>
    </c:if>
</head>
<body style="background-color: rgb(245,245,245)">
<div style="margin-top: 6%">
    <div style="height: 165px;background: url(/image/login.png) no-repeat;background-size: cover"></div>
    <div style="height: 420px;background-color: white">
        <form action="/user/doLogin">
            <input type="text" style="float: left;" class="user" name="name">
            <input type="password" style="float: left" class="user" name="password">
            <input type="submit" value="登录" class="button" style="float: left;background-color: rgb(120,148,218)">
            <a href="/user/install1"><input type="button" value="注册" class="button" style="float: left;background-color: lightcoral"></a>
        </form>
    </div>
</div>
</body>
</html>
