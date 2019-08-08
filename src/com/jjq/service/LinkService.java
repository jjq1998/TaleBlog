package com.jjq.service;

import com.jjq.bean.Link;

import java.util.List;

public interface LinkService
{
    List<Link> selectAllLink(int userId);

    void insertLink(int userId, String name, String url);

    void deleteLink(int id);

    void updateLink(int id, String name, String url);

    int selectAllLinkCount(int userId);
}
