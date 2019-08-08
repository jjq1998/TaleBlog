package com.jjq.service.impl;

import com.jjq.bean.Message;
import com.jjq.mapper.MessageMapper;
import com.jjq.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MessageServiceImpl implements MessageService
{
    @Autowired
    MessageMapper messageMapper;

    @Override
    public List<Message> selectAllMessageByArticleId(int articleId)
    {
        return messageMapper.selectAllMessageByArticleId(articleId);
    }

    @Override
    public List<Message> selectAllMessage(int userId)
    {
        return messageMapper.selectAllMessage(userId);
    }

    @Override
    public int selectAllMessageCount(int userId)
    {
        return messageMapper.selectAllMessageCount(userId);
    }

    @Override
    public void insertMessage(int articleId, String userName, String content)
    {
        messageMapper.insertMessage(articleId, userName, content);
    }

    @Override
    public void deleteMessage(int id)
    {
        messageMapper.deleteMessage(id);
    }
}
