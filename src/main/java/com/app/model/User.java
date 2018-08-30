package com.app.model;

import lombok.Data;

import java.util.List;

/**
 * 用户表
 */

@Data
public class User {
    private Integer id;
    private String name;
    private String age;

    private List<Car> cars;
}
