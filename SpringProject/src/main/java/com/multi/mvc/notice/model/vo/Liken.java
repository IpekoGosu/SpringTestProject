package com.multi.mvc.notice.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Liken { // 좋아요
	private int lno;
	private int nno;
	private int mno;
	private String id;
}
