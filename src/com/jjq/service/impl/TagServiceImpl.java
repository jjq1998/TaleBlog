package com.jjq.service.impl;

import com.jjq.bean.Tag;
import com.jjq.mapper.TagMapper;
import com.jjq.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TagServiceImpl implements TagService
{
    @Autowired
    TagMapper tagMapper;

    @Override
    public List<Tag> selectAllTag(int userId)
    {
        return tagMapper.selectAllTag(userId);
    }

    @Override
    public void insertTag(String name, int articleId)
    {
        tagMapper.insertTag(name, articleId);
    }

    @Override
    public void deleteTag(int userId, String name)
    {
        tagMapper.deleteTag(userId, name);
    }

    @Override
    public void deleteTagByArticleId(int articleId)
    {
        tagMapper.deleteTagByArticleId(articleId);
    }

    @Override
    public List<Tag> selectTagsByArticleId(int articleId)
    {
        return tagMapper.selectTagsByArticleId(articleId);
    }
}
