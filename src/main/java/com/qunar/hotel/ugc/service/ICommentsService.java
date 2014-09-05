package com.qunar.hotel.ugc.service;

import com.qunar.hotel.ugc.entity.Comments;

import java.util.List;

/**
 * Created by vicky.han on 14-8-18.
 */
public interface ICommentsService {
    public List<Comments> findById(Integer id);
    public List<Comments> findByCustomer(String customer);
}
