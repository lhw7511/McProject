package com.mc.p1.cart;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mc.p1.member.MemberVO;

@Controller
@RequestMapping("/cart/**")
public class CartController {

	@Autowired
	private CartService cartService;
	
	@PostMapping("cartInsert")
	public ModelAndView setInsert(CartVO cartVO,HttpSession session)throws Exception{
		System.out.println("gd");
		MemberVO memberVO=(MemberVO) session.getAttribute("member");
		ModelAndView mv= new ModelAndView();
		cartVO.setMemberId(memberVO.getId());
		int result=cartService.setInsert(cartVO);
		mv.addObject("msg", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
}
