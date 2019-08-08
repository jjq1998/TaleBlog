package com.jjq.service.impl;

import com.jjq.bean.Article;
import com.jjq.bean.ArticlePage;
import com.jjq.mapper.ArticleMapper;
import com.jjq.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleServiceImpl implements ArticleService
{
    @Autowired
    ArticleMapper articleMapper;

    @Override
    public List<Article> selectAllArticle()
    {
        return articleMapper.selectAllArticle();
    }

    @Override
    public List<Article> selectAllArticleInUserId(int userId)
    {
        return articleMapper.selectAllArticleInUserId(userId);
    }

    @Override
    public List<Article> selectAllArticleInCondition(int userId, String condition)
    {
        return articleMapper.selectAllArticleInCondition(userId, condition);
    }

    @Override
    public List<Article> selectAllArticleInPage(int userId, ArticlePage articlePage)
    {
        if (articlePage.getCurrentPage() <= 0)
        {
            articlePage.setCurrentPage(1);
        }
        else if (articlePage.getCurrentPage() > articlePage.getTotalPage())
        {
            articlePage.setCurrentPage(articlePage.getTotalPage());
        }
        return articleMapper.selectAllArticleInPage(userId, articlePage);
    }

    @Override
    public List<Article> selectAllArticleByCategoryId(int categoryId)
    {
        return articleMapper.selectAllArticleByCategoryId(categoryId);
    }

    @Override
    public int selectAllArticleCount(int userId)
    {
        return articleMapper.selectAllArticleCount(userId);
    }

    @Override
    public int selectAllArticleByCategoryIdCount(int categoryId)
    {
        return articleMapper.selectAllArticleByCategoryIdCount(categoryId);
    }

    @Override
    public int selectLastInsertArticleId()
    {
        return articleMapper.selectLastInsertArticleId();
    }

    @Override
    public void insertArticle(int categoryId, String title, String content, String state)
    {
        articleMapper.insertArticle(categoryId, title, content, state);
    }

    @Override
    public void deleteArticle(int id)
    {
        articleMapper.deleteArticle(id);
    }

    @Override
    public void updateArticle(int id, String title, String content, int cid, String state)
    {
        articleMapper.updateArticle(id, title, content, cid, state);
    }

    @Override
    public Article selectArticleById(int id)
    {
        return articleMapper.selectArticleById(id);
    }

    @Override
    public void updateVisitCountById(int id)
    {
        articleMapper.updateVisitCountById(id);
    }
}
