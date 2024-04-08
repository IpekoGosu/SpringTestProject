package com.multi.mvc.notice.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.multi.mvc.notice.model.mapper.NoticeMapper;
import com.multi.mvc.notice.model.vo.Notice;
import com.multi.mvc.notice.model.vo.NoticeParam;

@Service
public class NoticeService {
	@Autowired
	private NoticeMapper mapper;

	public int selectCountNotice() {
		return mapper.selectCountNotice();
	}

	public List<Notice> selectAllNotice(NoticeParam param) {
		return mapper.selectAllNotice(param);
	}

	public Notice selectNotice(int nno) {
		return mapper.selectNotice(nno);
	}

	@Transactional
	public int insertNotice(Notice notice) {
		return mapper.insertNotice(notice);
	}

	@Transactional
	public int deleteNotice(int nno) {
		return mapper.deleteNotice(nno);
	}
}
