package com.hj.loginboard.freeboard;

public class BoardCnt {
	private int page;
	private int pageNum;
	private int rowStart;
	private int rowEnd;

	public BoardCnt() {
		this.page = 1;
		this.pageNum = 10;
	}

	public void setPage(int page) {
		if (page <= 0) {
			this.page = 1;
			return;
		}
		this.page = page;
	}

	public void pageNum(int pageNum) {
		if (pageNum <= 0 || pageNum >= 100) {
			this.pageNum = 10;
			return;
		}
		this.pageNum = pageNum;
	}

	public int getPage() {
		return page;
	}

	public int getPageStart() {
		return (this.page - 1) * pageNum;
	}

	public int getPageNum() {
		return this.pageNum;
	}

	@Override
	public String toString() {
		return "BoaderCnt [page=" + page + ", pageNum=" + pageNum + ", rowStart=" + rowStart + ", rowEnd=" + rowEnd
				+ "]";
	}

	public int getRowStart() {
		rowStart = ((page - 1) * pageNum) + 1;
		return rowStart;
	}

	public int getRowEnd() {
		rowEnd = rowStart + pageNum - 1;
		return rowEnd;
	}
}
