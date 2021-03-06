package com.jjq.service;

import com.jjq.bean.Category;

import java.util.List;

public interface CategoryService
{
    List<Category> selectAllCategory(int userId);

    String selectCategoryNameById(int id);

    int selectCategoryIdByName(int userId, String categoryName);

    void insertCategory(int userId, String name);

    void deleteCategory(int id);
}
