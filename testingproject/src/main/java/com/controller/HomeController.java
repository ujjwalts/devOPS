package com.controller;

import javax.naming.Binding;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.daoImpl.UserDaoImpl;
import com.model.User;

@Controller
public class HomeController 
{
	
	@Autowired
	UserDaoImpl userDaoImpl;

	

	
	@RequestMapping("/")
	public String homepage()
	{
		return "index";
	}
	
	@RequestMapping("/index")
	public String index()
	{
		return "index";
	}
	
	@RequestMapping("/SignIn")
	public String login()
	{
		return "SignIn";
	}
	@RequestMapping("/SignUp")
	public String register(Model m)
	{
		m.addAttribute("user", new User());
		
		return "SignUp";
	}
	
	


@RequestMapping(value="/saveregister", method = RequestMethod.POST)
public ModelAndView saveRegister(@ModelAttribute("user") User user,BindingResult result)
{
	ModelAndView mav = new ModelAndView();
	if(result.hasErrors())
	{
		mav.setViewName("register");
	}
	else
	{
		user.setRole("ROLE_USER");//user and admin
		userDaoImpl.insertUser(user);
		mav.setViewName("redirect:/SignIn");//
		
	}
	return mav;
	
	
}
}


