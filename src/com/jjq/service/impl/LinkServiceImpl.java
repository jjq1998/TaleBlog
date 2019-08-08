package com.jjq.service.impl;

import com.jjq.bean.Link;
import com.jjq.mapper.LinkMapper;
import com.jjq.service.LinkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LinkServiceImpl implements LinkService
{
    @Autowired
    LinkMapper linkMapper;

    @Override
    public List<Link> selectAllLink(int userId)
    {
        return linkMapper.selectAllLink(userId);
    }

    @Override
    public void insertLink(int userId, String name, String url)
    {
        linkMapper.insertLink(userId, name, url);
    }

    @Override
    public void deleteLink(int id)
    {
        linkMapper.deleteLink(id);
    }

    @Override
    public void updateLink(int id, String name, String url)
    {
        linkMapper.updateLink(id, name, url);
    }

    @Override
    public int selectAllLinkCount(int userId)
    {
        return linkMapper.selectAllLinkCount(userId);
    }
}
