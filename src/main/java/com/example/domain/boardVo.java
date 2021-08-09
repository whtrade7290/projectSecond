package com.example.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class boardVo {
	
	private int num;
	private String subject;
	private String writer;
	private Timestamp date;
	private int hit;

}
