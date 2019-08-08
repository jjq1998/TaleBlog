package com.jjq.service.impl;

import com.jjq.bean.User;
import com.jjq.mapper.UserMapper;
import com.jjq.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService
{
    @Autowired
    UserMapper userMapper;

    @Override
    public void insertUser(User user)
    {
        userMapper.insertUser(user);
    }

    @Override
    public User selectUserByNameAndPassword(String name, String password)
    {
        return userMapper.selectUserByNameAndPassword(name, password);
    }

    @Override
    public void updatePassword(int id, String newPassword)
    {
        userMapper.updatePassword(id, newPassword);
    }

    @Override
    public void updateUser(int id, String userName, String email, String blogName)
    {
        userMapper.updateUser(id, userName, email, blogName);
    }

    @Override
    public boolean selectUserByName(String name)
    {
        return userMapper.selectUserByName(name);
    }
}
