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
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
	
<style type="text/css">
	.container{
		margin: 50px auto 50px auto;
	}
</style>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>


<div class="container">
	<form action="./noticeUpdate" method="post">
	<input type="hidden" value="${dto.num}" name="num">
	
	<div class="form-group">
  	<label for="title">제목:</label>
 	<input type="text" class="form-control" id="title" name="title" required="required" value="${dto.title}">
 	</div>
 	
 	<div class="form-group">
  	<label for="writer">작성자:</label>
 	<input type="text" class="form-control" id="writer" name="writer" required="required" readonly="readonly" value="${dto.writer}">
    </div>
    
    
   <div class="form-group">
  <label for="contents">내용:</label>
  <textarea class="form-control"  id="contents" name="contents" required="required">${dto.contents}</textarea>
  </div>
  <button type="submit" class="btn btn-danger">수정</button>
  </form>
  </div>

  
<c:import url="../template/footer.jsp"></c:import>

<script type="text/javascript">
    $("#contents").summernote({
	height:500,
	callbacks:{
   	  //이미지를 올렸을때
        onImageUpload: function(files, editor) {
           var formData = new FormData(); //가상의 form태그 작성
           
           
               formData.append('file',files[0]); //파라미터 이름을 file로
          
       
           
           $.ajax({
              type:"POST",
              url:"./summernoteInsert",
              data:formData,
              enctype:"multipart/form-data",
              cache:false,
              contentType:false,
              processData: false,
              success: function(data) {
                	data=data.trim();
                	data="../upload/notice/"+data;
                	
                	$("#contents").summernote('editor.insertImage',data);
              }
           });
        },//upload end

        onMediaDelete: function(files){
      	  var fileName =$(files[0]).attr("src");
      	  var a=fileName.split("/");
      	  fileName=a[a.length-1];
      	 $.ajax({
      		 type:"POST",
	             url:"./summernoteDelete",
	             data:{
	            	 file:fileName
	             },
	             success:function(data){
	            	 if(data){
	            		 alert("삭제 성공");
	            	 }else{
	            		 alert("삭제 실패");
	            	 }
	             }
      	 });
      	 
       }
	}
	});

    $("#contents").summernote('justifyCenter');
</script>
</body>
</html>