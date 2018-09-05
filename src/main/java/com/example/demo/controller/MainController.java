package com.example.demo.controller;

import com.example.demo.dataobject.Category;
import com.example.demo.service.impl.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author Kyrie
 * @date 2018/3/20 10:59
 */
@Controller
public class MainController {

    @Autowired
    private CategoryService categoryService;

    @RequestMapping("/index")
    public String index() {
        return "redirect:/music/index";
    }
    @RequestMapping("/signin")
    public String signin() {
        return "signin";
    }
    @RequestMapping("/signup")
    public String signup() {
        return "signup";
    }
    @RequestMapping("/admin")
    public String admin() {
        return "admin";
    }
    @RequestMapping("/admin_music")
    public String admin_music() {
        return "admin_music";
    }
    @RequestMapping("/admin_category")
    public String admin_category() {
        return "admin_category";
    }
    @RequestMapping("/admin_user")
    public String admin_user() {
        return "admin_user";
    }
    @RequestMapping("/admin_musicAdd")
    public ModelAndView admin_musicAdd() {
        List<Category> categories = categoryService.getAll();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("categories", categories);
        modelAndView.setViewName("admin_musicAdd");
        return modelAndView;
    }
    @RequestMapping("/login")
    public String login() {
        return "admin_login";
    }

    @RequestMapping("/bubble")
    public String bubble() {
        return "bubble";
    }
}
