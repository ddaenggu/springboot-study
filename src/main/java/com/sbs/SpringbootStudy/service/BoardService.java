package com.sbs.SpringbootStudy.service;

import java.util.List;

import com.sbs.SpringbootStudy.domain.BoardDTO;

public interface BoardService {
	
	public List<BoardDTO>list() throws Exception;

}
