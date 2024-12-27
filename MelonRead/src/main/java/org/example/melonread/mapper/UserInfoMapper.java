package org.example.melonread.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.example.melonread.entity.UserInfo;

@Mapper
public interface UserInfoMapper extends BaseMapper<UserInfo> {
    @Select("SELECT \n" +
            "    SUM(IFNULL(a.views, 0)) AS 'totalViews', \n" +
            "    COUNT(a.article_id) AS 'totalContents', \n" +
            "    COUNT(l.like_id) AS 'totalLikes'\n" +
            "FROM \n" +
            "    User u\n" +
            "LEFT JOIN \n" +
            "    Article a ON u.user_id = a.author_id\n" +
            "LEFT JOIN \n" +
            "    Article_Like l ON a.article_id = l.article_id\n" +
            "WHERE \n" +
            "    u.user_id = #{UserId}\n" +
            "GROUP BY \n" +
            "    u.user_id;\n")
    public UserInfo getUserInfoByUserId(Integer UserId);
}
