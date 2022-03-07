package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.domain.BoardVo;
import com.example.domain.PageDto;
import com.example.service.BoardService;

import lombok.extern.java.Log;

@Controller
@Log
@RequestMapping("/community/*")
public class CommunityController {
	
	@Autowired
	BoardService boardService;
	
	@GetMapping("/board")
	public String Community(@RequestParam(defaultValue = "1") int pageNum,Model model) {
	log.info("Community() 호출됨");
	
	// 글 갯수 가져오기
	int count = boardService.getCountBoard();
	log.info("count == " + count);
	
	
	// 한페이지당 보여줄 글 갯수 설정
	int pageSize = 10;
	log.info("pageNum == " + pageNum);
	
	// 사용자가 요청하는 페이지 번호 파라미터 값 가져오기
	int startRow = (pageNum - 1) * pageSize;
	int endRow = startRow + pageSize;
	
	// 글 목록 가져오기
	List<BoardVo>boardList = null;
	if(count > 0) {
		boardList = boardService.getBoard(startRow, endRow);
		log.info("boardList = " + boardList);
	}
	
	PageDto pageDto = new PageDto();
	
	if(count > 0) {
		
		// 총 필요한 페이지 갯수 구하기
		// 글50개. 한화면에보여줄글 10개 => 50/10 = 5 
		// 글55개. 한화면에보여줄글 10개 => 55/10 = 5 + 1페이지(나머지존재) => 6
		int pageCount = (count / pageSize) + (count % pageSize == 0 ? 0: 1);
		log.info("pageCount == " + pageCount);
		
		// 한 화면에 보여줄 페이지 갯수 설정
		int pageBlock = 5;
		
		// 화면에 보여줄 시작페이지번호 구하기
		// 1~5          6~10          11~15          16~20       ...
		// 1~5 => 1     6~10 => 6     11~15 => 11    16~20 => 16
		int startPage = ((pageNum / pageBlock) - (pageNum % pageBlock == 0 ? 1 : 0)) * pageBlock + 1;
		
		// 화면에 보여줄 끝 페이지 번호 구하기
		int endPage = startPage + pageBlock -1;
		if(endPage > pageCount) {
			endPage = pageCount;
		}
		
		// 뷰에서 필요한 데이터를 pageDto에 저장
		pageDto.setCount(count);
		pageDto.setPageCount(pageCount);
		pageDto.setPageBlock(pageBlock);
		pageDto.setStartPage(startPage);
		pageDto.setEndPage(endPage);
		
	} // if
	
	log.info("pageDto == " + pageDto);
	
	
	model.addAttribute("pageDto", pageDto);
	model.addAttribute("boardList", boardList);
	
	
	
	return "community/board";
	}

}
