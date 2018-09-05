package com.example.demo.service.impl;

import com.example.demo.dataobject.Category;

import java.util.List;

/**
 * @author Kyrie
 * @date 2018/3/19 19:22
 */
public interface CategoryService {

    //获取所有的类型
    List<Category> getAll();

    //根据类型名查类型
    Category findCategoryByName(String name);
}
