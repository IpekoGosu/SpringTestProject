package com.multi.mvc.notice.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FirstView { // 처음 확인
	private int fno;
	private int nno;
	private Date viewTime;
	private int mno;
	private String id;
	private String name;
}
