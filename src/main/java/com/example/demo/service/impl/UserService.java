package com.example.demo.service.impl;

import com.example.demo.dataobject.User;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Kyrie
 * @date 2018/3/19 19:21
 */

public interface UserService {

    User findOne(String username);

    User save(User user);

    List<User> findAll();
}
