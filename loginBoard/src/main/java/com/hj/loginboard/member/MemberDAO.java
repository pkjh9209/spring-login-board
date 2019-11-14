package com.hj.loginboard.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSession ss;
	
	//회원가입 dao
	public void memeberInsert(MemberDTO md) throws Exception{
		ss.insert("member.memberInsert",md);
	}
	//아이디 체크 dao
	public MemberDTO idCheck(String userId) throws Exception{
		return ss.selectOne("member.idCheck",userId);
	}
	//로그인 dao
	public MemberDTO memberLogin(MemberDTO md)throws Exception{
		return ss.selectOne("member.memberlogin",md);
	}
	//회원수정 dao
	public void memberUpdate(MemberDTO md) throws Exception{
		ss.update("member.memberUpdate",md);
	}
	//회원 조회 dao
	public MemberDTO memberSelet(MemberDTO md) throws Exception{
		return ss.selectOne("member.memberSelect",md);
	}
	//회원탈퇴 dao
	public void memberDelete(MemberDTO md) throws Exception{
		ss.delete("member.memberDelete",md);
	}
}
