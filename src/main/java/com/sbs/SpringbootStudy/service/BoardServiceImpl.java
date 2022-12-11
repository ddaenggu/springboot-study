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
}