package com.example.demo.repository;

import com.example.demo.dataobject.Category;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author Kyrie
 * @date 2018/3/19 18:28
 */
public interface CategoryRepository extends JpaRepository<Category, Integer> {

    Category findCategoryByName(String name);

}




