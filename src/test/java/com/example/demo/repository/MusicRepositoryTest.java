package com.example.demo.repository;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.*;

/**
 * @author Kyrie
 * @date 2018/3/19 19:18
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class MusicRepositoryTest {

    @Autowired
    private MusicRepository musicRepository;

    @Test
    public void findAllTest() {
        System.out.println(musicRepository.findAll());
    }
}