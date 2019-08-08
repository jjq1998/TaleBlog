package com.jjq.controller;

import com.jjq.bean.Category;
import com.jjq.bean.Tag;
import com.jjq.bean.User;
import com.jjq.service.CategoryService;
import com.jjq.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/category")
public class CategoryController
{
    @Autowired
    CategoryService categoryService;

    @Autowired
    TagService tagService;

    @RequestMapping("/categoryAndTag")
    public String categoryAndTag(HttpSession session, Model model)
    {
        User user = (User) session.getAttribute("user");
        List<Category> categoryList = categoryService.selectAllCategory(user.getId());
        model.addAttribute("categoryList", categoryList);

        List<Tag> tagList = tagService.selectAllTag(user.getId());
        model.addAttribute("tagList", tagList);

        return "admin/category";
    }

    @RequestMapping("/categoryInsert")
    public String categoryInsert(String name, HttpSession session)
    {
        categoryService.insertCategory(((User) session.getAttribute("user")).getId(), name);
        return "forward:/category/categoryAndTag";
    }
}
