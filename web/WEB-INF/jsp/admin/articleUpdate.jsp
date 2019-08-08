<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/12
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html style="cursor: url('/image/Arrow_page_01.png'),auto">
<head>
    <title>发布文章</title>
    <link rel="icon" href="../../../image/favicon.png">
    <link rel="stylesheet" href="../../../font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/admin/articleUpdate.css">

    <script charset="utf-8" src="/kindeditor/kindeditor-all-min.js"></script>
    <script charset="utf-8" src="/kindeditor/lang/zh-CN.js"></script>

    <script type="text/javascript">
        var editor;　　//全局变量
        KindEditor.ready(function (K) {
            editor = K.create('#kindedito', {
                allowImageUpload: true, uploadJson: 'kindeditor/jsp/upload_json.jsp', allowFileManager: true,
                filterMode: false, afterChange: function () {
                    this.sync();
                }
            });
        });
    </script>

    <script type="text/javascript">
        function getText() {
            var text = editor.html();　　　　　　　　　　　　　//获取textarea文本域中的文本
            var newNode = document.createElement("p");　　//创建一个新结点
            newNode.innerHTML = text;　　　　　　　　　　　　//用text设置p结点中的文本内容
            var element = document.getElementById("show");//获取show结点，以show结点为父节点
            element.innerHTML = "";
            element.append(newNode);　　　　　　　　　　　　　//将新建的结点添加进去，相当于盒子里放盒子一样　　　　　　　　　　　　　
        }
    </script>

    <script>
        window.onload = function () {
            <c:forEach items="${article.tags}" var="tags">
            var tagInput = document.getElementById('tagInput');
            var tag = document.getElementById('tag');
            var tagDiv = document.createElement('div');

            tagDiv.style.cssFloat = 'left';
            tagDiv.style.width = '70px';
            tagDiv.style.height = '40px';
            tagDiv.style.backgroundColor = '#317eeb';
            tagDiv.style.textAlign = 'center';
            tagDiv.style.color = 'white';
            tagDiv.style.lineHeight = '40px';
            tagDiv.style.borderRight = '1px solid grey';
            tagDiv.onclick = deleteTag;

            var tagHidden = document.createElement('input');
            tagHidden.type = 'hidden';
            tagHidden.name = 'tag' + tagCount;
            tagHidden.id = 'tag' + tagCount;

            var articleForm = document.getElementById('articleForm');
            tagDiv.innerHTML = '${tags.name}';
            tagHidden.value = '${tags.name}';
            tag.append(tagDiv);
            articleForm.append(tagHidden);

            tagCount++;
            tagInput.style.width = (750 - tagCount * 71) + 'px';
            tagInput.value = "";
            </c:forEach>
        }

    </script>
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
        <h2 style="color: rgb(145,145,145);line-height: 100px;padding-left: 330px" id="h2">发布文章</h2>
        <form action="/article/articleUpdate" id="articleForm">
            <input type="text" placeholder="请输入标题" name="title" value="${article.title}">
            <input type="text" placeholder="请输入访问路径" name="url">
            <div id="tag">
                <div onblur="alert(this.style.width)" style="float: right"><input type="text" style="margin: 0px"
                                                                                  placeholder="请输入文章标签" id="tagInput">
                </div>
            </div>
            <select name="category">
                <c:forEach items="${list}" var="category">
                    <option value="${category.name}">${category.name}</option>
                </c:forEach>
            </select>
            <div style="margin-left: 30px;float: left">
                <textarea name="content" id="kindedito">${articlte.content}</textarea>
            </div>
            <div id="show"
                 style="float: left;width: 750px;height: 500px;background-color: white;margin-left: 35px"></div>
            <input type="hidden" value="${article.id}" name="id">
            <br>
            <div id="buttons">
                <input type="submit" name="action" value="存为草稿" class="button"
                       style="background-color: #fed94d;margin-right: 53px">
                <input type="submit" name="action" value="保存文章" class="button"
                       style="background-color: #7893d9;color: white">
                <a href="/article/article"><input type="button" value="返回列表" class="button"
                                               style="background-color: #fefefe;box-shadow: 0px 0px 1px 1px gray"></a>
                <input type="button" value="预览" class="button" onclick="getText()">
            </div>
        </form>
    </div>

    <div id="choose" style="position: absolute;right: 40px;top: 70px;width: 150px;height: 100px;background-color: white;border: 1px solid;visibility: hidden" onmouseleave="this.style.visibility='hidden'">
        <a href="/article/allBlog" style="height: 50px;width: 150px;float: left;line-height: 50px;text-align: center;cursor: url('/image/hand_page_05.png'),auto;color: black;border-bottom: 1px solid" onmousemove="this.style.backgroundColor='royalblue';this.style.color='white'" onmouseleave="this.style.backgroundColor='white';this.style.color='black'">进入主站</a>
        <a href="/article/main" style="height: 50px;width: 150px;float: left;line-height: 50px;text-align: center;cursor: url('/image/hand_page_05.png'),auto;color: black;border-bottom: 1px solid" onmousemove="this.style.backgroundColor='royalblue';this.style.color='white'" onmouseleave="this.style.backgroundColor='white';this.style.color='black'">进入博客</a>
    </div>
</div>
</body>
<script>
    var tagCount = 0;

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

    document.getElementById('tagInput').onblur = function () {
        var tagInput = document.getElementById('tagInput');
        if (tagInput.value != '') {
            var tag = document.getElementById('tag');
            var tagDiv = document.createElement('div');

            tagDiv.style.cssFloat = 'left';
            tagDiv.innerHTML = tagInput.value;
            tagDiv.style.width = '70px';
            tagDiv.style.height = '40px';
            tagDiv.style.backgroundColor = '#317eeb';
            tagDiv.style.textAlign = 'center';
            tagDiv.style.color = 'white';
            tagDiv.style.lineHeight = '40px';
            tagDiv.style.borderRight = '1px solid grey';
            tagDiv.onclick = deleteTag;
            tag.append(tagDiv);

            var tagHidden = document.createElement('input');
            tagHidden.type = 'hidden';
            tagHidden.value = tagInput.value;
            tagHidden.name = 'tag' + tagCount;
            tagHidden.id = 'tag' + tagCount;

            var articleForm = document.getElementById('articleForm');
            articleForm.append(tagHidden);

            tagCount++;
            tagInput.style.width = (750 - tagCount * 71) + 'px';
            tagInput.value = "";
        }
    }

    function deleteTag() {
        tagCount--;
        var tag = document.getElementById('tag');
        var tagInput = document.getElementById('tagInput');
        tag.removeChild(this);
        tagInput.style.width = (750 - tagCount * 71) + 'px';
        var tagHidden = document.getElementById('tag' + tagCount);
        var articleForm = document.getElementById('articleForm');
        articleForm.removeChild(tagHidden);
    }
</script>
</html>
