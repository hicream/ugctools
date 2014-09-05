package com.qunar.hotel.ugc.controller;

import com.qunar.hotel.ugc.entity.Comments;
import com.qunar.hotel.ugc.service.ICommentsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by vicky.han on 14-8-31.
 */

@Controller
@RequestMapping("/comments")
public class CommentsController {

    @Resource
    private ICommentsService commentsService;

    @RequestMapping(value = "/id",method = RequestMethod.GET)
    public String findById(ModelMap model,@RequestParam("id") Integer id){
        List<Comments> commentslist= commentsService.findById(id);
        model.put("comments",commentslist);
        return "comments";
    }
    @RequestMapping(value = "/customer",method = RequestMethod.GET)
    public String findByCustomer(ModelMap model,@RequestParam("customer") String customer){
        List<Comments> commentslist= commentsService.findByCustomer(customer);
        model.put("comments",commentslist);
        return "comments";
    }
    @RequestMapping()
    public String index(){
        return "comments";
    }
}
