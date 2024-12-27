package org.example.melonread.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.example.melonread.dao.UserDao;
import org.example.melonread.entity.User;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl extends ServiceImpl<UserDao, User> {

    // 获取用户详情
    //    getById()

    //按用户名查询信息
    public User getUserByUsername(String username) {
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("username", username);
        return this.getOne(queryWrapper);
    }
    public List<User> getUsersByUsername(String username) {
       return this.lambdaQuery().like(User::getUsername, username).list();
    }
    // 更新用户信息
    public boolean updateUserProfile(User user) {
        return this.updateById(user);  // MyBatis-Plus 提供的 updateById 方法
    }

    // 删除用户
    public boolean deleteUserById(Integer userId) {
        return this.removeById(userId);  // MyBatis-Plus 提供的 removeById 方法
    }
    //查询所有用户
    public List<User> getAllUsers(){
        return this.list();
    }
    //插入用户数据
    public boolean addUser(User user) {
        return this.save(user);
    }
}
