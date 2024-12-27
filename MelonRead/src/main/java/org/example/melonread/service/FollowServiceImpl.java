package org.example.melonread.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.example.melonread.dao.FollowDao;
import org.example.melonread.entity.Follow;
import org.springframework.stereotype.Service;

@Service
public class FollowServiceImpl extends ServiceImpl<FollowDao, Follow> {

    // 关注文章
    public boolean followArticle(Follow follow) {
        return this.save(follow);
    }

    // 取消关注文章
    public boolean unfollowArticle(Integer followId) {
        return this.removeById(followId);
    }
}
