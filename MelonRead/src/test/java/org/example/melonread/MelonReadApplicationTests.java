package org.example.melonread;

import org.example.melonread.dao.ArticleDao;
import org.example.melonread.dao.UserDao;
import org.example.melonread.entity.Article;
import org.example.melonread.entity.User;
import org.example.melonread.service.ArticleServiceImpl;
import org.example.melonread.service.UserServiceImpl;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class MelonReadApplicationTests {
    @Autowired
    UserDao userDao;
    @Autowired
    UserServiceImpl userService;
    @Autowired
    ArticleServiceImpl articleService;
    @Autowired
    ArticleDao articleDao;
    @Test
    void contextLoads() {
    }
    @Test
    void melonReadUserTest1() {
        System.out.println("查询所有user");
        System.out.println(userDao.selectList(null));
        System.out.println("按id查询user");
        System.out.println(userDao.selectById(1));
        System.out.println("按用户名查询user");
        System.out.println(userService.getUserByUsername(""));
        System.out.println(userService.getUserByUsername("jane_smith"));
//        System.out.println("插入用户数据");
//        User user = new User();
//        user.setUsername("Jerry");
//        user.setPassword("123456");
//        userService.addUser(user);
        User updateUser = new User();
        updateUser.setUsername("Yearn");
        updateUser.setPassword("123456");
        updateUser.setEmail("yearn@gmail.com");
        updateUser.setUserId(5);
        updateUser.setBio("hello world");
        userService.updateUserProfile(updateUser);
    }
    @Test
    void articleTest() {
//        System.out.println("all articles");
//        System.out.println(articleDao.selectList(null));
//        System.out.println("all articles");
//        System.out.println()
//        System.out.println(articleService.getArticleById(1));
//        System.out.println(articleService.getArticleByTitle("to"));
//        System.out.println("get article by authorId");
//        System.out.println(articleService.getArticleByAuthorId(1));
//        System.out.println("update views");
//        articleService.incrementViews(10);
          System.out.println("get users by username");
          System.out.println(userService.getUsersByUsername("s"));
    }
    @Test
    void articleLikeTest1() {

    }
}
