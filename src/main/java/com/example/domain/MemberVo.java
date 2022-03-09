package com.example.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberVo {
	
	private int member_num;
	private String memberId;
	private String memberPw;
	private String memberName;
	private String memberEmail;
	private String memberAddress;

}
