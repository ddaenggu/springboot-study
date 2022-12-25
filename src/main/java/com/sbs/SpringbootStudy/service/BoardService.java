package com.sbs.SpringbootStudy.service;

import java.util.List;

import com.sbs.SpringbootStudy.domain.BoardDTO;

public interface BoardService {
	
	public List<BoardDTO>list() throws Exception;
	public void write(BoardDTO boardDTO) throws Exception;
	public BoardDTO read(int board_num) throws Exception;
	public BoardDTO read2(int board_num) throws Exception;
	public String checkpassword(int board_num) throws Exception;
	public void delete(int board_num) throws Exception;
	public void modify(BoardDTO boardDTO) throws Exception;
	
}
