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
		width: 1140px;
		height: 230px;
	
		margin: 0px auto 250px auto;
		border: 1px solid #ddd;
		overflow: hidden;
	}
	.titleWrap{
		width: 1140px;
		height: 60px;
		line-height:60px;
		background-color: white;
		font-size: 20px;
		padding-left: 20px;
		
	}
	.contentsWrap{
		width: 1140px;
		height:170px;
		background-image: linear-gradient(#f3f3f3,#fff 15px,#fff);
		overflow: hidden;
	}
	#btn{
		 background-image: linear-gradient(#ec4c34,#d21920); 
		 border: none; 
		 border-radius: 5px; 
		 width: 65px; 
		 height: 45px; 
		 margin-left: 20px; 
		 color:white; 
		 font-size: 18px;
		 margin-top: 10px;
	}
	.idInput{
		width: 350px; 
		height: 50px; 
		background-color: #fff;
    	border: 1px solid #ccc; 
    	margin-left: 20px; 
    	border-radius: 5px;
    	
	}
	.headWrap{
		width: 1140px;
		height: 30px;
		margin: 20px auto 10px auto;
		font-size: 20px;
		font-weight: bold;
	}
</style>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
		<div class="headWrap">
			비밀번호를 잊어버렸나요?
		</div>
		<div class="formWrap">
			<div class="titleWrap">
				고객님의 아이디를 입력하시면 가입시 이메일로 새로운 비밀번호를 보내드립니다.
			</div>
			
			<div class="contentsWrap">
				<p style=" margin-top: 20px; margin-left: 20px; font-size: 18px;">*아이디</p>
				<input type="text" class="idInput"  placeholder="ID입력" id="idForm" required="required"> 
    			<button id="btn">확인</button>
				</div>
			</div>
			
			
		
	
	<c:import url="../template/footer.jsp"></c:import>
	
	<script type="text/javascript">
		$("#btn").click(function(){
				var id =$("#idForm").val();
				$.post("./memberPwFind",{id: id},function(data){
						data=data.trim();
						if(data>0){
								alert("이메일로 새로운 비밀번호를 보내드렸습니다");
							}else{
								alert("존재하지 않는 아이디입니다");
								}
					});
			});
	</script>
</body>
</html>