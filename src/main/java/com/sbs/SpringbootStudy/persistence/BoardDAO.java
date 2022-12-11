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

}
