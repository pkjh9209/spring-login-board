package com.hj.loginboard.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/member")
public class MemberController {

	@Autowired
	SqlSession ss;
	
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
	@RequestMapping(value = "/loginProc.do")
	public String loginProc(Model model) {
		
		return "member/index";
	}
	//회원가입 화면
	@RequestMapping(value = "/insert.do")
	public String insert(Model model) {
		return "member/insert";
	}
	//회원가입 데이터 저장
	@RequestMapping(value = "/insertProc.do")
	public String insertProc(Model model,String userId, String userPw, String userName, String userTel) {
		System.out.println("userId"+userId);
		System.out.println("userPw"+userPw);
		System.out.println("userName"+userName);
		System.out.println("userTel"+userTel);
		
		MemberDTO md = new MemberDTO();
		md.setUserId(userId);
		md.setUserPw(userPw);
		md.setUserName(userName);
		md.setUserTel(userTel);
		ss.insert("member.insertrow",md);
		
		return "redirect:index.do";
	}
}
