package org.example.melonread.entity;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName("article")
public class Article {
    @TableId(value = "article_id", type = IdType.AUTO)
    private Integer articleId;

    private String title;

    private String content;

    private Integer views;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;
    @TableField(exist = false)
     private User author;
    @TableField("author_id")
    private Integer authorId;
}


