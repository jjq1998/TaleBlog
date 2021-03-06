package com.jjq.service;

import com.jjq.bean.Message;

import java.util.List;

public interface MessageService
{
    List<Message> selectAllMessageByArticleId(int articleId);

    List<Message> selectAllMessage(int userId);

    int selectAllMessageCount(int userId);

    void insertMessage(int articleId, String userName, String content);

    void deleteMessage(int id);
}
