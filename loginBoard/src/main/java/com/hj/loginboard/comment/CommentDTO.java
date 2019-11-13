package com.hj.loginboard.comment;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

@Data
@RequiredArgsConstructor
@AllArgsConstructor
public class CommentDTO {
	private int boardIdx;
	private int cmtIdx;
	private String cmtContent;
	private String writer;
	private String rgDate;
}
