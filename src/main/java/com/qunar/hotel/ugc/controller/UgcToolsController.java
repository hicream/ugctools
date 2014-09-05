package com.qunar.hotel.ugc.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by vicky.han on 14-8-15.
 */

@Controller
@RequestMapping("/ugctools")
public class UgcToolsController {

    @RequestMapping()
    public String index(){
        return "index";
    }
    @RequestMapping("/test")
    public String test(){
        return "test";
    }

    @RequestMapping("/ajax")
    @ResponseBody
    public String ajax(@RequestParam("id") Integer id){
        return "ajax: "+id;
    }
}
