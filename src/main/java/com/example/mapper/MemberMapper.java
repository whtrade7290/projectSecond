package com.example.mapper;


import com.example.domain.MemberVo;
import com.example.domain.BoardVo;


public interface MemberMapper {
	
	// Login
	String userCheck(String member_id);
	
	// Join
	void addMember(MemberVo testVo);
	
	//idDupChk
	int getCountById(String id);

	

	void boardWrite(BoardVo boardVo);

	String userName(String member_id);

	


}
