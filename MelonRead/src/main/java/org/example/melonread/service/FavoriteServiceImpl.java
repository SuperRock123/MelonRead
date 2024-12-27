package org.example.melonread.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.example.melonread.dao.FavoriteDao;
import org.example.melonread.entity.Favorite;
import org.springframework.stereotype.Service;

@Service
public class FavoriteServiceImpl extends ServiceImpl<FavoriteDao, Favorite> {

    // 收藏文章
    public boolean favoriteArticle(Favorite favorite) {
        return this.save(favorite);
    }

    // 取消收藏
    public boolean unfavoriteArticle(Integer favoriteId) {
        return this.removeById(favoriteId);
    }
}