package com.jjq.service;

import com.jjq.bean.Tag;

import java.util.List;

public interface TagService
{
    List<Tag> selectAllTag(int userId);

    void insertTag(String name, int articleId);

    void deleteTag(int userId, String name);

    void deleteTagByArticleId(int articleId);

    List<Tag> selectTagsByArticleId(int articleId);
}
