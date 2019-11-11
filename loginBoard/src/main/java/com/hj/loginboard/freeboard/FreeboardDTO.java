package com.hj.loginboard.freeboard;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

@Data
@RequiredArgsConstructor
@AllArgsConstructor
public class FreeboardDTO {

	private int boardIdx;
	private String boardTitle;
	private String boardContent;
	private String writer;
	private String rgDate;
	private String hitView;
}
