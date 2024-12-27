package org.example.melonread.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.example.melonread.entity.ArticleLike;

@Mapper
public interface ArticleLikeDao extends BaseMapper<ArticleLike> {
    // 可以在这里添加自定义的数据库操作方法
}
