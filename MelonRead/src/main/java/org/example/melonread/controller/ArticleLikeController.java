package org.example.melonread.controller;

import org.example.melonread.entity.ArticleLike;
import org.example.melonread.service.ArticleLikeServiceImpl;
import org.example.melonread.util.ResponseResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/melon/article-like")
@CrossOrigin
public class ArticleLikeController {

    @Autowired
    private ArticleLikeServiceImpl articleLikeService;
    @Autowired
    private ArticleLikeServiceImpl articleLikeServiceImpl;

    //测试通过
    @PostMapping("/like")
    public ResponseResult<String> likeArticle(@RequestBody ArticleLike articleLike) {
        boolean success = articleLikeService.likeArticle(articleLike);
        return success ? new ResponseResult<String>().success("Article liked") : new ResponseResult<String>().fail("Like failed");
    }
    //测试通过
    @GetMapping("/unlike")
    public ResponseResult<String> unlikeArticle(@RequestParam("likeId") Integer likeId) {
        boolean success = articleLikeService.unlikeArticle(likeId);
        return success ? new ResponseResult<String>().success("Article unliked") : new ResponseResult<String>().fail("Unlike failed");
    }
    //测试通过
    @GetMapping("/like-count")
    public ResponseResult<Integer> likeArticleCount(@RequestParam("articleId") Integer articleId) {
        ArticleLike articleLike = new ArticleLike();
        articleLike.setArticleId(articleId);
        return new ResponseResult<Integer>().success(articleLikeService.getArticleLikesCount(articleLike)).setMsg("Article liked count");
    }
    //测试通过
    @PostMapping("/has-liked")
    public ResponseResult<Integer> hasArticleLiked(@RequestBody ArticleLike articleLike) {
        return new ResponseResult<Integer>().success(articleLikeServiceImpl.hasLikedArticle(articleLike)).setMsg("had liked");
    }
}