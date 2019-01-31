package com.jae.board.data.mapper;

import java.util.List;

import com.jae.board.data.vo.Board;


public interface BoardMapper {
	public int boardInsert(Board board)throws Exception;
	public List<Board> boardList()throws Exception;
	public Board boardDetail(int id)throws Exception;
	public int boardUpdate(Board board)throws Exception;
	public int boardDelete(int id)throws Exception;
}
