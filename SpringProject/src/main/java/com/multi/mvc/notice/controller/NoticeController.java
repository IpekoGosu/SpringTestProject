package com.multi.mvc.notice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.multi.mvc.notice.model.service.NoticeService;
import com.multi.mvc.notice.model.vo.Notice;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService service;

	@GetMapping("/notice/list")
	public String viewList(Model model) {
		List<Notice> list = service.selectAllNotice();
		int count = service.selectCountNotice();
		
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		
		return "notice/list";
	}
	
	@GetMapping("/notice/view")
	public String viewNotice(Model model, int nno) {
		Notice notice = service.selectNotice(nno);
		model.addAttribute("notice", notice);
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
