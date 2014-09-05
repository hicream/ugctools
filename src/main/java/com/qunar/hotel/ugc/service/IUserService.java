package com.qunar.hotel.ugc.service;

import com.qunar.hotel.ugc.entity.User;

/**
 * Created by vicky.han on 14-8-28.
 */
public interface IUserService {
    public User findByUid(Integer uid);
}
