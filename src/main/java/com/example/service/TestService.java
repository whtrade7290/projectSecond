package com.example.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.domain.TestVo;
import com.example.mapper.TestMapper;

@Service
@Transactional
public class TestService {
	
	@Autowired
	private TestMapper testMapper;
	
	public int userCheck(String id, String passwd) {
		int check = -1;
		
		String dbpasswd = testMapper.userCheck(id);
		
		if(dbpasswd != null) {
			if(passwd.equals(dbpasswd)) {
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
	public void addMember(TestVo testVo) {
		testMapper.addMember(testVo);
	}
	
	//IdDupChk
	public int getCountById(String id) {
		int count = testMapper.getCountById(id);
		return count;
	}

}
