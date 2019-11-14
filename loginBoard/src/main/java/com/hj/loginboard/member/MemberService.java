package com.hj.loginboard.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO dao;
	
	//회원가입 service
	public void memeberInsert(MemberDTO md) throws Exception{
		dao.memeberInsert(md);
	}
	//아이디체크 service
	public MemberDTO idCheck(String userId) throws Exception{
		return dao.idCheck(userId);
	}
	//로그인 service
	public MemberDTO memberLogin(MemberDTO md) throws Exception{
		return dao.memberLogin(md);
	}
	//회원수정 service
	public void memberUpdate(MemberDTO md) throws Exception{
		dao.memberUpdate(md);
	}
	//회원조회 service
	public MemberDTO memberSelet(MemberDTO md) throws Exception{
		return dao.memberSelet(md);
	}
	//회원 탈퇴 service
	public void memberDelete(MemberDTO md) throws Exception{
		dao.memberDelete(md);
	}
}
