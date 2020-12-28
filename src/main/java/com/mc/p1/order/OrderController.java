package com.mc.p1.order;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mc.p1.member.MemberVO;

@Controller
@RequestMapping("/order/**")
public class OrderController {

	@Autowired
	private OrderService orderService;
	
	@PostMapping("orderInsert")
	public ModelAndView setInsert(OrderSumVO orderSumVO,HttpSession session)throws Exception{
		ModelAndView mv= new ModelAndView();
		MemberVO memberVO=(MemberVO) session.getAttribute("member");
		orderSumVO.setMemberId(memberVO.getId());
		int result=orderService.setOrderInsert(orderSumVO);
		mv.addObject("msg", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
}
