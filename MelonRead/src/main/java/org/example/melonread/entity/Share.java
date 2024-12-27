package org.example.melonread.entity;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Share {

    private Integer shareId;

    private LocalDateTime sharedAt;

    private String platform;

    private User user;

    private Article article;
}

