package org.example.melonread.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.example.melonread.dao.NotificationDao;
import org.example.melonread.entity.Notification;
import org.springframework.stereotype.Service;

@Service
public class NotificationServiceImpl extends ServiceImpl<NotificationDao, Notification> {

//    // 获取用户的通知
//    public List<Notification> getUserNotifications(Integer userId) {
//        return this.lambdaQuery().eq(Notification::getUserId, userId).orderByDesc(Notification::getCreatedAt).list();
//    }

    // 标记通知为已读
    public boolean markNotificationAsRead(Integer notificationId) {
        Notification notification = this.getById(notificationId);
        if (notification != null) {
            notification.setIsRead(true);
            return this.updateById(notification);
        }
        return false;
    }
}