package org.example.melonread.entity;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Notification {

    private Integer notificationId;

    private String message;

    private Boolean isRead;

    private LocalDateTime createdAt;

    private User user;
}

