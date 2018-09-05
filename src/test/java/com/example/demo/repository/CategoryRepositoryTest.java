package com.example.demo.repository;

import com.example.demo.dataobject.Category;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * @author Kyrie
 * @date 2018/3/19 18:29
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class CategoryRepositoryTest {

    @Autowired
    private CategoryRepository categoryRepository;

    @Test
    public void findOneTest() {
        Category category = categoryRepository.findOne(2);
        System.out.println(category);
    }

    @Test
    public void saveTest() {
        Category category = new Category("民谣");
        categoryRepository.save(category);
    }

}