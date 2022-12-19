package com.sbs.SpringbootStudy.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sbs.SpringbootStudy.domain.BoardDTO;


@Repository
public class BoardDAO {
	
	@Autowired
	private SqlSession session;
	
	private static String namespace = "com.sbs.mapper.board-mapper";
	
	public List<BoardDTO> list() throws Exception {
		return session.selectList(namespace + ".list");
	}
	
	public void write(BoardDTO boardDTO) throws Exception {
		session.insert(namespace + ".write", boardDTO);
	}
	
	public void countup(int board_num) throws Exception {
		session.update(namespace + ".countup", board_num);
	}
	
	public BoardDTO read(int board_num) throws Exception {
		return session.selectOne(namespace + ".read", board_num);
	}

}
