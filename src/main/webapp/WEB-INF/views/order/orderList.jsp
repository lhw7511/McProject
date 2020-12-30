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
	
	.formWrap{
		width: 800px;	
		margin: 50px auto 300px auto;
		
	}
	.itemWrap{
		width: 750px;
		height: 55px;
		background-color: rgb(255,255,255);
		line-height: 55px;
		border: 1px solid #ddd;
		margin-top: 10px;
	}
	.cBtn{
		width: 40px;
		height: 35px;
		background-image: linear-gradient(#ec4c34,#d21920);
		color: #fff!important;
		border: none;
		line-height: 35px;
		border-radius: 4px;
		font-weight: bold;
		margin-left: 20px;
	}
	.cDate{
		margin-left: 40px; 
		color:#333333;
		font-size: 21px;
		
	}
	.infoWrap{
		width: 750px;
		
		background-image: linear-gradient(#f3f3f3,#fff 15px,#fff);
		border: 1px solid #ddd;
	}
	.infoNum{
		width: 750px;
		height: 40px;
		line-height: 40px;
		text-align: center;
		font-size: 15px;
	}
	.infoAddr{
		width: 750px;
		height: 40px;
		line-height: 40px;
		text-align: center;
		font-size: 15px;
	}
	.infoPro{
		width: 600px;
		height: 150px;
		margin: 0 auto;
		margin-bottom: 30px;
	}
	.proImg{
		width: 150px;
		height: 150px;
		
		text-align: center;
		line-height: 150px;
		float: left;
	}
	.proMenu{
		width: 450px;
		height: 150px;
		
		float: left;
	}
	.menuAmount{
		font-size: 20px;
		font-weight: bold;
		margin-left: 10px;
		margin-top: 10px;
	}
	.menuName{
		margin-left: 10px;
		font-size: 18px;
	}
	.sideList{
		margin-left: 10px;
		color:#999999;
	}
</style>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
		
		<div class="formWrap">
			<p style="font-size: 25px; font-weight: bold;">나의 주문내역</p>
			<p style="font-size: 15px; margin-bottom: 50px; ">3개월간의 주문내역이 나타납니다</p>
			<c:forEach items="${list}" var="dto">
			<div class="itemWrap">
				<button class="cBtn" value="${dto.num}">보기</button>
				<span class="cDate">주문 일자: ${dto.regDate}</span>
				<span class="cDate" style="color:#44900c">결제 금액: ${dto.finalPrice}원</span>
			</div>
			
			<div class="infoWrap" style="display: none;" id="${dto.num}">
				<div class="infoNum">주문번호: ${dto.num}</div>
				<div class="infoAddr">주소: ${dto.addr}</div>
				
				<c:forEach items="${dto.detailVOs}" var="vo">
					
				<div class="infoPro">
					<div class="proImg">
						<img alt="" src="../upload/product/${vo.productVO.fileName}" style="width: 100px; height: 100px;">
					</div>
					<div class="proMenu">
						<p class="menuAmount">${vo.amount}</p>
						
						<p class="menuName"><c:if test="${vo.setCheck eq 1}">세트-</c:if>${vo.productVO.name}</p>
						<c:if test="${vo.setCheck eq 1}">
						<ul class="sideList">
							<li>코카-콜라® - 미디엄</li>
							<li>후렌치 후라이 - 미디엄</li>
						</ul>
						</c:if>
						<p class="menuName" style="color:#44900c">${vo.totalPrice}</p>
					</div>
				</div>
				
				
				</c:forEach>
				
			</div>
			</c:forEach>
			
			

			
		</div>
	
	<c:import url="../template/footer.jsp"></c:import>
	
	<script type="text/javascript">
		$(".cBtn").click(function(){
				var id= $(this).val();
				var display=$("#"+id).css("display");
				if(display=='none'){			
					$("#"+id).css("display","block");
									
					}else{			
						$("#"+id).css("display","none");
					
						}
			});

	</script>
</body>

</html>