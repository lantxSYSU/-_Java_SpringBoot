package com.example.demo.repository;

import com.example.demo.dataobject.Music;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * @author Kyrie
 * @date 2018/3/19 18:27
 */
public interface MusicRepository extends JpaRepository<Music, Integer> {

    List<Music> findMusicByType(String type);

    Music findMusicByName(String name);
}
