package org.example.melonread.controller;

import org.example.melonread.entity.CommentLike;
import org.example.melonread.service.CommentLikeServiceImpl;
import org.example.melonread.util.ResponseResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/melon/comment-like")
@CrossOrigin
public class CommentLikeController {

    @Autowired
    private CommentLikeServiceImpl commentLikeService;

    @PostMapping("/like")
    public ResponseResult<String> likeComment(@RequestBody CommentLike commentLike) {
        boolean success = commentLikeService.likeComment(commentLike);
        return success ? new ResponseResult<String>().success("Comment liked") : new ResponseResult<String>().fail("Like failed");
    }

    @DeleteMapping("/unlike/{likeId}")
    public ResponseResult<String> unlikeComment(@PathVariable Integer likeId) {
        boolean success = commentLikeService.unlikeComment(likeId);
        return success ? new ResponseResult<String>().success("Comment unliked") : new ResponseResult<String>().fail("Unlike failed");
    }
}
