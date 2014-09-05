package com.qunar.hotel.ugc.dao.impl;

import com.qunar.hotel.ugc.dao.ICommentsDao;
import com.qunar.hotel.ugc.entity.Comments;
import com.qunar.hotel.ugc.mapper.CommentsMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import java.util.List;

/**
 * Created by vicky.han on 14-8-18.
 */
public class CommentsDaoImpl extends JdbcDaoSupport implements ICommentsDao{
    @Override
    public List<Comments> findById(Integer id) {
        String sql = "select * from comments where id = "+ id;
        List<Comments> commentslist = getJdbcTemplate().query(sql, new CommentsMapper());
        return commentslist;
    }

    public List<Comments> findByCustomer(String customer) {
        String sql = "select * from comments where customer = '"+ customer +"' limit 10";
        List<Comments> commentslist = getJdbcTemplate().query(sql, new CommentsMapper());
        return commentslist;
    }
}
