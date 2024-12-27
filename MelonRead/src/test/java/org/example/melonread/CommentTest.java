package org.example.melonread;

import org.example.melonread.dao.CommentDao;
import org.example.melonread.service.CommentServiceImpl;
import org.example.melonread.mapper.CommentMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class CommentTest {
    @Autowired
    CommentDao  commentDao;
    @Autowired
    CommentServiceImpl commentService;
    @Autowired
    private CommentServiceImpl commentServiceImpl;
    @Autowired
    private CommentMapper CommentMapper;
    @Test
    public void testGetAllComments(){
        System.out.println("----------------");
        System.out.println(commentServiceImpl.getCommentsByArticleId(1));
        System.out.println(commentServiceImpl.getCommentsByArticleId(2));
        System.out.println(commentServiceImpl.getCommentsByArticleId(4));
    }
    @Test
    public void testGetAllComments2(){
        System.out.println("----------------");
        System.out.println(CommentMapper.getCommentsByArticleId(1));
        System.out.println(CommentMapper.getCommentsByArticleId(2));
        System.out.println(CommentMapper.getCommentsByArticleId(4));
    }
}
