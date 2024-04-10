package com.multi.mvc.notice.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.multi.mvc.notice.model.vo.FirstView;
import com.multi.mvc.notice.model.vo.Liken;
import com.multi.mvc.notice.model.vo.Notice;
import com.multi.mvc.notice.model.vo.NoticeParam;

@Mapper
public interface NoticeMapper {
	int selectCountNotice();
	List<Notice> selectAllNotice(NoticeParam param);
	Notice selectNotice(int nno);
	int insertNotice(Notice notice);
	int deleteNotice(int nno);
	FirstView selectFirstView(@Param("mno") int mno,@Param("nno") int nno);
	List<FirstView> selectAllFirstView(int nno);
	int insertFirstView(FirstView firstView);
	int deleteLiken(@Param("mno") int mno,@Param("nno") int nno);
	int updateNotice(int nno);
	int insertLiken(Liken liken);
	Liken selectLiken(@Param("mno") int mno,@Param("nno") int nno);
}
