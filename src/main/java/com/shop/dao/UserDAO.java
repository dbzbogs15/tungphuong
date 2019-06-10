package com.shop.dao;

import com.shop.model.User;

import java.util.List;

public interface UserDAO {
    List<User> getAllUser();
    void addUser(User user);
    User login(String email, String password);
    User findByEmail(String email);
}
