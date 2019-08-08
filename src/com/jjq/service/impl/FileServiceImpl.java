package com.jjq.service.impl;

import com.jjq.bean.File;
import com.jjq.mapper.FileMapper;
import com.jjq.service.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FileServiceImpl implements FileService
{
    @Autowired
    FileMapper fileMapper;

    @Override
    public List<File> selectAllFiles(int userId)
    {
        return fileMapper.selectAllFiles(userId);
    }

    @Override
    public File selectFileById(int id)
    {
        return fileMapper.selectFileById(id);
    }

    @Override
    public int selectAllFilesCount(int userId)
    {
        return fileMapper.selectAllFilesCount(userId);
    }

    @Override
    public void insertFile(int userId, String name, String url)
    {
        fileMapper.insertFile(userId, name, url);
    }

    @Override
    public void deleteFile(int id)
    {
        fileMapper.deleteFile(id);
    }
}
