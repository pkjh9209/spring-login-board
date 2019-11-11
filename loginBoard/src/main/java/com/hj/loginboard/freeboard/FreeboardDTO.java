package com.hj.loginboard.member;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

@Data
@RequiredArgsConstructor
@AllArgsConstructor
public class MemberDTO {

	private int userIdx;
	private String userId;
	private String userPw;
	private String userName;
	private String userTel;
	private String rgdate;
}
