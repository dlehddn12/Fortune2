package kr.ac.kopo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ac.kopo.model.Member;
import kr.ac.kopo.service.MemberService;



@Controller
public class RootController {	
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}	
	@GetMapping("/signup")
	public String signup() {
		return "signup";
	}
	
	@ResponseBody
	@GetMapping("/checkId")
	public String checkId(String id) {
		
	
		if(memberService.checkId(id))
			return "OK";
		else
			return "FAIL";			
	}
	
	@PostMapping("/signup")
	public String signup(Member member, RedirectAttributes ra) {
		System.out.println(member.getGender());
		memberService.add(member);
		
		ra.addFlashAttribute("msg", "회원가입이 완료 되었습니다");
		
		return "redirect:.";
	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@PostMapping("/login")
	public String login(Member member, HttpSession session) {
		if(memberService.login(member)) {
			session.setAttribute("member", member);
			return "redirect:.";
		}
		
		return "redirect:/login";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:.";
	}
	
	
	
}
