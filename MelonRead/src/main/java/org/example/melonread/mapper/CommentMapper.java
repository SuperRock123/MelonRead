package org.example.melonread.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.example.melonread.entity.Comment;

import java.util.List;
//mybatis接口 多表查询
@Mapper
public interface CommentMapper extends BaseMapper<Comment> {
    @Select("""
    SELECT
        c.comment_id, 
        c.content, 
        c.created_at, 
        c.parent_comment_id,
        c.user_id, 
        c.article_id,
        u.username AS username,
        u.avatar AS user_avatar
    FROM comment c
    LEFT JOIN user u ON c.user_id = u.user_id
    WHERE c.article_id = #{articleId}
""")
    List<Comment> getCommentsByArticleId(@Param("articleId") Integer articleId);
}
