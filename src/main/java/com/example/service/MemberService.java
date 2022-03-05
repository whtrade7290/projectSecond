package com.example.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.domain.MemberVo;
import com.example.domain.BoardVo;

import com.example.mapper.MemberMapper;

import lombok.extern.java.Log;

@Service
@Transactional
@Log
public class MemberService {
	
	@Autowired
	private MemberMapper testMapper;
	
	public int userCheck(String member_id, String member_pw) {
		
		int check= -1;
		
		 String passwd = testMapper.userCheck(member_id);
		 
		 log.info("svs check == " + passwd);
		
		if(passwd != null) {
			if(member_pw.equals(passwd)) {
				check = 1;
			}else {
				check = 0;
			}
			
		}else {
			check = -1;
		}
		
		return check;
	}
	
	// Join
	public void addMember(MemberVo testVo) {
		testMapper.addMember(testVo);
	}
	
	//IdDupChk
	public int getCountById(String id) {
		int count = testMapper.getCountById(id);
		return count;
	}
	
//	// board
//	public List<BoardVo> getBoard() {
//		return testMapper.getBoard();
//		
//	}

	public void boardWrite(BoardVo boardVo) {
		testMapper.boardWrite(boardVo);
	}

	public String userName(String member_id) {
		testMapper.userName(member_id);
		return member_id;
	}
	

	

}
