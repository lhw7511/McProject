package com.mc.p1.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.mc.p1.member.MemberVO;



@Component
public class MemberInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean check =false;
		HttpSession session=request.getSession();
		MemberVO memberVO= (MemberVO) session.getAttribute("member");
		
		if(memberVO!=null) {
			check =true;
		}else {
			request.setAttribute("msg", "로그인이 필요한 서비스입니다");
			request.setAttribute("path", "../");
			RequestDispatcher view = request.getRequestDispatcher("../WEB-INF/views/common/result.jsp");
			view.forward(request, response);
			
		}
		return check;
	}
}
