package org.example.melonread.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.example.melonread.entity.Article;

import java.util.List;

@Mapper
public interface ArticleMapper {
    // 分页查询文章
    @Select("<script>" +
            "SELECT article_id, title, content, author_id, created_at, updated_at, views " +
            "FROM article " +
            "<choose>" +
            "   <when test='order != null and sort != null'>" +
            "       ORDER BY ${order} ${sort} " +
            "   </when>" +
            "   <otherwise>" +
            "       ORDER BY created_at DESC " +  // 默认排序
            "   </otherwise>" +
            "</choose>" +
            "LIMIT #{pageSize} OFFSET #{offset}" +
            "</script>")
    List<Article> getArticles(@Param("pageSize") int pageSize, @Param("offset") int offset,@Param("order") String order,@Param("sort") String sort);

    // 获取文章总数
    @Select("SELECT COUNT(*) FROM article")
    int getTotalArticleCount();
}
