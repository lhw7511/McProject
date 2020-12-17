package com.mc.p1.member;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	
	@PostMapping("memberDelete")
	public ModelAndView setDelete(MemberVO memberVO,HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result=memberService.setDelete(memberVO);
		if(result>0) {
			session.invalidate();
		}
		mv.addObject("msg", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	@GetMapping("myPage")
	public ModelAndView getMyPage(HttpSession session,MemberVO memberVO) throws Exception {
		memberVO = (MemberVO) session.getAttribute("member");
		memberVO=memberService.getOne(memberVO);
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo", memberVO);
		mv.setViewName("member/myPage");
		return mv;
	}
	
	@PostMapping("myPage")
	public ModelAndView getMyPage(MemberVO memberVO) throws Exception {
		String message="수정 실패!";
		ModelAndView mv = new ModelAndView();
		int result = memberService.setUpdate(memberVO);
		if(result>0) {
			message="수정 성공!";		
		}
		mv.addObject("msg", message);
		mv.addObject("path","./myPage");
		mv.setViewName("common/result");
		return mv;
	}
	
	@GetMapping("memberLogout")
	public ModelAndView getMemberLogout(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		session.invalidate();
		mv.setViewName("redirect:../");
		return mv;
	}
	@PostMapping("memberLogin")
	public ModelAndView getMemberLogin(MemberVO memberVO ,HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		memberVO=memberService.getMemberLogin(memberVO);
		if(memberVO==null) {
			mv.addObject("msg", "로그인 실패");
			mv.addObject("path","../");
			mv.setViewName("common/result");
			
		}else {
			session.setAttribute("member", memberVO);
			mv.setViewName("redirect:../");
			
		}
		return mv;
	}
	
	
	@GetMapping("memberJoin")
	public ModelAndView getMemberJoin(MemberVO memberVO) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/memberJoin");
		return mv;
	}
	
	@PostMapping("memberJoin")
	public ModelAndView getMemberJoin(@Valid MemberVO memberVO, BindingResult bindingResult,AddressVO addressVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		if(memberService.getMemberError(memberVO, bindingResult)) {
			System.out.println("검증실패");
			mv.setViewName("member/memberJoin");
			return mv;
		}
		String message="가입 실패!";
		int result=memberService.setMemberInsert(memberVO, addressVO);
		if(result>0) {
			message="가입 성공!";
		}
		mv.addObject("msg", message);
		mv.addObject("path", "../");
		mv.setViewName("common/result");
		return mv;
	}
}
