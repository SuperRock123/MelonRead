package org.example.melonread.entity;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Follow {

    private Integer followId;

    private LocalDateTime followedAt;

    private User user;

    private Article article;
}

