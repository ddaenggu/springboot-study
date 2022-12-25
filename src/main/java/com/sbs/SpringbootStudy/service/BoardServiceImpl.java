package com.sbs.SpringbootStudy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sbs.SpringbootStudy.domain.BoardDTO;
import com.sbs.SpringbootStudy.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO boardDAO;

	@Override
	public List<BoardDTO> list() throws Exception {
		return boardDAO.list();
	}

	@Override
	public void write(BoardDTO boardDTO) throws Exception {
		boardDAO.write(boardDTO);
	}

	@Override
	public BoardDTO read(int board_num) throws Exception {
		boardDAO.countup(board_num);
		return boardDAO.read(board_num);
	}

	@Override
	public String checkpassword(int board_num) throws Exception {
		return boardDAO.checkpassword(board_num);
	}

	@Override
	public void delete(int board_num) throws Exception {
		boardDAO.delete(board_num);
	}
}
