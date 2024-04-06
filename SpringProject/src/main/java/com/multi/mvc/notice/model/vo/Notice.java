package com.multi.mvc.notice.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Notice {
	private int nno;
	private int mno;
	private String title;
	private String content;
	private String likeCount;
}
