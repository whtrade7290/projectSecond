package com.example.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class BoardVo {
	
	private int board_num;
	private String board_id;
	private String board_title;
	private String board_content;
	private Timestamp date;

}
