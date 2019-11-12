package com.hj.loginboard.freeboard;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hj.loginboard.freeboard.FreeboardDTO;
@Repository
public class FreeboardDAO {
	
	@Autowired SqlSession ss;
	
	//글작성 (mapper - namespace.id)
	public void boardWrite(FreeboardDTO fd) throws Exception{
		ss.insert("freeboard.boardWrite",fd);
	}
	
	//글조회
	public FreeboardDTO boardSelect(int idx) throws Exception{
		return ss.selectOne("freeboard.boardSelect",idx);
	}
	
	//글수정
	public void boardUpdate(FreeboardDTO fd) throws Exception{
		ss.update("freeboard.boardUpdate",fd);
	}
	
	//글삭제
	public void boardDelete(int idx) throws Exception{
		
		ss.delete("freeboard.boardDelete",idx);
	}
	
	//글 목록
	public List<FreeboardDTO> list(String number) throws Exception{
		int num = number==null? 1: Integer.parseInt(number);
		num = 10*(num-1);
		
		return ss.selectList("freeboard.pageList",num);
	}
	//전체 글 카운트
	public void boardCount(int cnt) throws Exception{
		
		if( cnt%10 > 0 ) {
			cnt = cnt / 10+1;
		}else {
			cnt = cnt / 10;
		}
		ss.count("freeboard");
	}
}
