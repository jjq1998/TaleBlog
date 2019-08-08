package com.jjq.mapper;

import com.jjq.bean.Article;
import com.jjq.bean.ArticlePage;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ArticleMapper
{
    List<Article> selectAllArticle();

    List<Article> selectAllArticleInUserId(int userId);

    List<Article> selectAllArticleInCondition(int userId, String condition);

    List<Article> selectAllArticleInPage(int userId, @Param("articlePage") ArticlePage articlePage);

    List<Article> selectAllArticleByCategoryId(int categoryId);

    int selectAllArticleCount(int userId);

    int selectAllArticleByCategoryIdCount(int categoryId);

    int selectLastInsertArticleId();

    void insertArticle(int categoryId, String title, String content, String state);

    void deleteArticle(int id);

    void updateArticle(int id, String title, String content, int cid, String state);

    Article selectArticleById(int id);

    void updateVisitCountById(int id);
}
