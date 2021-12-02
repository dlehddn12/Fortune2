package kr.ac.kopo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.model.Zodiac;
import kr.ac.kopo.service.ZodiacService;

@Controller
@RequestMapping("/zodiac")
public class ZodiacController {
	final String path = "zodiac/";
	
	@Autowired
	ZodiacService service;
	

	
	@GetMapping("/zodiac")
	public String zodiac( Model model) {
		
		List<Zodiac> list = service.list();
		model.addAttribute("list",list);
	
		return path + "zodiac";
	}
}