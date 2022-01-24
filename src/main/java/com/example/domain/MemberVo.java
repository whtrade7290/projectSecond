package com.example.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberVo {
	
	private int member_num;
	private String member_id;
	private String member_pw;
	private String member_name;
	private String member_email;
	private String member_address;

}
