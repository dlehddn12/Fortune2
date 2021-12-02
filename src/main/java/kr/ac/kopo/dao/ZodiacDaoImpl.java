package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.Zodiac;

@Repository
public class ZodiacDaoImpl implements ZodiacDao {
	@Autowired
	SqlSession sql;

	@Override
	public List<Zodiac> list() {

		return sql.selectList("zodiac.list");
	}
	


}
