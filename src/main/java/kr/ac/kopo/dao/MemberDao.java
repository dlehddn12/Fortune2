package kr.ac.kopo.dao;

import kr.ac.kopo.model.Member;

public interface MemberDao {

	int checkId(String id);

	void add(Member member);

	Member item(Member member);

	

}
