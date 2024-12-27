package org.example.melonread.controller;

import org.example.melonread.entity.Article;
import org.example.melonread.service.ArticleServiceImpl;
import org.example.melonread.util.ResponseResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/melon/article")
@CrossOrigin
public class ArticleController {

    @Autowired
    private ArticleServiceImpl articleService;

    @GetMapping("/popular")
    public ResponseResult<List<Article>> getPopularArticles() {
        List<Article> articles = articleService.getPopularArticles();
        return new ResponseResult<List<Article>>().success(articles);
    }
    //测试成功
    @PostMapping("/delete")
    public ResponseResult<String> deleteArticle(@RequestBody Article article) {
        boolean success = articleService.deleteArticle(article);
        return success ? new ResponseResult<String>().success("删除成功") : new ResponseResult<String>().fail("删除失败");
    }
//测试成功
    @PostMapping("/publish")
    public ResponseResult<String> publishArticle(@RequestBody Article article) {
        System.out.println(article);
        boolean success = articleService.publishArticle(article);
        return success ? new ResponseResult<String>().success("Article published") : new ResponseResult<String>().fail("Publication failed");
    }
//    测试成功
    @PutMapping("/update")
    public ResponseResult<String> updateArticle(@RequestBody Article article) {
//        System.out.println(article);
        boolean success = articleService.updateArticleContent(article);
        return success ? new ResponseResult<String>().success("Article updated") : new ResponseResult<String>().fail("Update failed");
    }
//    测试成功
    @GetMapping("/all")
    public ResponseResult<List<Article>> getAllArticles() {
        return new ResponseResult<List<Article>>().success(articleService.getAllarticle());
    }
//    测试成功
    @GetMapping("/findbyid")
    public ResponseResult<Article> getArticleById(@RequestParam("id") int id) {
        Article article = articleService.getArticleById(id);
        if(article == null) {
            return new ResponseResult<Article>().fail(null).setMsg("fail to find article");
        }
        return new ResponseResult<Article>().success(article).setMsg("get article");
    }
//    测试成功
    @GetMapping("/findbyTitle")
    public ResponseResult<List<Article>> getArticleByTitle(@RequestParam("title") String title) {
        List<Article> articles= articleService.getArticleByTitle(title);
        if(articles.size() == 0) {
            return new ResponseResult<List<Article>>().fail(null).setMsg("fail to find article");
        }
        return new ResponseResult<List<Article>>().success(articles).setMsg("get article");
    }
    //测试成功
    @GetMapping("/findbyAuthorId")
    public ResponseResult<List<Article>> getArticleByAuthor(@RequestParam("authorId") Integer authorId) {
        List<Article> articles= articleService.getArticleByAuthorId(authorId);
        if(articles.size() == 0) {
            return new ResponseResult<List<Article>>().fail(null).setMsg("fail to find article");
        }
        return new ResponseResult<List<Article>>().success(articles).setMsg("get article");
    }
    //测试通过
    @GetMapping("/updateViews")
    public ResponseResult<String> updateArticleView(@RequestParam("articleId") Integer articleId) {
        articleService.incrementViews(articleId);
        return new ResponseResult<String>().success(null).setMsg("updated");
    }
    //测试通过
    @GetMapping("/page")
    public ResponseResult<Map<String,Object>>
    getArticles(@RequestParam("size") Integer pageSize, @RequestParam("index") Integer index,
                @RequestParam("order") String order, @RequestParam("sort") String sort,@RequestParam("reverse") Boolean reverse) {
        return new ResponseResult<Map<String,Object>>()
                .success(articleService.getArticlesByPage(index, pageSize,order,sort,reverse))
                .setMsg("get articles");
    }
}

