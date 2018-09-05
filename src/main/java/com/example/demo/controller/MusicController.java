package com.example.demo.controller;

import com.example.demo.dataobject.Category;
import com.example.demo.dataobject.Music;
import com.example.demo.dataobject.User;
import com.example.demo.dto.MusicDTO;
import com.example.demo.service.impl.CategoryService;
import com.example.demo.service.impl.MusicService;
import com.example.demo.util.FileUtil;
import com.example.demo.util.RandomUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.*;

/**
 * @author Kyrie
 * @date 2018/3/19 20:48
 */
@Controller
@RequestMapping("/music")
public class MusicController {

    @Autowired
    private MusicService musicService;

    @Autowired
    private CategoryService categoryService;

    @RequestMapping("/event")
    public String event() {
        return "events";
    }

    @RequestMapping("/video")
    public String video() {
        return "video";
    }

    /**
     * 返回所有音乐
     *
     * @param map
     * @param page
     * @param size
     * @return
     */
    @RequestMapping("/list") //管理员管理音乐时
    public ModelAndView list(Map<String, Object> map,
                             @RequestParam(value = "page", defaultValue = "1") Integer page,
                             @RequestParam(value = "size", defaultValue = "5") Integer size) {
        PageRequest request = new PageRequest(page - 1, size);
        Page<Music> musicInfoPage = musicService.findAll(request);
        map.put("musicInfoPage", musicInfoPage);
        map.put("currentPage", page);
        map.put("size", size);
        return new ModelAndView("admin_music", map);
    }

    /**
     * 前台页面的展示
     * 发现模块：随机展示12首歌
     * 新歌推荐：展示最新添加的8首歌
     * 热歌推荐：展示评分最高的5首歌
     *
     * @param map
     * @return
     */
    @RequestMapping("/index")
    public ModelAndView index(Map<String, Object> map, HttpServletRequest request) {
        //发现
        List<Music> musicList = musicService.getList();
        List<Music> discover_musicList = RandomUtil.getRandomList(musicList, 12);
        List<MusicDTO> musicDTOList = new ArrayList<>();
        for (Music music : discover_musicList) {
            MusicDTO musicDTO = new MusicDTO();
            musicDTO.setId(music.getId()+RandomUtil.getRandomInteger());
            musicDTO.setSinger(music.getSinger());
            musicDTO.setPic(music.getPic());
            musicDTOList.add(musicDTO);
        }


        //新歌
        int length = musicList.size();
        List<Music> new_musicList = musicList.subList(length - 8, length);
        List<MusicDTO> new_musicDTOList = new ArrayList<>();
        for (Music music : new_musicList) {
            MusicDTO musicDTO = new MusicDTO();
            musicDTO.setId(music.getId()+RandomUtil.getRandomInteger());
            musicDTO.setSinger(music.getSinger());
            musicDTO.setPic(music.getPic());
            new_musicDTOList.add(musicDTO);
        }

        //热歌
        //先按评分排名
        List<Music> tempList = new ArrayList<>();
        tempList.addAll(musicList);
        tempList.sort(new Comparator<Music>() {
            @Override
            public int compare(Music o1, Music o2) {
                return o1.getRank() - o2.getRank();
            }
        });
        List<Music> hot_musicList = tempList.subList(0, 5); //取前5名

        //把session中的用户也加进去
        User user = (User) request.getSession().getAttribute("user");

        //把所有list添加进map
        map.put("musicDTOList", musicDTOList);
        map.put("new_musicList", new_musicDTOList);
        map.put("hot_musicList", hot_musicList);
        map.put("reco_musicList", discover_musicList);
        if (user != null) {
            map.put("user", user);
        }
        return new ModelAndView("index", map);
    }

    @RequestMapping("/reco")
    @ResponseBody
    public List<MusicDTO> reco() {
        List<Music> musicList = musicService.getList();
        List<Music> discover_musicList = RandomUtil.getRandomList(musicList, 10);
        List<MusicDTO> musicDTOList = new ArrayList<>();
        for (Music music : discover_musicList) {
            MusicDTO musicDTO = new MusicDTO();
            musicDTO.setId(music.getId()+RandomUtil.getRandomInteger());
            musicDTO.setSinger(music.getSinger());
            musicDTO.setPic(music.getPic());
            musicDTOList.add(musicDTO);
        }
        return musicDTOList;
    }


    /**
     * 音乐库
     *
     * @param map
     * @return
     */
    @RequestMapping("/genres")
    public ModelAndView genres(Map<String, Object> map) {
        List<Category> categories = categoryService.getAll();
        List<Music> musicList = musicService.getMusicByCategory(categories.get(0).getName());
        map.put("categories", categories);
        map.put("musicList", musicList);
        String name = categories.get(0).getName();
        map.put("name", name);
        return new ModelAndView("genres", map);
    }

    /**
     * 音乐库的分类查看
     *
     * @param name
     * @param map
     * @return
     */
    @RequestMapping("/getMusicByCategory")
    public ModelAndView getMusicByCategory(@RequestParam("name") String name,
                                           Map<String, Object> map) {
        List<Category> categories = categoryService.getAll();
        Category category = categoryService.findCategoryByName(name);
        List<Music> musicList = musicService.getMusicByCategory(category.getName());
        map.put("categories", categories);
        map.put("musicList", musicList);
        map.put("name", name);
        return new ModelAndView("genres", map);
    }

