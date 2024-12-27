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
@TableName("comment")
public class Comment {
    @TableId(value = "comment_id", type = IdType.AUTO)
    private Integer commentId;

    private String content;

    @TableField("created_at")
    private LocalDateTime createdAt;

    @TableField("parent_comment_id")
    private Integer parentCommentId;

    @TableField("user_id")
    private Integer userId;

    @TableField("article_id")
    private Integer articleId;

    @TableField(value = "user_avatar", exist = false)
    private String userAvatar;

    @TableField(value = "username", exist = false)
    private String username;
}
