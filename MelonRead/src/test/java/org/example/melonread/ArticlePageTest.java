package org.example.melonread;

import org.example.melonread.mapper.ArticleMapper;
import org.example.melonread.service.ArticleServiceImpl;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.HashMap;
import java.util.Map;

@SpringBootTest
public class ArticlePageTest {
    @Autowired
    ArticleMapper articleMapper;
    @Autowired
    ArticleServiceImpl articleService;
//    @Test
//    void test() {
//        System.out.println(articleMapper.getArticles(4,1));
//        System.out.println(articleMapper.getArticles(4,2));
//
//        System.out.println(articleMapper.getTotalArticleCount());
//    }
    @Test
    void test2(){
//        System.out.println(articleService.getArticlesByPage(0,4));
        Map<String,Object> map = new HashMap<>();
        for(int i=4;i>=1;i++){
            System.out.println("--------"+i+"页-------");
            map=articleService.getArticlesByPage(i,4,"views","asc");
//            System.out.println(map);
            System.out.println("articles:"+map.get("articles"));
            System.out.println(map.get("totalPages"));
            System.out.println(map.get("currentPage"));
        }
    }
}
