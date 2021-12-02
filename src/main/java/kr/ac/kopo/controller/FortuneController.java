package kr.ac.kopo.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.model.Luck;
import kr.ac.kopo.model.Non;
import kr.ac.kopo.service.FortuneService;



@Controller
@RequestMapping("/fortune")
public class FortuneController {
	final String path = "fortune/";
	
	@Autowired
	FortuneService service;
	
	@GetMapping("/result")
	public String result() {
		
		return "index";
	}
	
	@PostMapping("/result")
	public String result(Non non, Model model) {
		Luck luck1 = new Luck();
		int random = (int) (Math.random()*21);
		luck1.setCode(random);

		Luck result = service.item(luck1);
		model.addAttribute("result",result);
		return path + "result";
	}
	
}
