package org.example.melonread.controller;

import org.example.melonread.entity.Comment;
import org.example.melonread.service.CommentServiceImpl;
import org.example.melonread.mapper.CommentMapper;
import org.example.melonread.util.ResponseResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/melon/comment")
@CrossOrigin
public class CommentController {

    @Autowired
    //单表查询
    private CommentServiceImpl commentServiceImpl;
    @Autowired
    //多表查询
    private CommentMapper CommentMapper;
    //测试通过
    @GetMapping("/article/{articleId}")
    public ResponseResult<List<Comment>> getCommentsByArticleId(@PathVariable Integer articleId) {
        List<Comment> comments = CommentMapper.getCommentsByArticleId(articleId);
        return new ResponseResult<List<Comment>>().success(comments);
    }
    //测试通过
    @PostMapping("/post")
    public ResponseResult<List<Comment>> postComment(@RequestBody Comment comment) {
        boolean success = commentServiceImpl.postComment(comment);
        if(success){
            List<Comment> comments = CommentMapper.getCommentsByArticleId(comment.getArticleId());
            return new ResponseResult<List<Comment>>().success(comments).setMsg("comment posted");
        }
        return new ResponseResult<List<Comment>>().setMsg("comment failed");
    }
    //测试通过
    @GetMapping("/delete/{commentId}")
    public ResponseResult<String> deleteComment(@PathVariable Integer commentId) {
        boolean success = commentServiceImpl.deleteComment(commentId);
        return success ? new ResponseResult<String>().success("Comment deleted") :
                new ResponseResult<String>().fail("Delete failed");
    }
}