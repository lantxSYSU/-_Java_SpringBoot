package com.example.demo.dataobject;

import lombok.Data;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

/**
 * @author Kyrie
 * @date 2018/3/19 18:22
 */
@Data
@Entity
@DynamicUpdate
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String username;

    private String password;

    private String gender;

    private Integer age;

    private String job;

    private String pic;

    private String type;

    private Integer singer;


    public User(String username, String password, String gender, Integer age, String job, String pic, String type, Integer singer) {
        this.username = username;
        this.password = password;
        this.gender = gender;
        this.age = age;
        this.job = job;
        this.pic = pic;
        this.type = type;
        this.singer = singer;
    }

    public User(String username, String password, String gender, Integer age, String job, String type, Integer singer) {
        this.username = username;
        this.password = password;
        this.gender = gender;
        this.age = age;
        this.job = job;
        this.type = type;
        this.singer = singer;
    }

    public User(String gender, Integer age, String job, String type, Integer singer) {
        this.gender = gender;
        this.age = age;
        this.job = job;
        this.type = type;
        this.singer = singer;
    }

    public User() {
    }
}
