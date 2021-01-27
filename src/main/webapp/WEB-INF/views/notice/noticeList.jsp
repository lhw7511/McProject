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
	.c1{
 	cursor: pointer;
	}
</style>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="wrap">
	<p style="font-size: 18px; font-weight: bold; margin-bottom: 20px;">공지사항</p>
	<table class="table">
    <thead>
      <tr>
        <th>번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>등록일</th>
        <th>조회수</th>
      </tr>
    </thead>
    <tbody>
    	<c:forEach items="${list}" var="dto">
    	<tr>
        <td>${dto.num}</td>
        <td><a href="./noticeSelect?num=${dto.num}">${dto.title}</a></td>
        <td>${dto.writer}</td>
        <td>${dto.regDate}</td>
        <td>${dto.hit}</td>
      </tr>
    	</c:forEach>   
    </tbody>
  </table>
  <c:if test="${pager.startNum gt 1}">
    		<span class="c1" title="${pager.startNum-1}">[이전]</span>
    		</c:if>
 			<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
    				<span  class="c1" title="${i}" id="curPage${i}">${i}</span>
    		</c:forEach>
  			<c:if test="${pager.nextCheck}">
    			<span class="c1" title="${pager.lastNum+1}">[다음]</span>
    		</c:if>
    		
    		
    	<form action="./noticeList" id="frm">
	<div class="input-group">
			<input type="hidden" name="curPage" id="curPage">
    		 <select id="kind" class="input-group-sm" name="kind">
   				 	<option value="tt" >Title</option>
    				<option value="wr">Writer</option>
   					 <option value="con">Contents</option>			
  			</select>
    		<input id="search" type="text" class="form-control" name="search" placeholder="검색">
    		</div>
    		<div class="input-group-btn">
      		<button class="btn btn-default" type="submit">
       		 <i class="glyphicon glyphicon-search"></i>
     		 </button>
 	 </div>
 	 </form>
 	 <button class="btn btn-danger" id="writebtn" style="margin-top: 30px;">글쓰기</button>	
	</div>
	
	


	<c:import url="../template/footer.jsp"></c:import>
	
	<script type="text/javascript">

	$("#curPage"+${pager.curPage}).css("color","red");
	var kind ='${pager.kind}';
	var search='${pager.search}';
	if(kind==''){
		$("#kind").val("tt");
	}else{
		$("#kind").val(kind);
	}
	$("#search").val(search);
	
		$(".c1").click(function(){
			 var t=$(this).attr("title");
			$("#curPage").val(t);
			$("#frm").submit();
			});
	</script>
</body>
</html>