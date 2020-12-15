<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.mcdelivery.co.kr/kr//static/1607326511470/assets/00/css/main.css">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Fotorama from CDNJS, 19 KB -->
<link  href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
<link href="./css/template/header.css" rel="stylesheet">
<style type="text/css">
	
	
	#bigWrap{
		margin:10px auto 0px auto;
		position: relative;
		width: 1140px;
		height: 530px;
	}
	#slideWrap{
		
		width: 1140px;
		height: 530px;
		position:relative;
		border-bottom: 1px solid #d2d2d2;
	}
	#formWrap{
		width:300px;
		height:300px;
		background-color: rgba(255,255,255,0.7);
		position:absolute;
		top: 15px;
		right: 25px;
		z-index: 550;
		
	}
	#bannerWrap{
		margin: 0 auto;
		width: 1140px;
		height: 550px;
	
	}
	#textWrap{
		width: 1140px;
		height: 50px;
		line-height: 50px;
		color:#3d3d3d;
		font-size: 20px;
		font-weight: bold;
	}
	
	.startWrap{
		width: 300px;
		height: 50px;
		line-height: 50px;
		text-align: center;
		font-size:20px;
		color: #3d3d3d;
	}
	.signWrap{
		width: 300px;
		height: 200px;
		
	}
	.inWrap{
		width: 250px;
		height: 200px;
		
		overflow:hidden;
		margin: 0 auto;
	}
	input{
		width: 250px;
		height: 50px;	
		border: 1px solid #ddd;
		
	}
	#loginBtn{
		width: 250px;
		height: 50px;	
		background-image: linear-gradient(#ec4c34,#d21920);
		border-radius: 5px;
		color: white;
		margin-top:40px;
		font-size: 20px;
		border: none;
	}
	#findWrap{
		width: 250px;
		height: 50px;		
		margin: 0 auto;
		line-height: 50px;
		text-align: center;
	}
	
	.footWrap{
		width: 100%;
		height: 160px;
		background-color: #1d1d1d;
		text-align: center;
		overflow: hidden;	
		}
	.footCon{
		color: #b4b4b4;
		font-size: 12px;
	}
</style>
</head>
<body>
	<c:import url="./template/header.jsp"></c:import>
	
	<section>
		<div id="bigWrap">
		<div id="formWrap">
			<div class="startWrap"><spring:message code="start"></spring:message></div>
			<div class="signWrap">
			<div class="inWrap">
			<input type="text" placeholder="아이디">
			<input type="password" placeholder="비밀번호">
			<button id="loginBtn" type="submit"><spring:message code="login"></spring:message></button>	
			</div>	
			</div>
			<div id="findWrap">
				<a style="color:#3d3d3d; cursor: pointer;"><spring:message code="findId"></spring:message></a>
				|
				<a style="color:#3d3d3d;  cursor: pointer;"><spring:message code="findPw"></spring:message></a>
			</div>
		
		</div>
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
	
	<footer>
		<div class="footWrap">
			<p class="footCon" style=" margin-top: 20px;"><spring:message code="footCon1"></spring:message> </p>
			<p class="footCon" ><spring:message code="footCon2"></spring:message> <a style="color: #ffffff; cursor: pointer;"><spring:message code="footCon3"></spring:message></a> </p>
			<p class="footCon"><spring:message code="footCon4"></spring:message></p>
			<p class="footCon" style="margin-bottom: 10px;"><spring:message code="footCon5"></spring:message></p>
		</div>
	
	</footer>
</body>
</html>