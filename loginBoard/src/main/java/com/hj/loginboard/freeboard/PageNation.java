package com.hj.loginboard.freeboard;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageNation {
	private int totalCount;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private int displayPageNum = 10;
	private BoardCnt cnt;

	public void setCnt(BoardCnt cnt) {
		this.cnt = cnt;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}

	public int getTotalCount() {
		return totalCount;
	}

	public int getStartPage() {
		return startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public boolean isNext() {
		return next;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public BoardCnt getCnt() {
		return cnt;
	}

	private void calcData() {
		endPage = (int) (Math.ceil(cnt.getPage() / (double) displayPageNum) * displayPageNum);
		startPage = (endPage - displayPageNum) + 1;

		int tempEndPage = (int) (Math.ceil(totalCount / (double) cnt.getPageNum()));
		if (endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		prev = startPage == 1 ? false : true;
		next = endPage * cnt.getPageNum() >= totalCount ? false : true;
	}
	public String makeQuery(int page)
	{
	 UriComponents uriComponents =
	   UriComponentsBuilder.newInstance()
	   .queryParam("page", page)
	   .queryParam("pageNum", cnt.getPageNum())
	   .build();
	   
	 return uriComponents.toUriString();
	}
}
