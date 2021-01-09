<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Fotorama from CDNJS, 19 KB -->
<link  href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
<link rel="stylesheet" href="https://www.mcdelivery.co.kr/kr//static/1607326511470/assets/00/css/main.css">
<link href="./css/template/header.css" rel="stylesheet">
<link href="./css/template/footer.css" rel="stylesheet">
<c:import url="./template/bootStrap.jsp"></c:import>
<style type="text/css">
	
	
	
	#slideWrap{
		
		width: 1140px;
		height: 530px;
		position:relative;
		border-bottom: 1px solid #d2d2d2;
	}
	
	#bannerWrap{
		margin: 0 auto;
		width: 1140px;
		height: 550px;
	
	}
	
	
	

</style>
</head>
<body>
	<c:import url="./template/header.jsp"></c:import>
	
	
	
	
	<section>
		<div id="bigWrap">
		
			<c:if test="${empty member}">
			<div id="formWrap">
			<div class="startWrap">
				<spring:message code="start"></spring:message>
			</div>	
			
			<div class="signWrap">
			<div class="inWrap">	
				
			
			<form action="./member/memberLogin" method="post">
			<input type="text" placeholder="아이디" required="required" name="id" class="loginInput">
			<input type="password" placeholder="비밀번호" required="required" name="pw" class="loginInput">
			<button id="loginBtn" type="submit"><spring:message code="login"></spring:message></button>	
			</form>
			</div>					
			</div>	
				<div id="findWrap">
				
				<a style="color:#3d3d3d; cursor: pointer;"><spring:message code="findId"></spring:message></a>
				|
				<a style="color:#3d3d3d;  cursor: pointer;" href="${pageContext.request.contextPath}/member/memberPwFind"><spring:message code="findPw"></spring:message></a>
			
				
			</div>
		</div>
			</c:if>		
					
			
		
		<div id="slideWrap" class="fotorama" data-loop="true" data-autoplay="true" data-navposition="inside">		
			<img alt="" src="./images/slide3.jpg">
			<img alt="" src="./images/slide1.jpg">
			<img alt="" src="./images/slide2.jpg">		
		</div>
		</div>
		<div id="bannerWrap">
			<p style="display: none;"><spring:message code="banner" var="ban"></spring:message></p>
			<div id="textWrap">
			<spring:message code="way"></spring:message>
			</div>
			<div>
			<img alt="" src="${ban}">
			</div>
		</div>
	</section>
	
	<c:import url="./template/footer.jsp"></c:import>
	

</body>
</html>