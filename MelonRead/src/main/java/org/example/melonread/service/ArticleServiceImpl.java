package org.example.melonread.service;

import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.example.melonread.dao.ArticleDao;
import org.example.melonread.entity.Article;
import org.example.melonread.mapper.ArticleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ArticleServiceImpl extends ServiceImpl<ArticleDao, Article> {
    @Autowired
    private ArticleMapper articleMapper;
    private final ArticleDao articleDao;

    public ArticleServiceImpl(ArticleDao articleDao) {
        this.articleDao = articleDao;
    }

    // 获取热门文章列表
    public List<Article> getPopularArticles() {
        // 自定义查询条件，按浏览次数排序获取热门文章
        return this.lambdaQuery().orderByDesc(Article::getViews).list();
    }

    public List<Article> getAllarticle(){
        return this.list();
    }

    // 发布新文章
    public boolean publishArticle(Article article) {
        return this.save(article);  // MyBatis-Plus 提供的 save 方法
    }

    //删除文章
    public boolean deleteArticle(Article article) {
        return this.removeById(article.getArticleId()); //
    }

    // 更新文章内容
    public boolean updateArticleContent(Article article) {
        return this.updateById(article);  // MyBatis-Plus 提供的 updateById 方法
    }
    public Article getArticleById(int article_id) {
        return this.lambdaQuery().eq(Article::getArticleId, article_id).one();
    }
    public List<Article> getArticleByTitle(String title) {
        return this.lambdaQuery().like(Article::getTitle, title).list();
    }
    // 通过userId查找文章
    public List<Article> getArticleByAuthorId(Integer authorId) {
        return this.lambdaQuery().eq(Article::getAuthorId, authorId).list();
    }
    //增加浏览次数
    public void incrementViews(Integer articleId) {
        LambdaUpdateWrapper<Article> updateWrapper = new LambdaUpdateWrapper<>();
        updateWrapper.eq(Article::getArticleId, articleId)
                .setSql("views = views + 1"); // 使用 setSql 实现自增
        this.update(updateWrapper);
    }
    //分页查询
    public Map<String, Object> getArticlesByPage(int pageNumber, int pageSize, String order, String sort, boolean reversePagination) {
        // 边界值处理：确保页码和每页大小有效
        if (pageSize <= 0) {
            pageSize = 10; // 默认每页大小
        }
        if (pageNumber <= 0) {
            pageNumber = 1; // 默认页码为第一页
        }

        // 查询总文章数
        int totalArticleCount = articleMapper.getTotalArticleCount();

        // 计算总页数
        int totalPages = (int) Math.ceil((double) totalArticleCount / pageSize);

        // 边界值处理：如果页码超过总页数，则设置为最后一页
        if (pageNumber > totalPages) {
            pageNumber = totalPages > 0 ? totalPages : 1; // 确保至少有一页
        }

        // 计算分页偏移量
        int offset;
        if (reversePagination) {
            // 从后往前分页，调整页码和偏移量
            int reversePageNumber = totalPages - pageNumber + 1;
            offset = (reversePageNumber - 1) * pageSize;
        } else {
            // 正常从前往后分页
            offset = (pageNumber - 1) * pageSize;
        }

        // 查询当前页的数据
        List<Article> articles = totalArticleCount > 0
                ? articleMapper.getArticles(pageSize, offset, order, sort)
                : List.of(); // 如果没有文章，返回空列表

        // 封装结果
        Map<String, Object> result = new HashMap<>();
        result.put("articles", articles);
        result.put("totalPages", totalPages);
        result.put("currentPage", pageNumber);
        result.put("pageSize", pageSize);
        result.put("reversePagination", reversePagination);

        return result;
    }

}

