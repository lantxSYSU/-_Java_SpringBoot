package com.example.demo.service.impl.impl;

import com.example.demo.dataobject.Music;
import com.example.demo.repository.MusicRepository;
import com.example.demo.service.impl.MusicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Kyrie
 * @date 2018/3/20 11:51
 */
@Service
@Transactional
public class MusicServiceImpl implements MusicService {

    @Autowired
    private MusicRepository musicRepository;

    @Override
    public Page<Music> findAll(Pageable pageable) {
        return musicRepository.findAll(pageable);
    }

    @Override
    public List<Music> getList() {
        return musicRepository.findAll();
    }

    @Override
    public List<Music> getMusicByCategory(String type) {
        return musicRepository.findMusicByType(type);
    }

    @Override
    public Music addMusic(Music music) {
        return musicRepository.save(music);
    }

    @Override
    public Music findByID(Integer id) {
        return musicRepository.findOne(id);
    }

    @Override
    public Music findByName(String name) {
        return musicRepository.findMusicByName(name);
    }

    @Override
    public void deleteMusic(Music music) {
         musicRepository.delete(music);
    }
}
