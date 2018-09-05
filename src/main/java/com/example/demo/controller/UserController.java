package com.example.demo.controller;

import com.example.demo.dataobject.Category;
import com.example.demo.dataobject.Music;
import com.example.demo.dataobject.User;
import com.example.demo.dto.MusicDTO;
import com.example.demo.repository.CategoryRepository;
import com.example.demo.service.impl.CategoryService;
import com.example.demo.service.impl.MusicService;
import com.example.demo.service.impl.UserService;
import com.example.demo.util.RandomUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * @author Kyrie
 * @date 2018/3/19 19:21
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private MusicService musicService;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private CategoryRepository categoryRepository;


    @RequestMapping("adminlogin")
    public ModelAndView adminlogin(@RequestParam("username") String username,
                                   @RequestParam("password") String password,
                                   HttpServletRequest request,
                                   Map<String, Object> map) {
        if ("admin".equals(username) && ("admin").equals(password)) {
            return new ModelAndView("redirect:/admin");
        } else {
            map.put("msg","登录错误，请检查输入");
            return new ModelAndView("admin_login",map);
        }
    }

    @RequestMapping("/login")
    public ModelAndView login(@RequestParam("username") String username,
                              @RequestParam("password") String password,
                              HttpServletRequest request,
                              Map<String, Object> map) {
        User user = userService.findOne(username);
        if (user.getPassword().equals(password)) {
            request.getSession().putValue("user", user);
            return new ModelAndView("redirect:/index");
        }
        map.put("msg", "登陆失败");
        return new ModelAndView("signin", map);
    }

    @RequestMapping("/logout")
    public ModelAndView logout(HttpServletRequest request, Map<String, Object> map) {
        User user = (User) request.getSession().getAttribute("user");
        if (user != null) {
            request.getSession().putValue("user", null);
        }
        map.put("msg", "登出成功");
        return new ModelAndView("redirect:/index", map);
    }

    @RequestMapping("/register")
    public ModelAndView register(@RequestParam("username") String username,
                                 @RequestParam("password") String password,
                                 @RequestParam("gender") String gender,
                                 @RequestParam("age") Integer age,
                                 @RequestParam("job") String job,
                                 //@RequestParam("pic") String pic,
//                                 @RequestParam("type") String type,
//                                 @RequestParam("singer") Integer singer,
                                 Map<String, Object> map) {
        String type = "流行";
        Integer singer = 222;
        User user = new User(username, password, gender, age, job,type, singer);
        user.setPic("images/a3.png");
        User result = userService.findOne(username);
        if (result != null) {
            map.put("msg", "用户名已存在");
            return new ModelAndView("signup", map);
        }
        if (userService.save(user) != null) {
//            map.put("msg", "注册成功");
            return new ModelAndView("signin", map);
        } else {
            map.put("msg", "注册失败");
            return new ModelAndView("signup", map);
        }
    }



    @RequestMapping("/save")
    public ModelAndView save(
            @RequestParam("username") String username,
                             @RequestParam("gender") String gender,
                             @RequestParam("age") Integer age,
                             @RequestParam("job") String job,
                             @RequestParam("type") String type,
                             @RequestParam("singer") Integer singer,Map<String, Object> map,HttpServletRequest request) {
        User exist = userService.findOne(username);
        exist.setGender(gender);
        exist.setAge(age);
        exist.setJob(job);
        exist.setSinger(singer);
        exist.setType(type);
        User result = userService.save(exist);
        request.getSession().setAttribute("user",exist);
        return new ModelAndView("redirect:/user/detail", map);
    }

    @RequestMapping("/detail")
    public ModelAndView detail(HttpServletRequest request,Map<String, Object> map ) {
        User user = (User) request.getSession().getAttribute("user");
        List<Music> musicList = musicService.getList();
        List<Category> categoryList = categoryRepository.findAll();
        String [] strings = {"音乐迷", "个性听众", "音乐小白"};
//                "可亲", "豁达", "稳重", "幽默", "真诚", "豪爽", "耿直", "成熟", "独立",
//                "果断", "健谈", "机敏", "深沉", "坚强", "兴奋", "热情", "率直","毅力" ,
//                "友爱", "风趣", "沉静" ,"谨慎" ,"忠诚" ,"友善", "严肃","忠心"};
//        String [] singers = {"外向", "善良", "开朗", "活泼", "好动", "轻松", "愉快", "热情"};
        List<String> characterList = Arrays.asList(strings);
        characterList = RandomUtil.getRandomList(characterList,1);
        musicList = RandomUtil.getRandomList(musicList,3);
        List<MusicDTO> musicDTOList = new ArrayList<>();
        for (Music music : musicList) {
            MusicDTO musicDTO = new MusicDTO();
            musicDTO.setId(music.getId()+RandomUtil.getRandomInteger());
            musicDTO.setSinger(music.getSinger());
            musicDTO.setPic(music.getPic());
            musicDTOList.add(musicDTO);
        }
        categoryList = RandomUtil.getRandomList(categoryList,2);
        if (user == null) {
            map.put("msg", "用户还未登陆");
            return new ModelAndView("signin", map);
        } else {
            map.put("user", user); //job  gender
            map.put("characterList",characterList); // 1
            map.put("musicList",musicDTOList); // 3 id
            map.put("categoryList",categoryList); // 2
            return new ModelAndView("personal", map);
        }

    }

    @RequestMapping("/list")
    public ModelAndView list(Map<String, Object> map) {
        List<User> userList = userService.findAll();
        map.put("userList", userList);
        return new ModelAndView("admin_user", map);
    }
}
