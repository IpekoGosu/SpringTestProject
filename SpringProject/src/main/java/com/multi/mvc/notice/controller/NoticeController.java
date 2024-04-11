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
import com.multi.mvc.notice.model.vo.Liken;
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
	
	// Ajax 처리
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
		List<FirstView> list = service.allFirstView(nno);
		model.addAttribute("list", list);
		model.addAttribute("loginMember", loginMember);
		
		return "notice/view";
	}
	
	@GetMapping("/notice/write")
	public String writeNotice(Model model) {
		return "notice/write";
	}
	@PostMapping("/notice/write")
	public String saveNotice(Model model, Notice notice) {
		System.out.println("11111111111111");
		int result = 0;
		result = service.insertNotice(notice);
		System.out.println("222222222222222");
		System.out.println(result);
		if (result == 0) {
			model.addAttribute("msg", "저장 실패");
			model.addAttribute("location", "/");
			return "common/msg";
		} else {
			System.out.println("3333333333333333333333333");
			model.addAttribute("msg", "성공");
			model.addAttribute("location", "/notice/view?nno=" + notice.getNno());
			return "common/msg";
		}
		
	}
	
	@GetMapping("/notice/like")
	public String likethis(Model model, int nno, 
			@SessionAttribute Member loginMember) {
		int mno = loginMember.getMno();
		// 신규
		if (service.selectLiken(mno, nno) == null) {
			Liken liken = new Liken();
			liken.setMno(mno);
			liken.setNno(nno);
			liken.setId(loginMember.getId());
			service.insertLiken(liken);
			service.updateNotice(nno);
			model.addAttribute("msg", "좋아요 등록");
			model.addAttribute("location", "/notice/view?nno=" + nno);
			return "common/msg";
		} else {
			// 삭제
			service.deleteLiken(mno, nno);
			service.updateNotice(nno);
			model.addAttribute("msg", "해제");
			model.addAttribute("location", "/notice/view?nno=" + nno);
			return "common/msg";
		}
		
	}
	
	
	
}
