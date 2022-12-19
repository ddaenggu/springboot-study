package com.sbs.SpringbootStudy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sbs.SpringbootStudy.domain.BoardDTO;
import com.sbs.SpringbootStudy.service.BoardService;
import com.sbs.SpringbootStudy.service.BoardServiceImpl;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardservice;
	
	// 게시판 목록 이동
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list(Model model) throws Exception {
		model.addAttribute("list", boardservice.list());
	}
	
	// 글쓰기 이동
	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public String regist() throws Exception {
		return "regist";
	}
	
	// 글 작성
	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public String write(BoardDTO boardDTO, RedirectAttributes rttr) throws Exception {
		boardservice.write(boardDTO);
		return "redirect:/list";
	}
	
	// 게시글 상세 조회 (RequestParam을 이용해 게시글 번호 가져옴)
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void read(@RequestParam("board_num") int board_num, Model model) throws Exception {
		model.addAttribute(boardservice.read(board_num));
	}

}
