package com.multi.mvc.notice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.multi.mvc.member.model.vo.Member;
import com.multi.mvc.notice.model.service.NoticeService;
import com.multi.mvc.notice.model.vo.FirstView;
import com.multi.mvc.notice.model.vo.Notice;
import com.multi.mvc.notice.model.vo.NoticeParam;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService service;

	@GetMapping("/notice/list")
	public String viewList(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember) {
		NoticeParam param = new NoticeParam(1, 10, 0);
		int count = service.selectCountNotice();
		List<Notice> list = service.selectAllNotice(param);
		PageInfo pageInfo = new PageInfo(1, 5, count, 10);
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("loginMember", loginMember);
		
		return "notice/list";
	}
	
	@PostMapping("/notice/page")
	public String noticepage(Model model, int page) {
		NoticeParam param = new NoticeParam();
		int count = service.selectCountNotice();
		param.setPage(page);
		PageInfo pageInfo = new PageInfo(param.getPage(), 5, count, 10);
		param.setLimit(pageInfo.getListLimit());
		param.setOffset(pageInfo.getStartList() - 1);
		List<Notice> list = service.selectAllNotice(param);
		model.addAttribute("count", count);
		model.addAttribute("list", list);
		model.addAttribute("pageInfo", pageInfo);
		
		return "notice/alist";
	}
	
	@PostMapping("/notice/paging")
	public String noticepaging(Model model, NoticeParam param) {
		
		return "notice/paging";
	}
	
	
	@GetMapping("/notice/view")
	public String viewNotice(Model model, int nno, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember) {
		Notice notice = service.selectNotice(nno);
		model.addAttribute("notice", notice);
		
		if (loginMember != null) {
			if (service.selectFirstView(loginMember.getMno(), nno) == null) {
				FirstView firstView = new FirstView();
				firstView.setMno(loginMember.getMno());
				firstView.setName(loginMember.getName());
				firstView.setId(loginMember.getId());
				firstView.setNno(nno);
				int result = service.insertFirstView(firstView);
				
			}
		}
		List<FirstView> list = service.allFirstView();
		model.addAttribute("list", list);
		
		return "notice/view";
	}
	
	@GetMapping("/notice/write")
	public String writeNotice(Model model) {
		return "noctice/write";
	}
	@PostMapping("/notice/write")
	public String saveNotice(Model model, Notice notice) {
		int result = 0;
		result = service.insertNotice(notice);
		if (result == 0) {
			model.addAttribute("msg", "저장 실패");
			model.addAttribute("location", "/");
			return "common/msg";
		} else {
			return "notice/view?nno=" + notice.getNno();
		}
		
	}
	
	
	
}
