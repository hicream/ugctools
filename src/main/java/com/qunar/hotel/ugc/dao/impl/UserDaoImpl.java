package com.qunar.hotel.ugc.dao.impl;

import com.qunar.hotel.ugc.dao.IUserDao;
import com.qunar.hotel.ugc.entity.User;
import com.qunar.hotel.ugc.mapper.UserMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import java.util.List;

/**
 * Created by vicky.han on 14-8-28.
 */
public class UserDaoImpl extends JdbcDaoSupport implements IUserDao {
    @Override
    public User findByUid(Integer uid) {
        User user = new User();
        String sql = "select e.uid as uid ,e.username as username ,e.identity as identity, e.influence as influence, e.nickname as nickname, " +
                "p.points as points, p.frozen as frozen , s.score as score from user_extend e,user_points p,user_score s " +
                "where e.uid ="+uid+" and p.user_id= "+uid+" and s.uid="+uid+"";
        List<User> users = getJdbcTemplate().query(sql, new UserMapper());

        if (users!=null && !users.isEmpty())
            user = users.get(0);
        return user;
    }
}
