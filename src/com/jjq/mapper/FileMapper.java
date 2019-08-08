package com.jjq.mapper;

import com.jjq.bean.File;

import java.util.List;

public interface FileMapper
{
    List<File> selectAllFiles(int userId);

    File selectFileById(int id);

    int selectAllFilesCount(int userId);

    void insertFile(int userId, String name, String url);

    void deleteFile(int id);
}
