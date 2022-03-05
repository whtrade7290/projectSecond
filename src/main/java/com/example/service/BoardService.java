package com.example.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.example.domain.BoardVo;

import com.example.mapper.BoardMapper;

import lombok.extern.java.Log;




@Service
@Transactional
@Log
public class BoardService {
	
	@Autowired
	private BoardMapper boardMapper;
	
	public List<BoardVo> getBoard() {		
	      return boardMapper.getBoard();
	   }
	

	

}
