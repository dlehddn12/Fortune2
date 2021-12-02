package kr.ac.kopo.service;

import kr.ac.kopo.model.Member;

public interface MemberService {

	boolean checkId(String id);

	void add(Member member);

	boolean login(Member member);

}
