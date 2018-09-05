package com.example.demo.VO;

import lombok.Data;

/**
 * @author Kyrie
 * @date 2018/3/19 19:58
 */
@Data
public class ResultVO<T> {

    private Integer code;

    private String msg;

    private T data;
}
