package com.nwsuaf.controller;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nwsuaf.service.BookService;
import com.nwsuaf.service.UserService;

@Controller
public class loginController {
	@Resource
	UserService userservice;
	@RequestMapping("user-exit")
    public String user_exit(HttpSession session){
        session.removeAttribute("reader");
    	session.removeAttribute("cert_id");
    	session.removeAttribute("session");
        return "login";
    }
    
    @RequestMapping("login-ajax")
    @ResponseBody
    public String loginajax(HttpServletRequest request, ModelMap model) {
    	HashMap<String,String> h = new HashMap<String, String>();
    	if(request.getParameter("usr_passwd").equals(userservice.findPasswdByID(request.getParameter("usr_id")))) {
    		h.put("loginflag", "1");
    		request.getSession().setAttribute("session",request.getParameter("usr_id"));
    	}
    	else {
    		h.put("loginflag", "0");
    	}
    	JSONObject json = new JSONObject(h);
    	
    	return json.toString();
    }
}
