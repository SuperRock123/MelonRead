# create database MelonReadDB;
-- 用户表
use melonreaddb;
CREATE TABLE User (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_login TIMESTAMP,
    bio TEXT,
    avatar VARCHAR(255),
    is_admin BOOLEAN DEFAULT FALSE
);

-- 文章表
CREATE TABLE Article (
    article_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    author_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    views INT DEFAULT 0,
    FOREIGN KEY (author_id) REFERENCES User(user_id) ON DELETE SET NULL
);

-- 文章点赞表
CREATE TABLE Article_Like (
    like_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    article_id INT,
    liked_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE CASCADE,
    FOREIGN KEY (article_id) REFERENCES Article(article_id) ON DELETE CASCADE
);

-- 收藏表
CREATE TABLE Favorite (
    favorite_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    article_id INT,
    favorited_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE CASCADE,
    FOREIGN KEY (article_id) REFERENCES Article(article_id) ON DELETE CASCADE
);

-- 评论表
CREATE TABLE Comment (
    comment_id INT PRIMARY KEY AUTO_INCREMENT,
    article_id INT,
    user_id INT,
    content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    parent_comment_id INT,
    FOREIGN KEY (article_id) REFERENCES Article(article_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE CASCADE,
    FOREIGN KEY (parent_comment_id) REFERENCES Comment(comment_id) ON DELETE CASCADE
);

-- 评论点赞表
CREATE TABLE Comment_Like (
    like_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    comment_id INT,
    liked_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE CASCADE,
    FOREIGN KEY (comment_id) REFERENCES Comment(comment_id) ON DELETE CASCADE
);

-- 搜索历史记录表
CREATE TABLE Search_History (
    search_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    keyword VARCHAR(255) NOT NULL,
    searched_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE CASCADE
);

-- 关注表
CREATE TABLE Follow (
    follow_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    article_id INT,
    followed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE CASCADE,
    FOREIGN KEY (article_id) REFERENCES Article(article_id) ON DELETE CASCADE
);

-- 分享表
CREATE TABLE Share (
    share_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    article_id INT,
    shared_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    platform VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE CASCADE,
    FOREIGN KEY (article_id) REFERENCES Article(article_id) ON DELETE CASCADE
);

-- 通知表
CREATE TABLE Notification (
    notification_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    message TEXT NOT NULL,
    is_read BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE CASCADE
);
