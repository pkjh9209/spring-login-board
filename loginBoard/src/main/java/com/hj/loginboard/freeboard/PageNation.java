package com.hj.loginboard.freeboard;

public class PageNation {
	private int totalCount;
	private int startPage;
	private int endPage;

	private int displayPageNum = 10;
	private BoaderCnt cnt;

	public void setCnt(BoaderCnt cnt) {
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

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public BoaderCnt getCnt() {
		  return cnt;
	}

	private void calcData() {
		  endPage = (int) (Math.ceil(cnt.getPage() / (double)displayPageNum) * displayPageNum);
		  startPage = (endPage - displayPageNum) + 1;
		  
		  int tempEndPage = (int) (Math.ceil(totalCount / (double)cnt.getPageNum()));
		  if (endPage > tempEndPage) {
		      endPage = tempEndPage;
		  }
	}
}
