package com.hj.loginboard.freeboard;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.hj.loginboard.freeboard.FreeboardDTO;

@Controller
@RequestMapping(value="/freeboard")
public class FreeboardController {

	@Autowired
	SqlSession ss;
	@Autowired
	FreeboardService service;
	
	//자유게시판페이지
	@RequestMapping(value = "/index.do", method = RequestMethod.GET)
	public String index(@RequestParam("pageNum")FreeboardDTO fd,String pageNum,Model model) throws Exception {
		
		cntBoard = service.boardCount();
		List<FreeboardDTO> list = service.list(pageNum);
		model.addAttribute("list",list);
		return "/freeboard/index";
		
	}
	
	//글작성페이지
	@RequestMapping(value = "/boardWrite.do")
	public String boardWrite(Model model) throws Exception{
		return "/freeboard/boardWrite";
	}
	
	//글작성	
	@RequestMapping(value = "/boardWriteProc.do", method = RequestMethod.POST)
	public String boardWriteProc(FreeboardDTO fd) throws Exception {
		
		service.write(fd);
		return "redirect:/freeboard/index.do";
	}
	
	//글내용	
	@RequestMapping(value = "/boardView.do", method = RequestMethod.GET)
	public String boardView(@RequestParam("idx") int idx, Model model) throws Exception{
		
		FreeboardDTO fd = service.select(idx);
		model.addAttribute("bdView",fd);
		return "/freeboard/boardView";
	}
	
	//수정 페이지 
	@RequestMapping(value = "/boardUpdate.do", method = RequestMethod.GET)
	public String boardUpdate(@RequestParam("boardIdx") int idx, Model model) throws Exception{
		
		FreeboardDTO fd = service.select(idx);
		model.addAttribute("upView",fd);
		return "/freeboard/boardUpdate";
	}
	//삭제 페이지 	
	@RequestMapping(value = "/boardDelete.do", method = RequestMethod.GET)
	public String boardDelete(@RequestParam("boardIdx") int idx, Model model) throws Exception{
		FreeboardDTO fd = service.select(idx);
		model.addAttribute("delete",fd);
		return "/freeboard/boardDelete";
	}
	
	//글수정
	@RequestMapping(value = "/boardUpdateProc.do",method = RequestMethod.POST)
	public String boardUpdateProc(FreeboardDTO fd) throws Exception{
		
		System.out.println("수정완료");
		service.update(fd);
		return "redirect:/freeboard/index.do";
	}
	
	//글삭제
	@RequestMapping(value = "/boardDeleteProc.do", method = RequestMethod.POST)
	public String boardDeleteProc(@RequestParam("boardIdx") int idx) throws Exception{
		
		System.out.println("삭제완료");
		service.delete(idx);
		return "redirect:/freeboard/index.do";
	}
	
}
