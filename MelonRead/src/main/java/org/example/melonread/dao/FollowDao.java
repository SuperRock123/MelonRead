package org.example.melonread.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.example.melonread.entity.Follow;

@Mapper
public interface FollowDao extends BaseMapper<Follow> {
    // 可以在这里添加自定义的数据库操作方法
}
