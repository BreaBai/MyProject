package com.hpe.my.module.controller;


import com.hpe.my.model.entiy.UserInfo;
import com.hpe.my.module.dao.UserInfoDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by BaiRu on 2016/12/27.
 */
@Controller
@RequestMapping("/index")
public class UserController{

    @Autowired
    private UserInfoDao userInfoDao;

    @RequestMapping("")
    public String index(Model model) {
//        UserInfo userInfo=userInfoDao.queryInfo();
//        model.addAttribute("userInfo",userInfo);
        return "/login";
    }
    @RequestMapping("loginSubmit")
    public @ResponseBody Map<String,Object> loginSubmit(Model model,String name,String passWord) {
        Map<String,Object> map=new HashMap<String,Object>();

        if(isUser(name,passWord)){
            model.addAttribute("isSuccess","true");
            map.put("success",true);
            return map;
        }else{
            map.put("success",false);
            return map;
        }
    }


//    @RequestMapping("loginSubmit")
//    public String loginSubmit(Model model,String name,String passWord) {
//
//        if(isUser(name,passWord)){
//            model.addAttribute("isSuccess","true");
//            return "/loginSuccess";
//        }else{
//            return "/error";
//        }
//    }

    private boolean isUser(String name,String passWord){
        List<UserInfo> userInfo=userInfoDao.findAllUser();
        for (UserInfo item:userInfo) {

            if(item.getUserName().equals(name)&&item.getUserPassword().equals(passWord)){
                return true;
            }
        }
        return false;
    }
}
