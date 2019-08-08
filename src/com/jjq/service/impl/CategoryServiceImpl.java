package com.jjq.service.impl;

import com.jjq.bean.Category;
import com.jjq.mapper.CategoryMapper;
import com.jjq.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService
{
    @Autowired
    CategoryMapper categoryMapper;

    @Override
    public List<Category> selectAllCategory(int userId)
    {
        return categoryMapper.selectAllCategory(userId);
    }

    @Override
    public String selectCategoryNameById(int id)
    {
        return categoryMapper.selectCategoryNameById(id);
    }

    @Override
    public int selectCategoryIdByName(int userId, String categoryName)
    {
        return categoryMapper.selectCategoryIdByName(userId, categoryName);
    }

    @Override
    public void insertCategory(int userId, String name)
    {
        categoryMapper.insertCategory(userId, name);
    }

    @Override
    public void deleteCategory(int id)
    {
        categoryMapper.deleteCategory(id);
    }
}
