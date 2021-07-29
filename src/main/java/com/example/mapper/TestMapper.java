package com.example.mapper;

import com.example.domain.TestVo;

public interface TestMapper {
	
	// Login
	String userCheck(String id);
	
	// Join
	void addMember(TestVo testVo);
	
	//idDupChk
	int getCountById(String id);


}
