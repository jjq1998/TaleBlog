<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <title>文章管理</title>
    <link rel="icon" href="../../../image/favicon.png">
    <link rel="stylesheet" href="../../../font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/admin/article.css" type="text/css">
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
            <li style="background-color: rgb(39,44,53)"><i class="fa fa-list">&emsp;</i>文章管理</li>
        </a>
        <a href="/link/link" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li><i class="fa fa-link">&emsp;</i>友链管理</li>
        </a>
        <a href="/category/categoryAndTag" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li><i class="fa fa-tags">&emsp;</i>分类/标签</li>
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
            <li style="background-color: rgb(39,44,53)"><i class="fa fa-list">&emsp;</i></li>
        </a>
        <a href="/link/link" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li><i class="fa fa-link">&emsp;</i></li>
        </a>
        <a href="/category/categoryAndTag" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li><i class="fa fa-tags">&emsp;</i></li>
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
        <h2 style="color: rgb(145,145,145);line-height: 100px;padding-left: 330px" id="h2">文章管理</h2>
        <table border="1" cellspacing="0">
            <tr>
                <th style="width: 400px">文章标题</th>
                <th style="width: 200px">发布时间</th>
                <th style="width: 200px;">浏览量</th>
                <th style="width: 200px">所属分类</th>
                <th style="width: 200px;">发布状态</th>
                <th style="width: 300px;">操作</th>
            </tr>
            <c:forEach items="${pageBean.pageDate}" var="article">
                <tr>
                    <td>${article.title}</td>
                    <td><fmt:formatDate value="${article.createTime}" pattern="yyyy-MM-dd HH:mm"></fmt:formatDate></td>
                    <td>${article.visitCount}</td>
                    <td>${article.categoryName}</td>
                    <td><span style="background-color: #33b86c;color: white;border-radius: 5px">&nbsp;${article.state}&nbsp;</span></td>
                    <td>
                        <a href="/article/articleRewrite?id=${article.id}"><input type="button" value="编辑" style="background-color: #7894d9" class="operate"></a>
                        <a href="/article/articleDelete?id=${article.id}"><input type="button" value="删除" style="background-color: #f05f5c" class="operate"></a>
                        <a href="/article/articleReview?id=${article.id}"><input type="button" value="预览" style="background-color: #ffd94d" class="operate"></a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <div id="foot">
            <a href="/article/article?page=1"><input type="button" value="首页" class="footer"></a>
            <a href="/article/article?${pageBean.currentPage-1}"><input type="button" value="上一页" class="footer"></a>
            <span>${pageBean.currentPage}/${pageBean.totalPage} 共${pageBean.totalCount}篇</span>
            <a href="/article/article?${pageBean.currentPage+1}"><input type="button" value="下一页" class="footer"></a>
            <a href="/article/article?${pageBean.totalPage}"><input type="button" value="末页" class="footer"></a>
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
        var foot = document.getElementById('foot');
        if (left1.style.display == 'none') {
            left1.style.display = 'block';
            left2.style.display = 'none';
            title.style.paddingLeft = '330px';
            foot.style.marginRight = '56px';
        } else {
            left1.style.display = 'none';
            left2.style.display = 'block';
            title.style.paddingLeft = '130px';
            foot.style.marginRight = '256px';
        }
    }
</script>
</html>
