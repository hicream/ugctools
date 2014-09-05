package com.qunar.hotel.ugc.dao;

import com.qunar.hotel.ugc.entity.User;

/**
 * Created by vicky.han on 14-8-28.
 */
public interface IUserDao {
    public User findByUid(Integer uid);
}
