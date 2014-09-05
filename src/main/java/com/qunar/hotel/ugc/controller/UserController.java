package com.qunar.hotel.ugc.controller;

import com.qunar.hotel.ugc.entity.User;
import com.qunar.hotel.ugc.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

/**
 * Created by vicky.han on 14-8-31.
 */

@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private IUserService userService;

    @RequestMapping(value = "/uid",method = RequestMethod.GET)
    public String findByUid(ModelMap model,@RequestParam("uid") Integer uid){
        User user= userService.findByUid(uid);
        model.put("user",user);
        return "user";
    }
//
//    @RequestMapping("/usertype")
//    public String usertype(){
//        return "usertype";
//    }
    @RequestMapping()
    public String index(){
        return "user";
    }
}
