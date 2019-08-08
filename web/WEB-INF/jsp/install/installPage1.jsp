<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/1
  Time: 18:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html style="cursor: url('/image/Arrow_page_01.png'),auto">
<head>
    <title>Tale-博客安装</title>
    <link rel="icon" href="../../../image/favicon.png">
    <link rel="stylesheet" href="../../../css/install/installPage1.css">
    <c:if test="${error != null}">
        <script>
            alert('${error}')
        </script>
    </c:if>
</head>
<body style="background-color: rgb(245,245,245)">
<h1 style="color: rgb(80,84,88);margin: 60px auto;text-align: center">开始用Tale写博客吧:)</h1>
<div style="background-color: rgb(250,250,250);width: 890px;height: 730px;margin: 0px auto">
    <div style="width: 890px;height: 60px">
        <h3 style="color: rgb(118,118,118);padding-top: 18px;padding-left: 27px">TALE安装向导</h3>
    </div>
    <div style="background-color: rgb(255,255,255);width: 890px;height: 670px" class="bottom">
        <ul>
            <li style="background-color: rgb(110,140,215);color: white">1.&nbsp&nbsp网站设置</li>
            <li>2.&nbsp&nbsp数据库设置</li>
            <li>3.&nbsp&nbsp安装完成</li>
        </ul>
        <form action="/user/install2">
            <table cellspacing="20px">
                <tr>
                    <td>*网站名称</td>
                    <td><input type="text" name="blogName" id="websiteName" value="${blogName}"><span id="websiteNameWarning"></span>
                    </td>
                </tr>
                <tr>
                    <td>*网站地址</td>
                    <td><input type="text" readonly="readonly" name="websiteURL" value="localhost:8080/"
                               id="websiteURL"><span id="websiteURLWarning"></span></td>
                </tr>
                <tr>
                    <td>*管理员账号</td>
                    <td><input type="text" name="name" id="userName" value="${name}"><span id="userNameWarning"></span></td>
                </tr>
                <tr>
                    <td>&nbsp&nbsp管理员邮箱</td>
                    <td><input type="text" name="email" id="userEmail" value="${email}"><span></span></td>
                </tr>
                <tr>
                    <td>*管理员密码</td>
                    <td><input type="password" name="password" id="password1" ${password}><span id="passwordWarning1"></span></td>
                </tr>
                <tr>
                    <td>*确认管理员密码</td>
                    <td><input type="password" id="password2"><span id="passwordWarning2"></span></td>
                </tr>
                <ul style="list-style: none;width: 250px;height: 43px;position: absolute;left: 1100px;top: 800px">
                    <input type="button"
                           style="float: left;width: 95px;height: 43px;background-color: rgb(226,226,226);border: 0px;margin-right: 10px"
                           value="上一步">
                    <input type="submit"
                           style="float: left;width: 95px;height: 43px;background-color: rgb(110,140,215);border: 0px;margin-left: 10px;color: white"
                           value="下一步">
                </ul>
            </table>
        </form>
    </div>
</div>
</body>
<script>
    var websiteName = document.getElementById("websiteName");
    var userName = document.getElementById("userName");
    var password1 = document.getElementById("password1");
    var password2 = document.getElementById("password2");

    websiteName.onblur = function () {
        if (websiteName.value == "") {
            document.getElementById("websiteNameWarning").innerHTML = "<br>网站名不能为空";
        }
        else {
            document.getElementById("websiteNameWarning").innerHTML = "";
        }
    }

    userName.onblur = function () {
        if (userName.value == "") {
            document.getElementById("userNameWarning").innerHTML = "<br>用户名不能为空";
        }
        else {
            document.getElementById("userNameWarning").innerHTML = "";
        }
    }

    password1.onblur = function () {
        if (password1.value == "") {
            document.getElementById("passwordWarning1").innerHTML = "<br>密码不能为空";
        }
        else {
            document.getElementById("passwordWarning2").innerHTML = "";
        }
    }

    password2.onblur = function () {
        if (password1.value != password2.value) {
            document.getElementById("passwordWarning2").innerHTML = "<br>两次输入的密码不一致，请重新输入"
        }
        else {
            document.getElementById("passwordWarning2").innerHTML = "";
        }
    }
</script>
</html>
