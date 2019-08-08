package com.jjq.controller;

import com.jjq.bean.File;
import com.jjq.bean.User;
import com.jjq.service.FileService;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/file")
public class FileController
{
    @Autowired
    FileService fileService;

    @RequestMapping("/fileSelect")
    public String fileSelect(HttpSession session, Model model)
    {
        List<File> list = fileService.selectAllFiles(((User) session.getAttribute("user")).getId());
        model.addAttribute("list", list);
        return "admin/attach";
    }

    @RequestMapping("/fileDelete")
    public String fileDelete(int id)
    {
        java.io.File file = new java.io.File(fileService.selectFileById(id).getUrl());
        fileService.deleteFile(id);
        file.delete();
        return "forward:/file/fileSelect";
    }

    @RequestMapping(value = "/attach", method = RequestMethod.POST)
    public String attach(MultipartFile file, HttpSession session)
    {
        try
        {
            User user = (User) session.getAttribute("user");
            String savePath = "E:\\WorkSpace\\IntelliJIDEA\\TaleBlog\\web\\upload\\" + user.getName();
            FileUtils.copyInputStreamToFile(file.getInputStream(), new java.io.File(savePath, file.getOriginalFilename()));
            fileService.insertFile(user.getId(), file.getOriginalFilename(), savePath + java.io.File.separator + file.getOriginalFilename());
        }
        catch (IOException e)
        {
            e.printStackTrace();
        }
        return "forward:/file/fileSelect";
    }
}
