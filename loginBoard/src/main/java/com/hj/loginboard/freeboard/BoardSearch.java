package com.hj.loginboard.freeboard;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.RequiredArgsConstructor;

@Data
@RequiredArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = true)

public class BoardSearch extends BoardCnt{
	private String searchCnt="";
	private String keyword="";
}
