package com.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.model.Student;
import com.app.service.HomeService;

@Controller
public class HomeController {
	
	@Autowired
	HomeService hs;
	
	@RequestMapping("/")
	public String homepage()
	{
		return "homepage";
	}
	
	@RequestMapping("/signup")
	public String pre()
	{
		return "signUp";
	}
	
	@RequestMapping("/sign")
	public String saveData(@ModelAttribute Student s)
	{
		hs.saveData(s);
		return "homepage";
	}
	
	@RequestMapping("/stulog")
	public String stulog()
	{
		
		return "login";
	}
	
	@RequestMapping("/log")
	public String showData(@RequestParam ("username")String us,@RequestParam ("password")String pw,Model m)
	{
		
		Iterable<Student> s=hs.singleStudent(us, pw);
		if(s!=null)
		{
		m.addAttribute("list", s);
		return "mystatus";
		}
		else
		{
			return "login";
		}
	}
	
	@RequestMapping("/home")
	public String addash()
	{
		
		return "homepage";
	}
	
	@RequestMapping("/madmax")
	public String mad()
	{
		
		return "Madmax";
	}
	
	@RequestMapping("/admlog")
	public String adminlog()
	{
		
		return "admin";
	}
	
	@RequestMapping("/retrieve")
	public String retrieve(Model m)
	{
		
		Iterable list=hs.displayAll();
		
		m.addAttribute("list", list);
		return "studetails";
		
	}
	
	@RequestMapping("/adm")
	public String adm(@RequestParam ("admin")String un,@RequestParam("password") String pw)
	{
		if(un.equals("ADMIN")&& pw.equals("ADMIN"))
		{
		return "admindashboard";
		}
		else
		{
			return "admin";
		}
	}
	
	@RequestMapping("/show")
	public String showi(@RequestParam("id") int id,Model m)
	{
		Student s=hs.showCard(id);
		m.addAttribute("stu", s);
		return "icard";
	}
	@RequestMapping("/back")
	public String back()
	{
		
		return "admindashboard";
	}
	
	@RequestMapping("/front")
	public String mystatus()
	{
		return "homepage";
	
	}
	
	@RequestMapping("/delete")
	public String deleteData(@ModelAttribute Student s,Model m)
	{
		
		hs.deleteId(s);
		Iterable list=hs.displayAll();
		
		m.addAttribute("list", list);
		return "studetails";
		
	}
	
	@RequestMapping("/edit")
	public String edit(@RequestParam("id") int id,Model m)
	{
		Student s=hs.showCard(id);
		m.addAttribute("list", s);
		return "edit";
	}
	@RequestMapping("/here")
	public String here()
	{
		return "login";
	
	}
	
	@RequestMapping("/update")
	public String updateId(@ModelAttribute Student s,Model m)
	{
		hs.saveData(s);
		Iterable list=hs.displayAll();
		m.addAttribute("list", list);
		return "studetails";
	
	}
	
	@RequestMapping("/help")
	public String helpdesk()
	{
		return "help";
	}
	
	@RequestMapping("/page")
	public String funny()
	{
		return "fun";
	}
	

}
