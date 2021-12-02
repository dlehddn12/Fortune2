package kr.ac.kopo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.MemberDao;
import kr.ac.kopo.model.Member;

@Service
public class MemberserviceImpl implements MemberService{

	@Autowired
	MemberDao dao;
	@Override
	public boolean checkId(String id) {
		if(dao.checkId(id) == 0)
			return true;
		else
			return false;
		
	}

	@Override
	public void add(Member member) {
		dao.add(member);
		
	}

	@Override
	public boolean login(Member member) {
		Member item = dao.item(member);
		
		if(item != null) {
			member.setPasswd(null);
			member.setAddress( item.getAddress() );
			member.setTel( item.getTel() );
			
			return true;
		}
			
		return false;
	}
	
	

}
