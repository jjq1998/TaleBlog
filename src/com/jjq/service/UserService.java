package com.jjq.service;

import com.jjq.bean.User;

public interface UserService
{
    void insertUser(User user);

    User selectUserByNameAndPassword(String name, String password);

    void updatePassword(int id, String newPassword);

    void updateUser(int id, String userName, String email, String blogName);

    boolean selectUserByName(String name);
}
