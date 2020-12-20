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

.container{
	margin-top: 100px;
	margin-bottom: 100px;
}
.btn{
	background-image: linear-gradient(#ec4c34,#d21920); 
	color: #fff!important; 
	border: none;
	width: 150px;
	height: 50px;
	border-radius: 4px;
	font-size: 15px;
	font-weight: bold;
}
</style>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	
		<div class="container">
			<form action="./productInsert" method="post"  enctype="multipart/form-data">
			
			<div class="form-group">
     		 <label for="name">이름:</label>
     		 <input type="text" id="name" name="name" class="form-control" required="required">   
    		</div>
    		
    		<div class="form-group">
     		 <label for="img">이미지:</label>
     		 <input type="file" id="img" name="img" class="form-control" required="required">   
    		</div>
    		
    		<div class="form-group">
     		 <label for="price">가격:</label>
     		 <input type="number" id="price" name="price" class="form-control" required="required">    
    		</div>
    		
    		<div class="form-group">
     		 <label for="kcal">칼로리:</label>
     		 <input type="number" id="kcal" name="kcal" class="form-control" required="required">   
    		</div>
    		
    		<div class="form-group">
     		 <label for="mCode">메뉴코드:</label>
     		 <div>
     		 <select  style="width: 150px; height: 30px;" name="mCode">
  			  <option>1</option>
   			 <option>2</option>
   			 <option>3</option>
   			 <option>4</option>
  			</select>
     		 </div>  
    		</div>
    		
    		<div class="form-group">
     		 <label for="mCode">기간코드:</label>
     		 <div>
     		 <select  style="width: 150px; height: 30px;" name="wCode">
  			  <option>0</option>
   			 <option>1</option>
   			 <option>2</option>
  			</select>
     		 </div>  
    		</div>
    		 <button type="submit" class="btn" id="insertBtn">등록</button>
    		 </form>
		</div>
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>