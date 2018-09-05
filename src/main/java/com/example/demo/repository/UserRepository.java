package com.example.demo.repository;

import com.example.demo.dataobject.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author Kyrie
 * @date 2018/3/19 18:28
 */
public interface UserRepository extends JpaRepository<User, Integer> {

    User findUserByUsername(String username);
}
