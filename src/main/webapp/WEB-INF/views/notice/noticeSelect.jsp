<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>    
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
	.wrap{
		margin: 50px auto 50px auto;
		width: 1100px;
	}
</style>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="wrap">
	
	
		<p>글번호 : ${dto.num}</p>
		<p>제목 : ${dto.title}</p>
		<p>작성자: ${dto.writer}</p>
		<p>내용 : ${dto.contents}</p>
		<p>등록일 : ${dto.regDate}</p>
		<p>조회수 : ${dto.hit}</p>
		<button class="btn btn-info" id="up">수정</button>
		<button class="btn btn-danger" id="del">삭제</button>
	</div>
	<c:import url="../template/footer.jsp"></c:import>
	
	<script type="text/javascript">

	$("#del").click(function(){
		location.href="./noticeDelete?num=${dto.num}";
		});

	$("#up").click(function(){
		location.href="./noticeUpdate?num=${dto.num}";
		});
	</script>
</body>
</html>