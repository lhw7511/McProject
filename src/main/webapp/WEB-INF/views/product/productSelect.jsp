<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://www.mcdelivery.co.kr/kr//static/1607326511470/assets/00/css/main.css">
<link href="../css/template/header.css" rel="stylesheet">
<link href="../css/template/footer.css" rel="stylesheet">
<c:import url="../template/bootStrap.jsp"></c:import>
<style type="text/css">
#insertBtn{
	background-image: linear-gradient(#ec4c34,#d21920); 
	color: #fff!important; 
	border: none;
	width: 100px;
	height: 40px;
	border-radius: 4px;
	font-size: 15px;
	font-weight: bold;
}

.headWrap{
	margin: 50px auto 50px auto;
	width: 1140px;
	height: 150px;

	font-size: 30px;
	font-weight: bold;
	text-align: center;
}
.titleWrap{
	width: 1000px;
	height: 30px;
	
	margin: 0px auto 50px auto;
	font-size: 18px;
	font-weight: bold;
}


.btnWrap{
	width: 1000px;
	height: 100px;
	
	margin: 0px auto 50px auto;
	font-size: 18px;
	font-weight: bold;
}
.sideWrap{
	width: 1000px;
	height: 250px;
	
	margin: 0px auto 50px auto;
}
.itemWrap{
	width: 200px;
	height: 250px;
	 border: 2px solid #ddd;
	float: left;
	margin-right: 20px;
	overflow: hidden;
}
</style>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="headWrap">
		<img alt="" src="../upload/product/${dto.fileName}" style="width: 150px;height: 150px;">
		<span>${dto.name}세트</span> 
	</div>
	
	<div class="titleWrap">
		사이드
	</div>

	<div class="sideWrap">
		<c:choose>
			<c:when test="${dto.wCode eq 0 }">
				<div class="itemWrap">
			<p><input type="radio" name="side" class="side" checked="checked" value="후렌치 후라이">후렌치 후라이</p>
			<img alt="" src="../images/side7.png" style="width: 200px; height: 200px">
		</div>
			</c:when>
			
			<c:otherwise>
					<div class="itemWrap">
			<p><input type="radio" name="side" class="side" checked="checked" value="해쉬 브라운">해쉬 브라운</p>
			<img alt="" src="../images/mside1.png" style="width: 200px; height: 200px">
		</div>
			</c:otherwise>
		</c:choose>
		
		<div class="itemWrap">
			<p><input type="radio" name="side" class="side"  value="골든 모짜렐라 치즈스틱">골든 모짜렐라 치즈스틱</p>
			<img alt="" src="../images/side2.png" style="width: 200px; height: 200px">
		</div>
		
	</div>

	<div class="titleWrap">
		음료
	</div>

	<div class="sideWrap">
		<c:choose>
			<c:when test="${dto.wCode eq 0 }">
				<div class="itemWrap">
			<p><input type="radio" name="drink" class="drink" checked="checked" value="코카-콜라®">코카-콜라®</p>
			<img alt="" src="../images/drink2.png" style="width: 200px; height: 200px">
		</div>
		<div class="itemWrap">
			<p><input type="radio" name="drink" class="drink"  value="스프라이트®">스프라이트®</p>
			<img alt="" src="../images/drink4.png" style="width: 200px; height: 200px">
		</div>
		<div class="itemWrap">
			<p><input type="radio" name="drink" class="drink" value="환타®">환타®</p>
			<img alt="" src="../images/drink5.png" style="width: 200px; height: 200px">
		</div>
		<div class="itemWrap">
			<p><input type="radio" name="drink" class="drink" value="코카-콜라® 제로">코카-콜라® 제로</p>
			<img alt="" src="../images/drink3.png" style="width: 200px; height: 200px">
		</div>
			</c:when>
			
			<c:otherwise>
				<div class="itemWrap">
			<p><input type="radio" name="drink" class="drink" checked="checked" value="아메리카노">아메리카노</p>
			<img alt="" src="../images/drink6.png" style="width: 200px; height: 200px">
		</div>
		<div class="itemWrap">
			<p><input type="radio" name="drink" class="drink" value="딸기 칠러">딸기 칠러</p>
			<img alt="" src="../images/drink1.png" style="width: 200px; height: 200px">
		</div>
			<div class="itemWrap">
			<p><input type="radio" name="drink" class="drink" value="코카-콜라®">코카-콜라®</p>
			<img alt="" src="../images/drink2.png" style="width: 200px; height: 200px">
		</div>
		<div class="itemWrap">
			<p><input type="radio" name="drink" class="drink" value="스프라이트®">스프라이트®</p>
			<img alt="" src="../images/drink4.png" style="width: 200px; height: 200px">
		</div>
			</c:otherwise>
		</c:choose>
	
		
		
	</div>
	
	<div class="btnWrap" style="font-size: 20px; font-weight: bold;" >
		<p>가격 ₩ ${dto.price+1700} </p>
		<button id="insertBtn">추가</button>
	 
	
	</div>
	
	
	<c:import url="../template/footer.jsp"></c:import>
	




<script type="text/javascript">

	$("#insertBtn").click(function(){
		
		 var num=${dto.num};
		 var price= ${dto.price+1700};
		 var side;
		 var drink;
		$(".side").each(function(){
			
			if($(this).prop("checked")){
					side=$(this).val();
				
				}
		});


		$(".drink").each(function(){
			
			if($(this).prop("checked")){
					drink=$(this).val();
					
				}
		});
			
		 $.post("../cart/cartInsert",{productNum:num,
			 price:price,
			 side:side,
			 drink:drink,
			 setCheck:1},function(data){
			 data=data.trim();
			 if(data>0){
					alert("카트에 추가되었습니다");
				 }else{
					 alert("카트에 추가실패하였습니다");	
					 }
			 location.href="./productList";
			});	
		 
	}); 
</script>
</body>
</html>