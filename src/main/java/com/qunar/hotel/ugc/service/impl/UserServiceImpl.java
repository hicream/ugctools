package com.qunar.hotel.ugc.service.impl;

import com.qunar.hotel.ugc.dao.IUserDao;
import com.qunar.hotel.ugc.entity.User;
import com.qunar.hotel.ugc.service.IUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by vicky.han on 14-8-29.
 */
@Service("userService")
public class UserServiceImpl implements IUserService{
    @Resource
    private IUserDao userDao;

    @Override
    public User findByUid(Integer uid) {
        return userDao.findByUid(uid);
    }
}
