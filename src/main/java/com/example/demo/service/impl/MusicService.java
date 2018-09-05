package com.example.demo.service.impl;

import com.example.demo.dataobject.Music;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * @author Kyrie
 * @date 2018/3/19 19:22
 */
public interface MusicService {

    Page<Music> findAll(Pageable pageable);

    //获取所有音乐
    List<Music> getList();

    //根据音乐类型获取该类型音乐
    List<Music> getMusicByCategory(String type);

    //添加音乐
    Music addMusic(Music music);

    //根据音乐ID查找音乐
    Music findByID(Integer id);

    //根据音乐名称查找音乐
    Music findByName(String name);

    //删除音乐信息
    void deleteMusic(Music music);
}
