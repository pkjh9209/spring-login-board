package com.hj.loginboard.member;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hj.loginboard.member.MemberDTO;

@Controller
@RequestMapping(value="/member")
public class MemberController {

	@Autowired
	SqlSession ss;
	@Autowired
	MemberService mbService;
	@RequestMapping(value = "/index.do")
	public String index(Model model) {
		
		return "member/index";
	}
	//로그인 화면
	@RequestMapping(value = "/login.do")
	public String login(Model model) {
		return "member/login";
	}
	//로그인데이터

	//회원가입 화면
	@RequestMapping(value = "/insert.do")
	public String insert(Model model) {
		return "member/insert";
	}
	//회원가입 데이터 저장
	@RequestMapping(value = "/insertProc.do",method = RequestMethod.POST)
	public String insertProc(MemberDTO md) throws Exception{
		mbService.memeberInsert(md);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/loginProc.do",method = RequestMethod.POST)
	public String memberlogin(MemberDTO md,HttpServletRequest req) throws Exception{
	HttpSession session = req.getSession();
	MemberDTO login = mbService.memberLogin(md);
	
	if(login == null) {
		session.setAttribute("null", null);
	}else{
		session.setAttribute("login", login);
	}
	return "redirect:/";
	}
