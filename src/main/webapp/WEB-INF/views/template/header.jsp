<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
      <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<header>
		<div class="loginWrap">
		<div id="langWrap">
			<a style="color:#999999; cursor: pointer;" href="${pageContext.request.contextPath}/?lang=kr">한국어</a>  &nbsp;|&nbsp;  <a style="color:#999999; cursor: pointer;" href="${pageContext.request.contextPath}/?lang=en">English</a>
		</div>
		<div class="emptyWrap"></div>
		<div class="logWrap">
			<c:if test="${not empty member}">
				<span style="color:black">환영합니다 ${member.name} -고객님 </span>
				<a style="color:#999999; cursor: pointer;" href="${pageContext.request.contextPath}/member/memberLogout"><spring:message code="logout"></spring:message></a>   &nbsp;|&nbsp;   
			</c:if>
			
			<c:if test="${empty member}">
			<a style="color:#999999; cursor: pointer;" href="${pageContext.request.contextPath}/member/memberJoin"><spring:message code="join"></spring:message></a>   &nbsp;|&nbsp;   
			<a style="color:#999999; cursor: pointer;"  data-toggle="modal" data-target="#myModal"><spring:message code="login"></spring:message></a>   &nbsp;|&nbsp;   
			<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div id="modalWrap">
        	<button type="button" class="close" data-dismiss="modal">&times;</button>
			<div class="startWrap">
				<spring:message code="start"></spring:message>
			</div>	
			
			<div class="signWrap">
			<div class="inWrap">	
				
			
			
			<form action="${pageContext.request.contextPath}/member/memberLogin" method="post">
			
			<input type="text" placeholder="아이디" required="required" name="id" class="loginInput">
			<input type="password" placeholder="비밀번호" required="required" name="pw" class="loginInput">
			<button id="loginBtn" type="submit"><spring:message code="login"></spring:message></button>	
			
			</form>
			</div>					
			</div>	
				<div id="findWrap">
				
				<a style="color:#3d3d3d; cursor: pointer;"><spring:message code="findId"></spring:message></a>
				|
				<a style="color:#3d3d3d;  cursor: pointer;"><spring:message code="findPw"></spring:message></a>
			
				
			</div>
		</div>
       
      
      </div>
      
    </div>
  	</div>
			</c:if>
			
			<a style="color:#999999; cursor: pointer;"><spring:message code="order"></spring:message></a>
		</div>
		</div>
		
		
		<div class="headerWrap main-navigation clearfix">
			<div class="logoWrap">
				<a class="" href="${pageContext.request.contextPath}/">
				<img alt="" src="${pageContext.request.contextPath}/images/logo.jpg" >
				</a>
			</div>
			<div class="menuWrap">
				<i class="fa mcd mcd-burger icon"></i>
				<a class="iconTag" style="text-decoration: none;" href="${pageContext.request.contextPath}/product/productList">	
				 <span><spring:message code="menu"></spring:message> </span></a>
			
			</div>
			<div class="myPageWrap" >
				<i class="fa fa-user icon"></i>
				<div id="drop">
				<a class="iconTag" style="text-decoration: none;">
				<span><spring:message code="myPage"></spring:message></span>			
				</a>
				<div class="dropdown-content">
   				 <ul  style="list-style: none;">
     			 <li><a href="#" style="color:white; text-decoration: none;">주문 조회</a></li>
     			 <li><a href="#" style="color:white; text-decoration: none;">주문 내역</a></li>
     			 <li><a href="#" style="color:white; text-decoration: none;">주소록</a></li>
     			 <li><a href="${pageContext.request.contextPath}/member/myPage" style="color:white; text-decoration: none;">계정 설정</a></li>
     			 <li><a href="#" style="color:white; text-decoration: none;">비밀번호 변경</a></li>
   				 </ul>
   				 </div>
   				 </div>
			</div>
			<div class="etcWrap">
				<i class="fa fa-phone icon"></i>
				<a class="iconTag" style="text-decoration: none;">
				<span><spring:message code="etc"></spring:message></span></a>
				
			</div>
		</div>
		
		
		
		
	</header>