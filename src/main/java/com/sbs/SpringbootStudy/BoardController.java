package com.sbs.SpringbootStudy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sbs.SpringbootStudy.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardservice;
	
	// 게시판 목록 이동
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	public void list(Model model) throws Exception {
		model.addAttribute("list", boardservice.list());
	}

}