    /**
     * 推荐列表生成，返回json格式
     *
     * @return
     */
    @RequestMapping("/musicRecom")
    @ResponseBody
    public ModelAndView musicRecom(HttpServletRequest request, Map<String, Object> map) {
        //随机取12首歌作为推荐歌曲列表
        List<Music> musicList = musicService.getList();
        List<Music> reco_musicList = RandomUtil.getRandomList(musicList, 10);
//        request.setAttribute("musicList", musicList);
        map.put("reco_musicList", reco_musicList);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("reco_musicList", reco_musicList);
//        return new ModelAndView("genres", map);
        return modelAndView;
    }

    /**
     * 添加音乐，其中要处理文件上传
     * String filePath = request.getSession().getServletContext().getRealPath("images/"); //这样是保存到了服务器的目录
     *
     * @param
     * @param map
     * @return
     */
    @RequestMapping(value = "/musicAdd", method = RequestMethod.POST)
    public String musicAdd(@RequestParam("name") String name,
                           @RequestParam("type") String type,
                           @RequestParam("singer") Integer singer,
                           @RequestParam("pic") MultipartFile file,
                           @RequestParam("rank") Integer rank,
                           Map<String, Object> map
    ) {
        //先把文件名获取到
        String filePath = "C:\\Users\\lantx\\IdeaProjects\\Music_Recommend\\src\\main\\resources\\static\\images\\";
        String fileName = file.getOriginalFilename();
        Music exist = musicService.findByName(name); //查一下，是否已存在该音乐
        List<Category> categories = categoryService.getAll();
        Music music = new Music();
        music.setName(name);
        music.setType(type);
        music.setSinger(singer);
        music.setPic("images/" + fileName);
        music.setRank(rank);
        if (exist != null) { //说明是在更新
            map.put("msg", "已有该音乐");
            map.put("categories", categories);
            return "admin_musicAdd";

        } else { //说明是要添加
            try {
                FileUtil.uploadFile(file.getBytes(),
                        filePath, fileName);
                //这样可以保存到工程目录
            } catch (Exception e) {
                map.put("msg", "添加失败");
                map.put("categories", categories);
                return "admin_musicAdd";
            }
            Music result = musicService.addMusic(music);
            if (result != null) {
                //添加成功
                return "redirect:/music/list";
            } else {
                map.put("msg", "添加失败");
                map.put("categories", categories);
                return "admin_musicAdd";
            }
        }

    }

    /**
     * 更新除封面图之外的信息
     *
     * @param
     * @param map
     * @return
     */
    @RequestMapping("/musicUpdate")
    public String musicUpdate(@RequestParam("name") String name,
                              @RequestParam("type") String type,
                              @RequestParam("singer") Integer singer,
                              @RequestParam("rank") Integer rank,
                              Map<String, Object> map) {
        Music exist = musicService.findByName(name);
        List<Category> categories = categoryService.getAll();
        exist.setName(name);
        exist.setType(type);
        exist.setSinger(singer);
        exist.setRank(rank);
        Music result = musicService.addMusic(exist);
        if (result != null) {
            return "redirect:/music/list";
        } else {
            map.put("categories", categories);
            map.put("msg", "修改失败");
            return "admin_musicAdd";
        }
    }


    @RequestMapping("/musicDetail")
    public ModelAndView musicDetail(@RequestParam("id") Integer id,
                                    Map<String, Object> map) {
        Music music = musicService.findByID(id);
        List<Category> categories = categoryService.getAll();
        map.put("music", music);
        map.put("categories", categories);
        return new ModelAndView("admin_musicDetail", map);
    }

    @RequestMapping("/musicDelete")
    public String musicDelete(@RequestParam("id") Integer id
    ) {
        Music music = musicService.findByID(id);
        musicService.deleteMusic(music);
        return "redirect:/music/list";
    }

    @RequestMapping("/musicPic")
    public ModelAndView musicPic(@RequestParam("pic") String pic,
                                 @RequestParam("id") Integer id,
                                 Map<String, Object> map) {
        map.put("pic", pic);
        map.put("id", id);
        return new ModelAndView("admin_musicPic", map);
    }

    @RequestMapping("/musicPicUpdate")
    public String musicPicUpdate(@RequestParam("id") Integer id,
                                 @RequestParam("pic") MultipartFile file,
                                 Map<String, Object> map) throws Exception {

        String filePath = "C:\\Users\\lantx\\IdeaProjects\\Music_Recommend\\src\\main\\resources\\static\\images\\";
        String fileName = file.getOriginalFilename();
        FileUtil.uploadFile(file.getBytes(), filePath, fileName);
        Music exist = musicService.findByID(id);
        exist.setPic("images/" + fileName);
        Music result = musicService.addMusic(exist);
        return "redirect:/music/list";
    }

    @RequestMapping("/musicSearch")
    public ModelAndView musicSearch(@RequestParam("songName") String name,
                                    Map<String, Object> map) {
        Music music = musicService.findByName(name);
        map.put("music", music);
        return new ModelAndView("admin_musicSingle", map);
    }

    @RequestMapping("/musicSingle")
    public ModelAndView musicSingle(@RequestParam("songName") String name,
                                    Map<String, Object> map) {
        Music music = musicService.findByName(name);
        map.put("music", music);
        return new ModelAndView("single", map);
    }

    @RequestMapping("/musicRank")
    public ModelAndView musicRank (@RequestParam("rank") Integer rank,
                                   @RequestParam("songName") String songName) {
        Music music = musicService.findByName(songName);
        music.setRank(rank);
        musicService.addMusic(music);
        return new ModelAndView("redirect:/music/index");
    }


}
