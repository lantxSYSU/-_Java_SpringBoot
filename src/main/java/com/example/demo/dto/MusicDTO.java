package com.example.demo.dto;

import lombok.Data;

/**
 * @author Kyrie
 * @date 2018/3/21 10:54
 */
@Data
public class MusicDTO {
    private Integer id;

    private String name;

    private String type;

    private Integer singer;

    private String pic;

    private String des;

    private Integer rank;
}
