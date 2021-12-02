package kr.ac.kopo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.FortuneDao;
import kr.ac.kopo.model.Luck;

@Service
public class FortuneServiceImpl implements FortuneService{

	@Autowired
	FortuneDao dao;
	
	@Override
	public Luck item(Luck luck1) {
		
		return dao.item(luck1);
	}

}
