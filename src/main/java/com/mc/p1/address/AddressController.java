package com.mc.p1.address;

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
@RequestMapping("/address/**")
public class AddressController {

	@Autowired
	private AddressService addressService;
	
	
	@PostMapping("addressDelete")
	public ModelAndView setDelete(AddressVO addressVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result=addressService.setDelete(addressVO);
		mv.addObject("msg", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	@GetMapping("addressList")
	public ModelAndView getList(AddressVO addressVO,HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO=(MemberVO) session.getAttribute("member");
		addressVO.setId(memberVO.getId());
		List<AddressVO>  addressVOs= addressService.getList(addressVO);
		mv.addObject("list", addressVOs);
		mv.setViewName("address/addressList");
		return mv;
	}
	
	@PostMapping("addressInsert")
	public ModelAndView setInsert2(AddressVO addressVO, HttpSession session)throws Exception{
		
		ModelAndView mv = new ModelAndView();
		String message="등록 실패";
		MemberVO memberVO=(MemberVO) session.getAttribute("member");
		addressVO.setId(memberVO.getId());
		int result=addressService.setInsert(addressVO);
		if(result>0) {
			message="등록 성공";
		}
		mv.addObject("msg", message);
		mv.addObject("path", "./addressList");
		mv.setViewName("common/result");
		return mv;
		
	}
	
	@GetMapping("addressInsert")
	public ModelAndView setInsert(AddressVO addressVO, HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO=(MemberVO) session.getAttribute("member");
		addressVO.setId(memberVO.getId());
		List<AddressVO>  addressVOs= addressService.getList(addressVO);
		
		if(addressVOs.size()>=5) {
			mv.addObject("msg", "주소는 최대 5개까지 등록가능합니다");
			mv.addObject("path", "./addressList");
			mv.setViewName("common/result");
		}else {
			mv.setViewName("address/addressInsert");
		}
		return mv;
	}
	
}
