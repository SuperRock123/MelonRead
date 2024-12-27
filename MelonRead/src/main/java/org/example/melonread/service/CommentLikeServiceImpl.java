package org.example.melonread.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.example.melonread.dao.CommentLikeDao;
import org.example.melonread.entity.CommentLike;
import org.springframework.stereotype.Service;

@Service
public class CommentLikeServiceImpl extends ServiceImpl<CommentLikeDao, CommentLike> {

    // 点赞评论
    public boolean likeComment(CommentLike commentLike) {
        return this.save(commentLike);
    }

    // 取消点赞评论
    public boolean unlikeComment(Integer likeId) {
        return this.removeById(likeId);
    }
}
