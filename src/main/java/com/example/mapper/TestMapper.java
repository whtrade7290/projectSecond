package com.example.mapper;

import java.util.List;

import com.example.domain.TestVo;
import com.example.domain.boardVo;

public interface TestMapper {
	
	// Login
	String userCheck(String id);
	
	// Join
	void addMember(TestVo testVo);
	
	//idDupChk
	int getCountById(String id);

	List<boardVo> getBoard();


}
