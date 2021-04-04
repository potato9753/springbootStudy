package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.dto.Board;
import com.example.service.DBService;

@Controller
public class BoardController {

	@Autowired
	DBService service;
	
	//1.목록보기
	@RequestMapping("/list")
	public ModelAndView list() {
		System.out.println("<<<<<<<<<<<<<");
		List<Board> list = service.boardList();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("boardList", list);  // Model
		mav.setViewName("list");			// View
		return mav;
	}
	
	//2. 글쓰기 화면
	@GetMapping(value="/write")
	public String writeUI() {
		return "writeForm";
	}
	
	//3. 글쓰기
	@PostMapping("/write")
	public String write(Board board) {
		int num = service.boardWrite(board);
		return "redirect:list";
	}
	
	//4.글자세히 보기
	@RequestMapping("/retrieve")
	@ModelAttribute("xyz") // reqeust.setAttribute("xyz", board)
	public Board retrieve(@RequestParam 
			int num) {
		Board board = service.selectByNum(num);
		return board;
	}
	
	//5.글 수정하기
	@PostMapping("/update")
	public String update(Board board) {
		int num = service.boardUpdate(board);
		return "redirect:list";
	}
	
	//6.글 삭제하기
	@GetMapping(value="/delete")
	public String delete(@RequestParam int num) {
		int num2 = service.boardDelete(num);
		return "redirect:list";
	}
	
}




