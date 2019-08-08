package com.jjq.controller;

import com.jjq.bean.*;
import com.jjq.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/article")
public class ArticleController
{
    @Autowired
    ArticleService articleService;

    @Autowired
    MessageService messageService;

    @Autowired
    FileService fileService;

    @Autowired
    LinkService linkService;

    @Autowired
    CategoryService categoryService;

    @Autowired
    TagService tagService;

    @RequestMapping("/index")
    public String indexSelect(HttpSession session, Model model)
    {
        User user = (User) session.getAttribute("user");
        //获取所有文章数目
        int articleCount = articleService.selectAllArticleCount(user.getId());
        model.addAttribute("articleCount", articleCount);
        //获取所有留言数目
        int messageCount = messageService.selectAllMessageCount(user.getId());
        model.addAttribute("messageCount", messageCount);
        //获取上传的文件数目
        int fileCount = fileService.selectAllFilesCount(user.getId());
        model.addAttribute("fileCount", fileCount);
        //获取链接的友链数目
        int linkCount = linkService.selectAllLinkCount(user.getId());
        model.addAttribute("linkCount", linkCount);
        //获取当前的文章
        List<Article> articleList = articleService.selectAllArticleInUserId(user.getId());
        model.addAttribute("articleList", articleList);
        //获取当前的所有留言
        List<Message> messageList = messageService.selectAllMessage(user.getId());
        model.addAttribute("messageList", messageList);
        return "admin/index";
    }

    @RequestMapping("/publishBefore")
    public String publishBefore(HttpSession session, Model model)
    {
        List<Category> list = categoryService.selectAllCategory(((User) session.getAttribute("user")).getId());
        model.addAttribute("list", list);
        return "admin/publish";
    }

    @RequestMapping("/doPublish")
    public String publish(HttpServletRequest request, HttpSession session)
    {
        String title = request.getParameter("title");
        String url = request.getParameter("url");
        String category = request.getParameter("category");
        String content = request.getParameter("content");
        String tag;
        int lastInsertId = 0;
        if (request.getParameter("action").equals("保存文章"))
        {
            articleService.insertArticle(categoryService.selectCategoryIdByName(((User) session.getAttribute("user")).getId(), category), title, content, "已发布");
            lastInsertId = articleService.selectLastInsertArticleId();
        }
        else if (request.getParameter("action").equals("存为草稿"))
        {
            articleService.insertArticle(categoryService.selectCategoryIdByName(((User) session.getAttribute("user")).getId(), category), title, content, "草稿");
            lastInsertId = articleService.selectLastInsertArticleId();
        }
        for (int i = 0; i < 100; i++)
        {
            tag = request.getParameter("tag" + i);
            if (tag != null)
                tagService.insertTag(tag, lastInsertId);
            else
                break;
        }
        return "forward:/article/article";
    }

    @RequestMapping("/article")
    public String article(String page, HttpSession session, Model model)
    {
        ArticlePage articlePage = new ArticlePage();
        if (page != null)
            articlePage.setCurrentPage(Integer.parseInt(page));
        articlePage.setTotalCount(articleService.selectAllArticleCount(((User) session.getAttribute("user")).getId()));
        List<Article> list = articleService.selectAllArticleInPage(((User) session.getAttribute("user")).getId(), articlePage);
        articlePage.setPageDate(list);
        model.addAttribute("pageBean", articlePage);
        return "admin/article";
    }

    @RequestMapping("/articleReview")
    public String articleReview(int id, Model model)
    {
        Article article = articleService.selectArticleById(id);
        model.addAttribute("article", article);
        List<Message> messageList = messageService.selectAllMessageByArticleId(id);
        model.addAttribute("messageList", messageList);
        articleService.updateVisitCountById(id);
        return "surface/article";
    }

    @RequestMapping("/articleDelete")
    public String articleDelete(int id)
    {
        articleService.deleteArticle(id);
        return "forward:/article/article";
    }

    @RequestMapping("/articleRewrite")
    public String articleRewrite(int id, HttpSession session, Model model)
    {
        Article article = articleService.selectArticleById(id);
        model.addAttribute("article", article);
        List<Category> list = categoryService.selectAllCategory(((User) session.getAttribute("user")).getId());
        model.addAttribute("list", list);
        return "admin/articleUpdate";
    }

    @RequestMapping("/articleUpdate")
    public String articleUpdate(HttpServletRequest request, HttpSession session)
    {
        int id = Integer.parseInt(request.getParameter("id"));
        String title = request.getParameter("title");
        String category = request.getParameter("category");
        String content = request.getParameter("content");
        String tag;
        if (request.getParameter("action").equals("保存文章"))
        {
            articleService.updateArticle(id, title, content, categoryService.selectCategoryIdByName(((User) session.getAttribute("user")).getId(), category), "已发布");
        }
        else if (request.getParameter("action").equals("存为草稿"))
        {
            articleService.updateArticle(id, title, content, categoryService.selectCategoryIdByName(((User) session.getAttribute("user")).getId(), category), "草稿");
        }
        tagService.deleteTagByArticleId(id);
        for (int i = 0; i < 100; i++)
        {
            tag = request.getParameter("tag" + i);
            if (tag != null)
            {
                tagService.insertTag(tag, id);
            }
            else
            {
                break;
            }
        }
        return "forward:/article/article";
    }

    @RequestMapping("/allBlog")
    public String allBlog(Model model)
    {
        List<Article> list = articleService.selectAllArticle();
        model.addAttribute("list", list);
        return "surface/mainBlog";
    }

    @RequestMapping("/main")
    public String main(HttpSession session, Model model)
    {
        List<Article> list = articleService.selectAllArticleInUserId(((User) session.getAttribute("user")).getId());
        model.addAttribute("list", list);
        return "surface/main";
    }

    @RequestMapping("/archive")
    public String archive(HttpSession session, Model model)
    {
        List<Article> list = articleService.selectAllArticleInUserId(((User) session.getAttribute("user")).getId());
        model.addAttribute("list", list);
        return "surface/archive";
    }

    @RequestMapping("/search")
    public String search(String search, HttpSession session, Model model)
    {
        List<Article> list = articleService.selectAllArticleInCondition(((User) session.getAttribute("user")).getId(), search);
        model.addAttribute("list", list);
        return "surface/archive";
    }
}
