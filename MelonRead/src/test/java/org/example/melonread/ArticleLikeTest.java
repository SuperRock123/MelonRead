package org.example.melonread;

import org.example.melonread.dao.ArticleDao;
import org.example.melonread.dao.ArticleLikeDao;
import org.example.melonread.entity.ArticleLike;
import org.example.melonread.service.ArticleLikeServiceImpl;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class ArticleLikeTest {
    @Autowired
    public ArticleLikeDao articleLikeDao;
    @Autowired
    public ArticleLikeServiceImpl articleLikeServiceImpl;
    @Test
    public void testArticleLike() {
        System.out.println("article like list");
        System.out.println(articleLikeDao.selectList(null));
    }
    @Test void testArticleLikeSave(){
        System.out.println("------save like---");
        ArticleLike articleLike = new ArticleLike();
        articleLike.setUserId(5);
        articleLike.setArticleId(10);
        articleLikeServiceImpl.likeArticle(articleLike);
//        System.out.println(articleLikeDao.insert(articleLike));
    }
    @Test
    void testHasLikedArticle(){
        System.out.println("------hasLikedArticle---");
        ArticleLike articleLike = new ArticleLike();
        articleLike.setUserId(3);
        articleLike.setArticleId(1);
        System.out.println(articleLikeServiceImpl.hasLikedArticle(articleLike));
        articleLike.setUserId(5);
        articleLike.setArticleId(1);
        System.out.println(articleLikeServiceImpl.hasLikedArticle(articleLike));
        articleLike.setUserId(1);
        articleLike.setArticleId(10);
        System.out.println(articleLikeServiceImpl.hasLikedArticle(articleLike));
        articleLike.setUserId(1);
        articleLike.setArticleId(2);
        System.out.println(articleLikeServiceImpl.hasLikedArticle(articleLike));
        articleLike.setUserId(5);
        articleLike.setArticleId(6);
        System.out.println(articleLikeServiceImpl.hasLikedArticle(articleLike));
    }
    @Test
    void testGetArticleLikesCount(){
        System.out.println("------getArticleLikesCount---");
        ArticleLike articleLike = new ArticleLike();
        articleLike.setArticleId(1);
        System.out.println(articleLikeServiceImpl.getArticleLikesCount(articleLike));
        articleLike.setArticleId(2);
        System.out.println(articleLikeServiceImpl.getArticleLikesCount(articleLike));
        articleLike.setArticleId(6);
        System.out.println(articleLikeServiceImpl.getArticleLikesCount(articleLike));
    }
    @Test
    void testUnlike(){
        System.out.println("------unlike---");

    }
}
