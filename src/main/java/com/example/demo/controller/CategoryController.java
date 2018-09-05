package com.example.demo.controller;

import com.example.demo.dataobject.Category;
import com.example.demo.repository.CategoryRepository;
import com.example.demo.service.impl.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

/**
 * @author Kyrie
 * @date 2018/3/21 16:44
 */
@Controller
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private CategoryRepository categoryRepository;

    @RequestMapping("/list")
    public ModelAndView list(Map<String, Object> map) {
        List<Category> categories = categoryService.getAll();
        map.put("categories", categories);
        return new ModelAndView("admin_category", map);
    }

    @RequestMapping("/add")
    public String add(@RequestParam("type") String type) {
        Category category = new Category();
        category.setName(type);
        categoryRepository.save(category);
        return "redirect:/category/list";
    }

    @RequestMapping("/delete")
    public String delete(@RequestParam("id") Integer id) {
        categoryRepository.delete(id);
        return "redirect:/category/list";
    }
}
