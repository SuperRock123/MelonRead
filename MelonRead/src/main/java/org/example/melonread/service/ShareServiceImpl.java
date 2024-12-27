package org.example.melonread.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.example.melonread.dao.ShareDao;
import org.example.melonread.entity.Share;
import org.springframework.stereotype.Service;

@Service
public class ShareServiceImpl extends ServiceImpl<ShareDao, Share> {

    // 记录分享信息
    public boolean shareArticle(Share share) {
        return this.save(share);
    }
}