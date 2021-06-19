package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.domain.TestVo;
import com.example.service.TestService;

import lombok.extern.java.Log;

@Controller
@Log
public class HomeController {
	
	@Autowired
	TestService testService;
	
	@RequestMapping("/")
	public String home() {
		log.info("home() 호출됨");
		return "home";
	}
	


}
