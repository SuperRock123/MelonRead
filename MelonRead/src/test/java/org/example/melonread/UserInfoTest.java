package org.example.melonread;

import org.example.melonread.mapper.UserInfoMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class UserInfoTest {
    @Autowired
    private UserInfoMapper userInfoMapper;
    @Test
    void testUserInfo(){
        System.out.println("------------");
        System.out.println(userInfoMapper.getUserInfoByUserId(66));

    }
}
