package com.example.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;




import lombok.extern.java.Log;

@Controller
@Log
@RequestMapping("/reservation/*")
public class ReservationController {
	
	
	@GetMapping("/calendar")
	public void Calendar() {
		log.info("Calendar() 호출됨");
	}
	


}
