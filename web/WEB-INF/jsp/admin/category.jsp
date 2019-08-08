<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/5
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html style="cursor: url('/image/Arrow_page_01.png'),auto">
<head>
    <title>分类管理</title>
    <link rel="icon" href="../../../image/favicon.png">
    <link rel="stylesheet" href="../../../font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/admin/category.css">
</head>
<body>
<div style="background-color: rgb(47,53,63);width: 300px;min-height: 100%;float: left;display: block" id="left1">
    <img src="../../../image/logo.png" style="background-color: rgb(238,238,238);padding-top: 20px;padding-bottom: 20px">
    <ul>
        <a href="/article/index" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li><i class="fa fa-home">&emsp;</i>仪表盘</li>
        </a>
        <a href="/article/publishBefore" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li><i class="fa fa-pencil-square-o">&emsp;</i>发布文章</li>
        </a>
        <a href="/article/article" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li><i class="fa fa-list">&emsp;</i>文章管理</li>
        </a>
        <a href="/link/link" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li><i class="fa fa-link">&emsp;</i>友链管理</li>
        </a>
        <a href="/category/categoryAndTag" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li style="background-color: rgb(39,44,53)"><i class="fa fa-tags">&emsp;</i>分类/标签</li>
        </a>
        <a href="/file/fileSelect" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li><i class="fa fa-file">&emsp;</i>文件管理</li>
        </a>
        <a href="/message/message" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li><i class="fa fa-comments">&emsp;</i>留言管理</li>
        </a>
        <a href="/user/update" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li><i class="fa fa-cog">&emsp;</i>系统设置</li>
        </a>
    </ul>
</div>

<div style="background-color: rgb(47,53,63);width: 100px;min-height: 100%;float: left;display: none" id="left2">
    <img src="../../../image/unicorn.png"
         style="background-color: rgb(238,238,238);padding: 25px 25px;width: 50px;height: 47px">
    <ul style="width: 100px;font-size: 30px">
        <a href="/article/index" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li><i class="fa fa-home">&emsp;</i></li>
        </a>
        <a href="/article/publishBefore" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li><i class="fa fa-pencil-square-o">&emsp;</i></li>
        </a>
        <a href="/article/article" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li><i class="fa fa-list">&emsp;</i></li>
        </a>
        <a href="/link/link" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li><i class="fa fa-link">&emsp;</i></li>
        </a>
        <a href="/category/categoryAndTag" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li style="background-color: rgb(39,44,53)"><i class="fa fa-tags">&emsp;</i></li>
        </a>
        <a href="/file/fileSelect" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li><i class="fa fa-file">&emsp;</i></li>
        </a>
        <a href="/message/message" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li><i class="fa fa-comments">&emsp;</i></li>
        </a>
        <a href="/user/update" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li><i class="fa fa-cog">&emsp;</i></li>
        </a>
    </ul>
</div>

