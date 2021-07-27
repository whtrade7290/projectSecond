package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.service.TestService;

import lombok.extern.java.Log;

@Controller
@Log
public class HomeController {
	
	@Autowired
	TestService testService;
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String home() {
		log.info("home() 호출됨");
		return "home";
	}
	
//	@RequestMapping("/")
//	public String home() {
//		log.info("home() 호출됨");
//		return "home";
//	}
	


}
