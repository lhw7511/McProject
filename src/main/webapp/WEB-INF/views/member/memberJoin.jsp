<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
       <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="https://www.mcdelivery.co.kr/kr//static/1607326511470/assets/00/css/main.css">
<link href="../css/template/header.css" rel="stylesheet">
<link href="../css/template/footer.css" rel="stylesheet">
<c:import url="../template/bootStrap.jsp"></c:import>
<style type="text/css">
.formWrap{
	width:700px;
	height: 1000px;
	background-color: white;
	margin: 50px auto 50px auto;
}
#joinBtn{
	background-image: linear-gradient(#ec4c34,#d21920); 
	color: #fff!important; 
	border: none;
	width: 150px;
	height: 50px;
	border-radius: 4px;
	font-size: 15px;
	font-weight: bold;
}

.error{
			color:red;
			font-size: 12px;
		}
</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="formWrap">
<p style="color: #d21920; font-size: 14px;">표시된 필수 항목을 입력해 주세요.</p>

<h3 style="color: #f3ad12;">회원정보</h3>
<p style="color: #b0b0b0; font-size: 12px;">* 필수 항목</p>


	<form:form modelAttribute="memberVO" id="frm"> 
	 <div class="form-group">
      <label for="name">*성함:</label>
      <form:input path="name" class="form-control" id="name"/>
      <form:errors path="name" cssClass="error" id="nameResult"></form:errors>
    </div>
    
     <div class="form-group">
      <label for="phone">*휴대전화 번호:</label>
      <form:input path="phone" class="form-control" id="phone"/>
      <form:errors path="phone" cssClass="error" id="phoneResult"></form:errors>
    </div>
    
    <div class="form-group">
      <label for="email">*이메일:</label>
      <form:input path="email" class="form-control" id="email"/>
      <form:errors path="email" cssClass="error" id="emailResult"></form:errors>
    </div>
    
    <h3 style="color: #f3ad12;">계정정보</h3>
     <div class="form-group">
      <label for="id">*아이디:</label>
      <form:input path="id" class="form-control" id="id"/>
      <form:errors path="id" cssClass="error" id="idResult"></form:errors>
    </div>
    
     <div class="form-group">
      <label for="pw">*비밀번호:</label>
      <form:password path="pw" class="form-control" id="pw"/>
      <form:errors path="pw" cssClass="error" id="pwResult"></form:errors>
    </div>
    
     <div class="form-group">
      <label for="pw2">*비밀번호 확인:</label>
      <form:password path="pw2" class="form-control" id="pw2"/>
      <form:errors path="pw2" cssClass="error" id="pw2Result"></form:errors>
    </div>
    
    
    <div class="form-group">
     <label for="addr">*배송지:</label>
     <input type="text" id="addr1" class="form-control" name="addr1" placeholder="주소 입력" required="required">
	
    </div>
    
      <div class="form-group">
	<button type="button" class="btn btn-default" onclick="execPostCode();"><i class="fa fa-search"></i> 우편번호 찾기</button>                              
    </div>
    
     <div class="form-group">
     
      <input type="text" id="addr2" class="form-control"  name="addr2" placeholder="건물명 입력" required="required">
		
    </div>
    <button type="submit" id="joinBtn" >계정 생성</button>
</form:form>
</div>

<c:import url="../template/footer.jsp"></c:import>

<script type="text/javascript">

$("#id").focus(function(){
	$("#idResult").text('');
});
$("#name").focus(function(){
	$("#nameResult").text('');
});
$("#pw").focus(function(){
	$("#pwResult").text('');
});
$("#pw2").focus(function(){
	$("#pw2Result").text('');
});
$("#phone").focus(function(){
	$("#phoneResult").text('');
});
$("#email").focus(function(){
	$("#emailResult").text('');
});



function execPostCode() {
    new daum.Postcode({
        oncomplete: function(data) {
           // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

           // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
           // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
           var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
           var extraRoadAddr = ''; // 도로명 조합형 주소 변수

           // 법정동명이 있을 경우 추가한다. (법정리는 제외)
           // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
           if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
               extraRoadAddr += data.bname;
           }
           // 건물명이 있고, 공동주택일 경우 추가한다.
           if(data.buildingName !== '' && data.apartment === 'Y'){
              extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
           }
           // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
           if(extraRoadAddr !== ''){
               extraRoadAddr = ' (' + extraRoadAddr + ')';
           }
           // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
           if(fullRoadAddr !== ''){
               fullRoadAddr += extraRoadAddr;
           }

           // 우편번호와 주소 정보를 해당 필드에 넣는다.
           console.log(data.zonecode);
           console.log(fullRoadAddr);
           
           
           $("[id=addr1]").val(data.zonecode+fullRoadAddr);
         
           
           /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
           document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
           document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
       }
    }).open();
}



</script>
</body>
</html>