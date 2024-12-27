package org.example.melonread.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName("article_like")
public class ArticleLike {
    @TableId(value = "like_id", type = IdType.AUTO)
    private Integer likeId;

    private LocalDateTime likedAt;
//    @TableField(exist = false)
//    private User user;
    @TableField(value = "user_id")
    private Integer userId;
    @TableField(value = "article_id")
    private Integer articleId;
//    @TableField(exist = false)
//    private Article article;
}