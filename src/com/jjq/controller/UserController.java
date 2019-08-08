package com.jjq.controller;

import com.jjq.bean.User;
import com.jjq.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController
{
    @Autowired
    UserService userService;

    @RequestMapping("/login")
    public String loginBefore()
    {
        return "login/login";
    }

    @RequestMapping("/doLogin")
    public String login(String name, String password, HttpSession session, Model model)
    {
        User user = userService.selectUserByNameAndPassword(name, password);
        if (user != null)
        {
            session.setAttribute("user", user);
            return "forward:/article/index";
        }
        else
        {
            model.addAttribute("error", "请检查用户名密码是否正确");
            return "login/login";
        }
    }

    @RequestMapping("/update")
    public String updateBefore()
    {
        return "admin/setting";
    }

    @RequestMapping("/install1")
    public String install1()
    {
        return "install/installPage1";
    }

    @RequestMapping("/install2")
    public String install2()
    {
        return "install/installPage2";
    }

    @RequestMapping("/install3")
    public String install3()
    {
        return "install/installPage3";
    }

    @RequestMapping("/doInstall")
    public String doInstall(User user, Model model)
    {
        if (userService.selectUserByName(user.getName()))
        {
            model.addAttribute("error", "用户名已存在");
            return "forward:/user/install1";
        }
        else
            userService.insertUser(user);
        return "forward:/user/login";
    }

    @RequestMapping("/updateUser")
    public String updateUser(HttpSession session, String userName, String email, String blogName)
    {
        userService.updateUser(((User) session.getAttribute("user")).getId(), userName, email, blogName);
        session.removeAttribute("user");
        return "/login/login";
    }

    @RequestMapping("/updatePassword")
    public String updatePassword(HttpSession session, String password)
    {
        userService.updatePassword(((User) session.getAttribute("user")).getId(), password);
        session.removeAttribute("user");
        return "/login/login";
    }
}
