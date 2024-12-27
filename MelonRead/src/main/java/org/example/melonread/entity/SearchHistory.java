package org.example.melonread.entity;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SearchHistory {

    private Integer searchId;

    private String keyword;

    private LocalDateTime searchedAt;

    private User user;
}

