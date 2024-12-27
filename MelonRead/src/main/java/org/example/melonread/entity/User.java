package org.example.melonread.entity;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName("user")
public class User {
    @TableId(value = "user_id",type = IdType.AUTO)
    private Integer userId;

    private String username;

    private String password;

    private String email;

    private String bio;

    private String avatar;

    private Boolean isAdmin;

    private LocalDateTime createdAt;

    private LocalDateTime lastLogin;
}

