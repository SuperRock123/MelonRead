package org.example.melonread.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
//用于存放用户的统计信息
public class UserInfo {
    @TableField("totalViews")
    private Integer totalViews;
    @TableField("totalLikes")

    private Integer totalLikes;
    @TableField("totalContents")

    private Integer totalContents;
}
