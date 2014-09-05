package com.qunar.hotel.ugc.mapper;

import com.qunar.hotel.ugc.entity.Comments;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by vicky.han on 14-8-18.
 */
public class CommentsMapper implements RowMapper<Comments>{

    public Comments mapRow(ResultSet rs,int rowNum) throws SQLException {
        Comments comments = new Comments();
        comments.setId(rs.getInt("id"));
        comments.setCustomer(rs.getString("customer"));
        comments.setStatus(rs.getInt("status"));
        comments.setCretime(rs.getDate("cretime"));
        comments.setType(rs.getInt("type"));
        comments.setRid(rs.getInt("rid"));
        comments.setPid(rs.getInt("pid"));
        comments.setExt1(rs.getInt("ext1"));
        comments.setExt2(rs.getString("ext2"));
        comments.setExt3(rs.getString("ext3"));
        comments.setExt4(rs.getString("ext4"));
        comments.setCityurl(rs.getString("cityurl"));
        comments.setNeedsync(rs.getInt("needsync"));
        comments.setObj_seq(rs.getString("obj_seq"));

        return comments;
    }


}
