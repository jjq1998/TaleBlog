package com.jjq.service;

import com.jjq.bean.File;

import java.util.List;

public interface FileService
{
    List<File> selectAllFiles(int userId);

    File selectFileById(int id);

    int selectAllFilesCount(int userId);

    void insertFile(int userId, String name, String url);

    void deleteFile(int id);
}
