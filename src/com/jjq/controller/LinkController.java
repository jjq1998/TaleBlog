package com.jjq.controller;

import com.jjq.bean.Link;
import com.jjq.bean.User;
import com.jjq.service.LinkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/link")
public class LinkController
{
    @Autowired
    LinkService linkService;

    @RequestMapping("/link")
    public String linkSelect(HttpSession session, Model model)
    {
        List<Link> list = linkService.selectAllLink(((User) session.getAttribute("user")).getId());
        model.addAttribute("list", list);
        return "admin/link";
    }

    @RequestMapping("/about")
    public String about()
    {
        return "surface/about";
    }

    @RequestMapping("/friendLink")
    public String friendLink()
    {
        return "surface/link";
    }

    @RequestMapping("/linkDelete")
    public String linkDelete(int id)
    {
        linkService.deleteLink(id);
        return "forward:/link/link";
    }

    @RequestMapping("/linkInseret")
    public String linkInsert(HttpSession session, Link link)
    {
        linkService.insertLink(((User) session.getAttribute("user")).getId(), link.getName(), link.getUrl());
        return "forward:/link/link";
    }
}
