package org.example.melonread.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.example.melonread.dao.CommentDao;
import org.example.melonread.entity.Comment;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl extends ServiceImpl<CommentDao, Comment> {

    // 获取文章的所有评论
    public List<Comment> getCommentsByArticleId(Integer articleId) {
        QueryWrapper<Comment> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("article_id", articleId);
        return this.list(queryWrapper);
    }
    //通过comment_id查找
    public Comment getCommentById(Integer comment_id) {
        QueryWrapper<Comment> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("comment_id", comment_id);
        return this.getOne(queryWrapper);
    }
    // 发布评论
    public boolean postComment(Comment comment) {
        return this.save(comment);
    }

    // 删除评论
    public boolean deleteComment(Integer commentId) {
        return this.removeById(commentId);
    }
}