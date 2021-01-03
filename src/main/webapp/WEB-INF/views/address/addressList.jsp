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
		margin: 120px auto 300px auto;
		width: 800px; 			
		border-radius: 10px;
		border: 1px solid #ddd;
	}
	.numWrap{
		width: 100px;
		height: 50px;
		
	}
	.addrWrap{
		width: 700px;
		height: 50px;
		
	}
	.headWrap{
		text-align: center;
		line-height: 50px;
		font-size: 18px;
		font-weight: bold;
		background-color: white;
	}
	
	.conWrap{
		text-align: center;
		height: 80px;
		font-size: 15px;
		background-image: linear-gradient(#f3f3f3,#fff 15px,#fff);
	}
	.numConWrap{
		width: 100px;
		height: 80px;
	}
	.addrConWrap{
		width: 700px;
		height: 80px;
	}
	.trWrap{
		border-bottom: 1px solid #ddd;
	}
	.btnWrap{
		width: 150px;
		height: 50px;
		background-image: linear-gradient(#ec4c34, #d21920);
		color: white;
		border: none;
		border-radius:5px; 
		font-size: 15px;
	}
	
	}
</style>
</head>
<body>
		<c:import url="../template/header.jsp"></c:import>
		
		
		<div class="formWrap">
		
			<table>
				<tr> 
					<td class="numWrap headWrap">번호</td>
					<td class="addrWrap headWrap">주소</td>
				</tr>
				
				<c:forEach items="${list}" var="dto" varStatus="status">
					<tr class="trWrap">
					<td class="numConWrap conWrap">${status.count}</td>
					<td class="addrConWrap conWrap">
						${dto.addr}				
						<i class="fa mcd mcd-remove icon del" style="margin-left: 50px;  cursor: pointer;" title="${dto.num}"></i> 						
					</td>
				</tr>
				
				</c:forEach>
				<tr >
					<td class="numConWrap conWrap"></td>
					<td class="addrConWrap conWrap">
						<button class="btnWrap" id="insert">새로운 주소 추가</button>	
						<button class="btnWrap" id="goMain">메인페이지로 이동</button>				
					</td>
				
				
				
			</table>
		</div>
		
		<c:import url="../template/footer.jsp"></c:import>
		
		<script type="text/javascript">
			$(".del").click(function(){
					var num=$(this).attr("title");
					$.post("./addressDelete",{num:num},function(data){
						data=data.trim();
						if(data>0){
								alert("삭제 성공");
							}else{
								alert("삭제 실패");
								}
						location.href="./addressList";
						});
				});
		
			$("#goMain").click(function(){
					location.href="../";
				});

			$("#insert").click(function(){
				var count=${list.size()};
				if(count>=5){
						alert("주소는 최대 5개까지 등록가능합니다");
					}else{
						location.href="./addressInsert";
						}
				
			});
		</script>
</body>
</html>