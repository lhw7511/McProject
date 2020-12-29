package com.mc.p1.cart;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mc.p1.member.MemberVO;

@Controller
@RequestMapping("/cart/**")
public class CartController {
 
	@Autowired
	private CartService cartService;
	
	@PostMapping("cartDelete")
	public ModelAndView setDelete(CartVO cartVO)throws Exception{	
		ModelAndView mv= new ModelAndView();
		int result=cartService.setDelete(cartVO);
		
		
		
		mv.addObject("msg", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	@PostMapping("cartInsert")
	public ModelAndView setInsert(CartVO cartVO,HttpSession session)throws Exception{
		System.out.println("cartinsert");
		MemberVO memberVO=(MemberVO) session.getAttribute("member");
		ModelAndView mv= new ModelAndView();
		cartVO.setMemberId(memberVO.getId());
		int result=0;
		CartVO cartCheck=cartService.getCartCheck(cartVO);
		if(cartCheck==null) {
			result=cartService.setInsert(cartVO);
		}else {
			result=cartService.setAmountUpdate(cartCheck);
		}
		
		
		mv.addObject("msg", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	@PostMapping("cartList")
	public ModelAndView getList(CartVO cartVO,HttpSession session)throws Exception{
		ModelAndView mv= new ModelAndView();
		MemberVO memberVO=(MemberVO) session.getAttribute("member");
		cartVO.setMemberId(memberVO.getId());
		List<CartVO> cartVOs = cartService.getList(cartVO);
		long finalPrice=cartService.getFinalPrice(cartVOs);
		
		mv.addObject("list", cartVOs);
		mv.addObject("finalPrice", finalPrice);
		mv.setViewName("cart/cartAjaxResult");
		return mv;
	}
}
