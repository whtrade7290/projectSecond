package com.example.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class BoardVo {
	
	private int num;
	private String subject;
	private String writer;
	private String content;
	private Timestamp date;
	private int hit;

}
