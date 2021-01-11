package com.mc.p1.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.mc.p1.interceptor.MemberInterceptor;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer{

	@Autowired
	private MemberInterceptor memberInterceptor;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		
		registry.addInterceptor(memberInterceptor).
		addPathPatterns("/member/**").
		excludePathPatterns("/member/memberPwFind").
		excludePathPatterns("/member/memberLogin").
		excludePathPatterns("/member/memberJoin").
		addPathPatterns("/address/**").
		addPathPatterns("/cart/**").
		addPathPatterns("/order/**");
		WebMvcConfigurer.super.addInterceptors(registry);
	}
}
