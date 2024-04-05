package com.multi.mvc.member.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.multi.mvc.member.model.mapper.MemberMapper;
import com.multi.mvc.member.model.vo.Member;

@Service
public class MemberService {

	// 테스트 코드임을 알리는 부분 -> 원래는 공통부나 다른곳에서 만들어야한다.
	boolean isTest = true;
	
	@Autowired
	private MemberMapper mapper; // dao를 대신해서 mybatis와 연동하는 클래스
	
	
	public Member login(String id, String pwd) {
		Member member = mapper.selectMemberById(id);
		if(member == null) {
			return null;
		}
		
		// pw 확인하는 로직
		if(pwd.equals(member.getPassword())) {
			// 로그인 성공한 경우
			return member;
		}else {
			// 실패
			return null;
		}
	}

	// 서비스의 save : mno(key)가 없으면 insert, key가 있으면 update가 되는 로직
	// @Transactional : 트랜잭션을 관리하는 어노테이션, commit, rollback을 자동으로 지원
	// rollbackFor : 어떤상황에서 rollback을 해야하는지 확인하는 옵션, 없으면 rollback이 없다.
	// https://data-make.tistory.com/738
	@Transactional(rollbackFor = Exception.class)
	public int save(Member member) {
		int result = 0;
		
		if(member.getMno() == 0) { // insert
			result = mapper.insertMember(member);
		} else { // update
			result = mapper.updateMember(member);
		}
		return result;
	}

	public boolean validate(String id) {
		return mapper.selectMemberById(id) != null;
	}

	public Member findByNo(int mno) {
		return mapper.selectMember(mno);
	}
	
	public Member findById(String id) {
		return mapper.selectMemberById(id);
	}
	
	public List<Member> findAll() {
		return mapper.selectAll();
	}

	@Transactional(rollbackFor = Exception.class)
	public int updatePwd(int mno, String password) {
		Map<String, String> map = new HashMap<>();
		//map : password, mno 필수
		map.put("mno", "" + mno);
		map.put("password", password);
		return mapper.updatePwd(map);
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int delete(int mno) {
		return mapper.deleteMember(mno);
	}
	
	public int snameCount(String inputval) {
		return mapper.snameMemberCount(inputval);
	}
	
	public List<Member> snameList(String inputval) {
		return mapper.snameMember(inputval);
	}
	public List<Member> sidList(String inputval) {
		return mapper.sidMember(inputval);
	}

	public int sidCount(String inputval) {
		return mapper.sidMemberCount(inputval);
	}
	
	
	
}



