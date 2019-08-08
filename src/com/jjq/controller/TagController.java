package com.jjq.controller;

import com.jjq.bean.User;
import com.jjq.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/tag")
public class TagController
{
    @Autowired
    TagService tagService;

    @RequestMapping("/tagDelete")
    public String tagDelete(HttpSession session, String tagName)
    {
        tagService.deleteTag(((User) session.getAttribute("user")).getId(), tagName);
        return "forward:/category/categoryAndTag";
    }
}
