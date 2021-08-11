package com.example.mapper;

import java.util.List;

import com.example.domain.TestVo;
import com.example.domain.BoardVo;

public interface TestMapper {
	
	// Login
	String userCheck(String id);
	
	// Join
	void addMember(TestVo testVo);
	
	//idDupChk
	int getCountById(String id);

	List<BoardVo> getBoard();

	void boardWrite(BoardVo boardVo);


}
