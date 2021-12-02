package kr.ac.kopo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.ZodiacDao;
import kr.ac.kopo.model.Zodiac;

@Service
public class ZodiacServiceImpl implements ZodiacService {

	@Autowired
	ZodiacDao dao;

	@Override
	public List<Zodiac> list() {

		return dao.list();
	}


}
