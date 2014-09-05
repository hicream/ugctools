package com.qunar.hotel.ugc.mapper;

import com.qunar.hotel.ugc.entity.User;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by vicky.han on 14-8-28.
 */
public class UserMapper implements RowMapper<User>{

    public User mapRow(ResultSet rs,int rowNum) throws SQLException {
        User user =new User();
        user.setUid(rs.getInt("uid"));
        user.setUsername(rs.getString("username"));
        user.setIdentity(rs.getInt("identity"));
        user.setInfluence(rs.getInt("influence"));
        user.setNickname(rs.getString("nickname"));
        user.setPoints(rs.getInt("points"));
        user.setFrozen(rs.getInt("frozen"));
        user.setScore(rs.getInt("score"));
        return user;
    }
}
