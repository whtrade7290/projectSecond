package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.BoardVo;
import com.example.service.BoardService;

import lombok.extern.java.Log;

@Controller
@Log
@RequestMapping("/community/*")
public class CommunityController {
	
	@Autowired
	BoardService boardService;
	
	@GetMapping("/board")
	public String Community(Model model) {
	log.info("Community() 호출됨");
	
	List<BoardVo>boardList = null;
	
	boardList = boardService.getBoard();
	
	log.info("boardList = " + boardList);
	
	
	model.addAttribute("boardList", boardList);
	
	
	
	return "community/board";
	}

}
