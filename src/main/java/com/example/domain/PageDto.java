package com.example.domain;

import lombok.Data;

@Data
public class PageDto {
	
	private int count;
    private int pageCount;
    private int pageBlock;
    private int startPage;
    private int endPage;

}
