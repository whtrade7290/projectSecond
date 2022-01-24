package com.example.mapper;

import java.util.List;

import com.example.domain.MemberVo;
import com.example.domain.BoardVo;


public interface TestMapper {
	
	// Login
	String userCheck(String member_id);
	
	// Join
	void addMember(MemberVo testVo);
	
	//idDupChk
	int getCountById(String id);

	List<BoardVo> getBoard();

	void boardWrite(BoardVo boardVo);

	String userName(String member_id);

	


}
