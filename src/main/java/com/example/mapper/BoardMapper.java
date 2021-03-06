package com.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.example.domain.BoardVo;


public interface BoardMapper {
	
	List<BoardVo> getBoard(@Param("startRow") int startRow, @Param("endRow") int endRow);

	int getCountBoard();

	int addBoard(BoardVo boardVo);

	BoardVo getBoardByNum(int boardNum);

	void updateBoard(BoardVo boardVo);
	
	int getNextNum();
	
	void updateReadCount(int boardNum);

}
