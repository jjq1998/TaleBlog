<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/5
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html style="cursor: url('/image/Arrow_page_01.png'),auto">
<head>
    <title>系统设置</title>
    <link rel="icon" href="../../../image/favicon.png">
    <link rel="stylesheet" href="../../../font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/admin/setting.css">
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
            <li><i class="fa fa-tags">&emsp;</i>分类/标签</li>
        </a>
        <a href="/file/fileSelect" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li><i class="fa fa-file">&emsp;</i>文件管理</li>
        </a>
        <a href="/message/message" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li><i class="fa fa-comments">&emsp;</i>留言管理</li>
        </a>
        <a href="/user/update" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li style="background-color: rgb(39,44,53)"><i class="fa fa-cog">&emsp;</i>系统设置</li>
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
            <li><i class="fa fa-tags">&emsp;</i></li>
        </a>
        <a href="/file/fileSelect" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li><i class="fa fa-file">&emsp;</i></li>
        </a>
        <a href="/message/message" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li><i class="fa fa-comments">&emsp;</i></li>
        </a>
        <a href="/user/update" style="cursor: url('/image/hand_page_05.png'),auto;">
            <li style="background-color: rgb(39,44,53)"><i class="fa fa-cog">&emsp;</i></li>
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
        <h2 style="color: rgb(145,145,145);line-height: 100px;padding-left: 330px" id="h2s">系统设置</h2>
        <div style="text-align: center;font-weight: bold;background-color: white;width: 750px;height: auto;min-height: 200px;float: left;margin-left: 35px">
            <span style="background-color: #6e8cd7;color: white;width: 750px;height: 50px;display: block;font-size: 20px;line-height: 50px">个人信息<br></span>
            <form action="/user/updateUser">
                <br>
                <span>账号</span><input type="text" placeholder="请输入用户名" value="${sessionScope.user.name}"
                                      name="userName"><br><br>
                <span>邮箱</span><input type="text" placeholder="请输入用户邮箱" value="${sessionScope.user.email}" name="email"><br><br>
                <span>博客</span><input type="text" placeholder="请输入博客名" value="${sessionScope.user.blogName}"
                                      name="blogName"><br><br>
                <input type="submit" value="保存信息" style="margin-bottom: 20px;background-color: #7894da">
            </form>
        </div>
        <div style="text-align: center;font-weight: bold;background-color: white;width: 750px;height: auto;min-height: 200px;float: left;margin-left: 35px">
            <span style="background-color: #ef5350;color: white;width: 750px;height: 50px;display: block;font-size: 20px;line-height: 50px">修改密码<br></span>
            <form action="/user/updatePassword">
                <br>
                <span>输入旧密码</span><input type="password" placeholder="请输入原密码" id="oldPassword"><br><br>
                <span>输入新密码</span><input type="password" placeholder="请输入新密码" name="password" id="newPassword1"><br><br>
                <span>确认新密码</span><input type="password" placeholder="请再次确认新密码" id="newPassword2"><br><br>
                <input type="submit" value="修改密码" style="margin-bottom: 20px;background-color: #f05f5c">
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