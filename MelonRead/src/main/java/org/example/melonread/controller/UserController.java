package org.example.melonread.controller;

import org.example.melonread.entity.User;
import org.example.melonread.entity.UserInfo;
import org.example.melonread.service.UserServiceImpl;
import org.example.melonread.mapper.UserInfoMapper;
import org.example.melonread.util.ResponseResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/melon/user")
@CrossOrigin
public class UserController {

    @Autowired
    private UserServiceImpl userService;
    @Autowired
    private UserServiceImpl userServiceImpl;
    @Autowired
    private UserInfoMapper userInfoMapper;
    //通过id获取用户 已测试成功
    @GetMapping("/{userId}")
    public ResponseResult<User> getUser(@PathVariable Integer userId) {
        User user = userService.getById(userId);
        return new ResponseResult<User>().success(user);
    }
        //  测试成功
    @GetMapping("/username")
    public ResponseResult<List<User>> getUserByUserName(@RequestParam("username") String userName) {
        List<User> users=userServiceImpl.getUsersByUsername(userName);
        if(users.isEmpty()){
            return new ResponseResult<List<User>>().fail(users).setMsg("no such user");
        }
        return new ResponseResult<List<User>>().success(users).setMsg("find users");
    }

    //更新用户信息 测试成功
    @PostMapping("/update")
    public ResponseResult<String> updateUser(@RequestBody User user) {
        if(user.getUsername()==null || user.getPassword()==null||user.getUserId()==null){
            return new ResponseResult<String>().fail(null).setMsg("cannot cannot update user without username/password/userid");
        }
        boolean success = userService.updateUserProfile(user);
        return success ? new ResponseResult<String>().success("Update successful") :
                new ResponseResult<String>().fail("Update failed");
    }
    @DeleteMapping("/delete/{userId}")
    public ResponseResult<String> deleteUser(@PathVariable Integer userId) {
        boolean success = userService.deleteUserById(userId);
        return success ? new ResponseResult<String>().success("User deleted") :
                new ResponseResult<String>().fail("Deletion failed");
    }
    //获取所有用户 已测试成功
    @GetMapping("/all")
    public ResponseResult<List<User>> getAllUsers() {
        return new ResponseResult<List<User>>().success(userService.getAllUsers());
    }
    //登录 已经测试成功
    //post: String username, String password
    @PostMapping("/login")
    public ResponseResult<User> login(@RequestBody User user) {
        //先查询全表判断用户名
        User result=userService.getUserByUsername(user.getUsername());
        if(result==null){
            return new ResponseResult<User>().fail(null).setMsg("user does not exist");
        }
        else if(result.getPassword().equals(user.getPassword())){
            return new ResponseResult<User>().success(result).setMsg("login successful");
        }
        else{
            return new ResponseResult<User>().fail(null).setMsg("wrong password");
        }
    }
    //注册 已测试成功
    //post: string username, string password
    @PostMapping("/register")
    public ResponseResult<String> register(@RequestBody User user) {
        if(user.getUsername()==null || user.getPassword()==null){
            return new ResponseResult<String>().fail(null).setMsg("cannot register user without username/password");
        }
        if(userService.getUsersByUsername(user.getUsername()).isEmpty()){
            userService.addUser(user);
            return new ResponseResult<String>().success(null).setMsg("User registered successfully");
        }
        return new ResponseResult<String>().fail(null).setMsg("User already exists");
    }
    //测试成功
    @GetMapping("/userInfo")
    public ResponseResult<UserInfo> getUserInfo(@RequestParam("userId") Integer userId) {
        UserInfo userInfo= userInfoMapper.getUserInfoByUserId(userId);
        return new ResponseResult<UserInfo>().success(userInfo);
    }
}
