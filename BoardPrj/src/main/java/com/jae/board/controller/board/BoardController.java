package com.jae.board.controller.board;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jae.board.data.vo.Board;
import com.jae.board.service.board.BoardService;

@Controller
public class BoardController {
	
	@Resource
	BoardService boardService;
	
	@RequestMapping(value="/insertForm")
	public String insertDetail()throws Exception{
		return "boardWrite";
	}
	
	@RequestMapping(value="/insert")
	public String insert(HttpServletRequest request)throws Exception{
		Board board = Board.builder()
				.writer(request.getParameter("writer"))
				.title(request.getParameter("title"))
				.content(request.getParameter("content"))
				.build();
		
		int result = boardService.boardInsert(board);
		
		return "redirect:/";
	}
	
	@RequestMapping(value="/")
	public String board(Model model)throws Exception{
		List<Board> board = boardService.boardList();
		
		model.addAttribute("board",board);
		
		return "boardList";
	}
	
	@RequestMapping(value="/board/{id}")
	public String boardDetail(@PathVariable("id")int id, Model model)throws Exception{
		Board board = boardService.boardDetail(id);
		
		model.addAttribute("board",board);
		
		return "boardDetail";
	}
	
	@RequestMapping(value="/update/{id}")
	public String updateDetail(@PathVariable("id")int id, Model model)throws Exception{
		Board board = boardService.boardDetail(id);
		
		model.addAttribute("board",board);
		
		return "boardUpdate";
	}
	
	@RequestMapping(value="/update")
	public String update(HttpServletRequest request)throws Exception{
		Board board = Board.builder()
				.title(request.getParameter("title"))
				.content(request.getParameter("content"))
				.build();
		
		int result = boardService.boardUpdate(board);
		
		return "redirect:/board/"+request.getParameter("id");
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.POST)
	public String delete(@PathVariable("id")int id)throws Exception{
		int result = boardService.boardDelete(id);
		
		return "redirect:/";
	}
}
