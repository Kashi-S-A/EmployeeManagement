package com.ty.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ty.entity.Employee;
import com.ty.service.EmployeeService;

import jakarta.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestBody;



@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeService;

	@GetMapping("/")
	public ModelAndView regPage() {
		ModelAndView mv=new ModelAndView("register");
		mv.addObject("emp", new Employee());
		return mv;
	}
	
	@GetMapping("/login")
	public ModelAndView login() {
		ModelAndView mv=new ModelAndView("login");
		return mv;
	}

	@PostMapping("/register")
	public ModelAndView register(Employee employee) {
		String register = employeeService.register(employee);
		ModelAndView mv=new ModelAndView("login");
		mv.addObject("msg", register);
		return mv;
	}
	
	@PostMapping("/login")
	public ModelAndView postMethodName(HttpServletRequest request) {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		boolean result = employeeService.login(email,password);
		System.out.println(result);
		ModelAndView mv=new ModelAndView();
		if (result) {
			mv.setViewName("home");
			mv.addObject("msg", "Welcome to App");
			return mv;
		} else {
			mv.setViewName("login");
			mv.addObject("msg", "Invalid credentials");
			return mv;
		}
	}
	
	
}
