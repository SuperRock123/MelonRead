package org.example.melonread.entity;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CommentLike {

    private Integer likeId;

    private LocalDateTime likedAt;

    private User user;

    private Comment comment;
}

