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
	
	public List<BoardVo> getBoard(int startRow, int endRow) {	
		
		log.info("startRow = " + startRow);
		log.info("endRow = " + endRow);
		
		List<BoardVo> boardList = boardMapper.getBoard(startRow, endRow);
		
	      return boardList;
	   }

	public int getCountBoard() {
	
		int count = boardMapper.getCountBoard();
		
		return count;
	}

	public void addBoard(BoardVo boardVo) {
		
		boardMapper.addBoard(boardVo);
		
	}

	public BoardVo getBoardByNum(int boardNum) {
		BoardVo boardVo = boardMapper.getBoardByNum(boardNum);
		return boardVo;
	}
	

	

}
