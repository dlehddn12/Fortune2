package kr.ac.kopo.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.Luck;

@Repository
public class FortuneDaoImpl implements FortuneDao{
	@Autowired
	SqlSession sql;
	
	@Override
	public Luck item(Luck luck1) {
		System.out.println(luck1.getCode());
		return sql.selectOne("fortune.item",luck1);
	}
	
}
