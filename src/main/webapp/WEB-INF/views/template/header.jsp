<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<header>
		<div class="loginWrap">
		<div id="langWrap">
			<a style="color:#999999; cursor: pointer;" href="${pageContext.request.contextPath}/?lang=kr">한국어</a>  &nbsp;|&nbsp;  <a style="color:#999999; cursor: pointer;" href="${pageContext.request.contextPath}/?lang=en">English</a>
		</div>
		<div class="emptyWrap"></div>
		<div class="logWrap">
			<a style="color:#999999; cursor: pointer;"><spring:message code="join"></spring:message></a>   &nbsp;|&nbsp;   
			<a style="color:#999999; cursor: pointer;"><spring:message code="login"></spring:message></a>   &nbsp;|&nbsp;   
			<a style="color:#999999; cursor: pointer;"><spring:message code="order"></spring:message></a>
		</div>
		</div>
		
		
		<div class="headerWrap main-navigation clearfix">
			<div class="logoWrap">
				<a class="">
				<img alt="" src="./images/logo.jpg" >
				</a>
			</div>
			<div class="menuWrap">
				<i class="fa mcd mcd-burger icon"></i>
				<a class="iconTag">	
				 <span><spring:message code="menu"></spring:message> </span></a>
			
			</div>
			<div class="myPageWrap">
				<i class="fa fa-user icon"></i>
				<a class="iconTag">
				<span><spring:message code="myPage"></spring:message></span></a>
				
			</div>
			<div class="etcWrap">
				<i class="fa fa-phone icon"></i>
				<a class="iconTag">
				<span><spring:message code="etc"></spring:message></span></a>
				
			</div>
		</div>
	</header>