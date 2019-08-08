package com.jjq.controller;

import com.jjq.bean.Message;
import com.jjq.bean.User;
import com.jjq.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/message")
public class MessageController
{
    @Autowired
    MessageService messageService;

    @RequestMapping("/message")
    public String messageSelect(HttpSession session, Model model)
    {
        List<Message> list = messageService.selectAllMessage(((User) session.getAttribute("user")).getId());
        model.addAttribute("list", list);
        return "admin/message";
    }

    @RequestMapping("/messageDelete")
    public String messageDelete(int id)
    {
        messageService.deleteMessage(id);
        return "forward:/message/message";
    }

    @RequestMapping("/messageInsert")
    public String messageInsert(String userName, String content, int articleId)
    {
        messageService.insertMessage(articleId, userName, content);
        return "forward:/article/articleReview?id=" + articleId;
    }
}
