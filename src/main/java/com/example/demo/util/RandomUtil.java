package com.example.demo.util;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * @author Kyrie
 * @date 2018/3/20 13:10
 */
public class RandomUtil {

    /**
     * 从list中随机取size个元素，返回新的list
     * @param list
     * @param size
     * @return
     */
    public static List getRandomList(List list, Integer size) {
        Integer length = list.size();
        List result = new ArrayList();
        for (int i = 0; i < size; ++ i) {
            int index = (int)(Math.random()*length);
            result.add(list.get(index));
        }
        return result;
    }

    public static Integer getRandomInteger() {
        int a = (int)(Math.random() * 50);
        int b = (int)(Math.random() * 10000);
        return b - a;
    }
}