<div style="background-color: white;width: auto;min-height: 100%;">
    <div style="height: 95px;width: auto;color: rgb(145,145,145);box-shadow: 1px 1px 1px 1px rgb(236,236,236)">
        <i class="fa fa-bars fa-3x" style="position: relative;left: 30px;top: 23px;cursor: url('/image/hand_page_05.png'),auto;" onclick="change()" onmousemove="this.style.color='royalblue'" onmouseleave="this.style.color='rgb(145,145,145)'"></i>
        <span class="fa-stack fa-lg" style="position: absolute;right: 50px;top: 30px;cursor: url('/image/hand_page_05.png'),auto;" onclick="document.getElementById('choose').style.visibility ='visible'"><i
                class="fa fa-circle fa-stack-2x" style="color: royalblue"></i><i class="fa fa-power-off fa-stack-1x"
                                                                                 style="color: white"></i></span>
    </div>
    <div style="width: auto;height: 842px;background-color: rgb(245,245,245)">
        <h2 style="color: rgb(145,145,145);line-height: 100px;padding-left: 330px" id="h2">分类/标签管理</h2>
        <div style="background-color: white;width: 750px;height: auto;min-height: 200px;float: left;margin-left: 35px">
            <span style="background-color: #6e8cd7;color: white;width: 730px;height: 50px;display: block;font-size: 20px;line-height: 50px;padding-left: 20px">分类列表<br></span>
            <c:forEach items="${requestScope.categoryList}" var="category">
                <div style="float: left;height: 30px;width: 130px;background-color: #29b6f6;color: white;text-align: center;line-height: 30px;margin-top: 10px;margin-left: 10px">${category.name}(${category.articleCount})</div>
            </c:forEach>
        </div>
        <div style="background-color: white;width: 750px;height: auto;min-height: 200px;float: left;margin-left: 50px">
            <span style="background-color: #ec407a;color: white;width: 730px;height: 50px;display: block;font-size: 20px;line-height: 50px;padding-left: 20px">标签列表<br></span>
            <c:forEach items="${requestScope.tagList}" var="tag">
                <div style="float: left;height: 30px;width: 130px;background-color: #8763c6;color: white;text-align: center;line-height: 30px;margin-top: 10px;margin-left: 10px">${tag.name}(${tag.articleCount})</div>
            </c:forEach>
        </div>
        <div style="float: left;width: 1550px;height: 100px;background-color: white;margin-left: 35px;margin-top: 50px">
            <form action="/category/categoryInsert">
                <input type="text" placeholder="请输入分类名" name="name"
                       style="float: left;width: 250px;height: 40px;background-color: rgb(245,245,245);border: 0px;margin-top: 35px;margin-left: 50px;font-size: 15px;padding-left: 15px">
                <input type="submit" value="保存分类"
                       style="float: left;width: 100px;height: 40px;border: 0px;color: white;background-color: #41bd76;margin-top: 35px;margin-left: 50px;font-size: 15px">
            </form>
            <form action="/tag/tagDelete">
                <input type="submit" value="删除标签"
                       style="float: right;width: 100px;height: 40px;border: 0px;color: white;background-color: #f05f5c;margin-top: 35px;margin-right: 50px;font-size: 15px">
                <select name="tagName" style="float: right;width: 250px;height: 40px;background-color: rgb(245,245,245);font-size: 20px;margin-top: 35px;margin-right: 50px;border: 0px">
                    <c:forEach items="${requestScope.tagList}" var="tagName">
                        <option value="${tagName.name}">${tagName.name}</option>
                    </c:forEach>
                </select>
            </form>
        </div>
    </div>

    <div id="choose" style="position: absolute;right: 40px;top: 70px;width: 150px;height: 100px;background-color: white;border: 1px solid;visibility: hidden" onmouseleave="this.style.visibility='hidden'">
        <a href="/article/allBlog" style="height: 50px;width: 150px;float: left;line-height: 50px;text-align: center;cursor: url('/image/hand_page_05.png'),auto;color: black;border-bottom: 1px solid" onmousemove="this.style.backgroundColor='royalblue';this.style.color='white'" onmouseleave="this.style.backgroundColor='white';this.style.color='black'">进入主站</a>
        <a href="/article/main" style="height: 50px;width: 150px;float: left;line-height: 50px;text-align: center;cursor: url('/image/hand_page_05.png'),auto;color: black;border-bottom: 1px solid" onmousemove="this.style.backgroundColor='royalblue';this.style.color='white'" onmouseleave="this.style.backgroundColor='white';this.style.color='black'">进入博客</a>
    </div>
</div>
</body>
<script>
    function change() {
        var left1 = document.getElementById('left1');
        var left2 = document.getElementById('left2');
        var title = document.getElementById('h2');
        if (left1.style.display == 'none') {
            left1.style.display = 'block';
            left2.style.display = 'none';
            title.style.paddingLeft = '330px';
        } else {
            left1.style.display = 'none';
            left2.style.display = 'block';
            title.style.paddingLeft = '130px';
        }
    }
</script>
</html>
