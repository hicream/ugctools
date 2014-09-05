package com.qunar.hotel.ugc.service.impl;

import com.qunar.hotel.ugc.dao.ICommentsDao;
import com.qunar.hotel.ugc.entity.Comments;
import com.qunar.hotel.ugc.service.ICommentsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by vicky.han on 14-8-18.
 */

@Service("commentsService")
public class CommentsServiceImpl implements ICommentsService {
    @Resource
    private ICommentsDao commentsDao;

    @Override
    public List<Comments> findById(Integer id) {
        return commentsDao.findById(id);
    }

    @Override
    public List<Comments> findByCustomer(String customer) {
        return commentsDao.findByCustomer(customer);
    }
}
