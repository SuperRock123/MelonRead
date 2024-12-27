package org.example.melonread.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.example.melonread.dao.ArticleLikeDao;
import org.example.melonread.entity.ArticleLike;
import org.springframework.stereotype.Service;

import java.sql.Wrapper;

@Service
public class ArticleLikeServiceImpl extends ServiceImpl<ArticleLikeDao, ArticleLike> {

    // 为文章点赞
    public boolean likeArticle(ArticleLike articleLike) {
        if(this.hasLikedArticle(articleLike)!=0){
            return false;
        }
        return this.save(articleLike);
    }
    //记录是否已经存在
    public Integer hasLikedArticle(ArticleLike articleLike) {
        QueryWrapper<ArticleLike> result= Wrappers.query();
        result.eq("article_id", articleLike.getArticleId());
        result.eq("user_id", articleLike.getUserId());
        ArticleLike articleLike1 = this.getOne(result);
        if(articleLike1==null){
            return 0;
        }
        return articleLike1.getLikeId();
    }
    // 取消文章点赞
    public boolean unlikeArticle(Integer likeId) {
        return this.removeById(likeId);
    }
    // 获取点赞总数
    public Integer getArticleLikesCount(ArticleLike articleLike) {
        QueryWrapper<ArticleLike> result= Wrappers.query();
        result.eq("article_id", articleLike.getArticleId());
//        Long count =this.count(result);
        return this.list(result).size();
    }
}