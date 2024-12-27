package org.example.melonread.controller;

import org.example.melonread.dao.UserDao;
import org.example.melonread.entity.User;
import org.example.melonread.service.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RestController
public class Test {
    @Autowired
    UserServiceImpl userService;
    @Autowired
    UserDao userDao;
    @GetMapping("/a")
    public String a() {
        return "hello";
    }
    @GetMapping("/b")
    public List<User> b() {
        return userService.list();
    }
//    @GetMapping("/user")
//    public List<User> getUser() {
//        return userDao.
//    }
}
