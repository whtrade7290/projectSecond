package com.example.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



import lombok.extern.java.Log;

@Controller
@Log
@RequestMapping("/home/*")
public class HomeController {
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		log.info("index() 호출됨");
		return "index";
	}
	


}
