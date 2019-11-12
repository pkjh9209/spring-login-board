package com.hj.loginboard.freeboard;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FreeboardService {
	
	
	@Autowired
	private FreeboardDAO dao;
	//글작성
	public void write(FreeboardDTO fd) throws Exception{
		dao.boardWrite(fd);
	}
	//글조회
	public FreeboardDTO select(int idx) throws Exception{
		return dao.boardSelect(idx);
	}
	//글수정
	public void update(FreeboardDTO fd) throws Exception{
		dao.boardUpdate(fd);
	}
	//글삭제
	public void delete(int idx) throws Exception{
		dao.boardDelete(idx);
	}
	//글목록
	public List<FreeboardDTO> list(String pageNum) throws Exception{
		return dao.list(pageNum);
	}
	
}
