package org.example.melonread.util;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ResponseResult<T> {
    private int code;
    private String msg;
    private T data;
    // 成功响应方法
    public ResponseResult<T> success(T data) {
        this.data = data;
        this.code = 200;
        this.msg = "success";
        return this;
    }

    // 失败响应方法
    public ResponseResult<T> fail(T data) {
        this.data = data;
        this.code = 500;
        this.msg = "failed";
        return this;
    }

    // 链式方法
    public ResponseResult<T> setCode(int code) {
        this.code = code;
        return this;
    }

    public ResponseResult<T> setMsg(String msg) {
        this.msg = msg;
        return this;
    }

    public ResponseResult<T> setData(T data) {
        this.data = data;
        return this;
    }
}
