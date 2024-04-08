package com.multi.mvc.notice.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.notice.model.vo.Notice;
import com.multi.mvc.notice.model.vo.NoticeParam;

@Mapper
public interface NoticeMapper {
	int selectCountNotice();
	List<Notice> selectAllNotice(NoticeParam param);
	Notice selectNotice(int nno);
	int insertNotice(Notice notice);
	int deleteNotice(int nno);
}
