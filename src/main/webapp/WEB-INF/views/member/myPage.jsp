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
  margin: 50px auto 50px auto;
  width: 700px;
  height: 700px;
 
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

#pwResult{
 	font-size: 11px;
 	margin-bottom: 20px;
 }
 #pw2Result{
 	font-size: 11px;
 	margin-bottom: 20px;
 }
</style>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="formWrap">
	<h3 style="color: #f3ad12;">회원정보</h3>
	<p style="color: #b0b0b0; font-size: 12px;">* 필수 항목</p>
	<form action="./myPage" method="post" id="frm">
	<div class="form-group">
      <label for="name">*성함:</label>
      <input type="text" id="name" name="name" class="form-control" value="${vo.name}">   
    </div>
    
    <div class="form-group">
      <label for="phone">*휴대전화 번호:</label>
      <input type="text" id="phone" name="phone" class="form-control" value="${vo.phone}">   
    </div>
    <div class="form-group">
      <label for="email">*이메일:</label>
      <input type="email" id="email" name="email" class="form-control" value="${vo.email}">   
    </div>
    
    <h3 style="color: #f3ad12;">계정정보</h3>
    
    <div class="form-group">
      <label for="id">*아이디:</label>
      <input type="text" id="id" name="id" class="form-control" value="${vo.id}" readonly="readonly">   
    </div>
    
    <div class="form-group">
      <label for="pw">*비밀번호:</label>
      <input type="password" id="pw" name="pw" class="form-control">   
    </div>
    <div id="pwResult"></div>
    <div class="form-group">
      <label for="pw2">*비밀번호 확인:</label>
      <input type="password" id="pw2" name="pw2" class="form-control">   
    </div>
    <div id="pw2Result"></div>
    <button type="button" class="btn" id="updateBtn">수정</button>
     <button type="button" class="btn" id="delBtn">회원탈퇴</button>
     </form>
	</div>
	
	<c:import url="../template/footer.jsp"></c:import>
	
	
	<script type="text/javascript">
	   var nameCheck=true;
	   var phoneCheck=true;
	   var emailCheck =true;
	   var pwCheck=false;
	   var pw2Check=false;
		$("#updateBtn").click(function(){
			nameCk();
			phoneCk();
			emailCheck=isEmail($("#email").val());
			if(nameCheck&&phoneCheck&&emailCheck&&pwCheck&&pw2Check){
					$("#frm").submit();
				}else if(!nameCheck){
						alert("사용할 수 없는 이름입니다");
						$("#name").focus();
					}
				else if(!phoneCheck){
					alert("사용할 수 없는 번호입니다");
					$("#phone").focus();
				}
				else if(!emailCheck){
					alert("이메일 형식이 아닙니다");
					$("#email").focus();
				}else if(!pwCheck){
					alert("사용할 수 없는 비밀번호입니다");
					$("#pw").focus();
				}else if(!pw2Check){
					alert("비밀번호가 일치하지 않습니다");
					$("#pw2").focus();
				}
			});

		$("#delBtn").click(function(){
			if(pwCheck&&pw2Check){
					$.post("./memberDelete",{pw : $("#pw").val(),id : $("#id").val()},function(data){

						data=data.trim();
						
						 if(data==0){
							 alert("패스워드가 일치하지 않습니다!");
						 }else{
							 alert("회원탈퇴되었습니다");
							 location.href="../";
						 }
						});
				}else if(!pwCheck){
					alert("사용할 수 없는 비밀번호입니다");
					$("#pw").focus();
				}else if(!pw2Check){
					alert("비밀번호가 일치하지 않습니다");
					$("#pw2").focus();
				}
			});
		function nameCk(){
				nameCheck=false;
				var l = $("#name").val().length;
				if(l>=2){
						nameCheck=true;
					}
			}
		function phoneCk(){
				phoneCheck=false;
				var p = $("#phone").val().length;
				if(p>0){
					phoneCheck=true;			
					}
			}
		
		function isEmail(asValue) {
			emailCheck=false;
			var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

			return regExp.test(asValue); // 형식에 맞는 경우 true 리턴	

		}

		$("#pw").blur(function(){
				pwCheck=false;
				var l= $(this).val().length;
				if(l>=6&&l<=14){
					pwCheck=true;
					$("#pwResult").text("사용가능한 비밀번호입니다");
					   $("#pwResult").css("color","blue");					
					}else{
						$("#pwResult").text("사용할수 없는 비밀번호입니다");
						   $("#pwResult").css("color","red");	
						}
				if($("#pw2").val().length>0){
						if($(this).val()!=$("#pw2").val()){
							pw2Check=false;
							$("#pw2Result").text("비밀번호가 일치하지않습니다");
							   $("#pw2Result").css("color","red");
							}
					}
			});

		
		
		$("#pw2").keyup(function(){
			pw2Check=false;
			   if($(this).val()==$("#pw").val()){
					$("#pw2Result").text("비밀번호가 일치합니다");
					$("#pw2Result").css("color","blue");
					pw2Check=true;
				   }else{
					   $("#pw2Result").text("비밀번호가 일치하지않습니다");
					   $("#pw2Result").css("color","red");
					   }
			});
		

		
		
	</script>
</body>
</html>