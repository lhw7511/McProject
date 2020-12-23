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
	.wholeWrap{
		margin: 0 auto;
		width: 1140px;
		
		background-color: yellow;
		
	}
	.meWrap{
		width:198px;
		
		float: left;
		
	}
	.listWrap{
		width:628px;
		
		float: left;
	
	}
	.orderWrap{
		width:314px;
		height : 300px;
		float: left;
		margin-top: 30px;
		padding-left: 7px;
	}
	.menuForm{
		width: 190px;
		height: 250px;
		background-color: #ffc423;
		border-radius: 5px;
		margin-top: 30px;
		
	}
	.menuUl{
		list-style: none;
		padding:0px;
		margin:0px;
		
		
	}
	.menuList{
		width: 190px;
		height: 50px;
		
   		color: white;
   		line-height: 50px;
   		font-size: 15px;
   		text-align: center;
   		font-weight: bold;
	}
	
	.itemWrap{
	 margin-top:30px;
	 width: 300px;
	 height: 350px;
	 background-color: white;
	 float: left;
	 border: 1px solid #ddd;
	 overflow: hidden;
	}
	.itemWrap:nth-child(2n) {
	margin-left: 14px;
	}
	.imgWrap{
	width: 300px;
	height: 250px;
	background-color: white;
	text-align: center;
	}
	.priceWrap{
	width: 300px;
	height: 100px;
	background-image: linear-gradient(#f3f3f3,#fff 15px,#fff);
	}
	.proName{
	margin-top: 10px; 
	font-size: 14px; 
	color: #3d3d3d;
	}
	.kcalWrap{
	float: left;
	width: 150px;
	height: 100px;
	
	padding-left: 20px;
	padding-top: 30px;
	}
	.btnWrap{
	float: left;
	width: 150px;
	height: 100px;
	
	text-align: center;
	padding-top: 30px;
	}
	.selBtn{
		background-image: linear-gradient(#ffce47,#feba00);
		border-color: #d21920;
		color: #d21920!important;
		width: 120px;
		height: 40px;
	
	}
	#moreBtn{
		cursor: pointer;
		margin-left: 269px;
		margin-top: 50px;
		margin-bottom: 50px;
		
	}
	.modelBtn{
		width: 150px;
		height:70px;
		margin-top: 115px;
		background-image: linear-gradient(#ec4c34,#d21920); 
		color: #fff!important; 
		border: none;
		border-radius: 4px;
	font-size: 15px;
	font-weight: bold;
	}
	
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


.titleWrap2{
	width: 1000px;
	height: 30px;
	padding-left:30px;
	margin: 0px auto 50px auto;
	font-size: 18px;
	font-weight: bold;
}


.btnWrap2{
	width: 1000px;
	height: 100px;
	padding-left:30px;
	margin: 0px auto 50px auto;
	font-size: 18px;
	font-weight: bold;
}
.sideWrap2{
	width: 1000px;
	height: 250px;
	padding-left:30px;
	margin: 0px auto 50px auto;
}
.itemWrap2{
	width: 200px;
	height: 250px;
	 border: 2px solid #ddd;
	float: left;
	margin-right: 20px;
	overflow: hidden;
	
}
.itemWrap2 p{
	
	 border-bottom: 2px solid #ddd;
	
	
}
		
</style>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<!--<a href="./productInsert">상품등록</a>-->
	
	<div class="wholeWrap">
		<div class="meWrap">
			<div class="menuForm">
				<ul class="menuUl">
					<li class="menuList" style="box-shadow: 0 3px 3px #d69c00;">메뉴</li>
					<li class="menuList" style="border-bottom: 1px solid #efaf00; box-shadow: 0 1px 1px #d69c00;"><a style="color: #a25716; cursor: pointer; text-decoration: none;" href="./productList?mCode=1">버거&세트</a></li>
					<li class="menuList" style="border-bottom: 1px solid #efaf00; box-shadow: 0 1px 1px #d69c00;"><a style="color: #a25716;  cursor: pointer; text-decoration: none;" href="./productList?mCode=2">스낵&사이드</a></li>
					<li class="menuList" style="border-bottom: 1px solid #efaf00; box-shadow: 0 1px 1px #d69c00;"><a style="color: #a25716;  cursor: pointer; text-decoration: none;" href="./productList?mCode=3">음료</a></li>
					<li class="menuList" ><a style="color: #a25716;  cursor: pointer; text-decoration: none; " class="menuTag" href="./productList?mCode=4">디저트</a></li>
				</ul>
			</div>
		</div>
		<div class="listWrap">
			<ul class="menuUl" id="listCon">
			
			
					
			</ul>
			
			<img alt="" src="../images/btn_more.png" id="moreBtn" >
			
		</div>
		<div class="orderWrap">
			<a><img alt="" src="../images/orderPicture.png"></a>
		</div>
	</div>
	
    
     
     <!-- Modal -->
  <div class="modal fade" id="menuModal" role="dialog">
    <div class="modal-dialog">
     
      <!-- Modal content-->
      <div class="modal-content" style="width: 420px; height: 300px; text-align: center; ">
      <button type="button" class="close" data-dismiss="modal">&times;</button>
       <button class="modelBtn"  style="margin-left: 20px;" id="solo">단품주문</button>
        <button class="modelBtn" style="margin-left: 30px;" id="set">세트주문</button>
      </div>
      
    </div>
  </div>
   
   
   
   <div class="modal fade" id="setModal" role="dialog">
    <div class="modal-dialog">
     
      <!-- Modal content-->
      <div class="modal-content" style="width: 900px; height: 900px;">
      <button type="button" class="close" data-dismiss="modal">&times;</button>
  		<div class="titleWrap2">
		사이드
	</div>

	<div class="sideWrap2">
		<c:choose>
			<c:when test="${pager.wCode eq 0 }">
				<div class="itemWrap2">
			<p><input type="radio" name="side" class="side" checked="checked" value="후렌치 후라이">후렌치 후라이</p>
			<img alt="" src="../images/side7.png" style="width: 200px; height: 200px">
		</div>
			</c:when>
			
			<c:otherwise>
					<div class="itemWrap2">
			<p><input type="radio" name="side" class="side" checked="checked" value="해쉬 브라운">해쉬 브라운</p>
			<img alt="" src="../images/mside1.png" style="width: 200px; height: 200px">
		</div>
			</c:otherwise>
		</c:choose>
		
		<div class="itemWrap2">
			<p><input type="radio" name="side" class="side"  value="골든 모짜렐라 치즈스틱">골든 모짜렐라 치즈스틱</p>
			<img alt="" src="../images/side2.png" style="width: 200px; height: 200px">
		</div>
		
	</div>

	<div class="titleWrap2">
		음료
	</div>

	<div class="sideWrap2">
		<c:choose>
			<c:when test="${pager.wCode eq 0 }">
				<div class="itemWrap2">
			<p><input type="radio" name="drink" class="drink" checked="checked" value="코카-콜라®">코카-콜라®</p>
			<img alt="" src="../images/drink2.png" style="width: 200px; height: 200px">
		</div>
		<div class="itemWrap2">
			<p><input type="radio" name="drink" class="drink"  value="스프라이트®">스프라이트®</p>
			<img alt="" src="../images/drink4.png" style="width: 200px; height: 200px">
		</div>
		<div class="itemWrap2">
			<p><input type="radio" name="drink" class="drink" value="환타®">환타®</p>
			<img alt="" src="../images/drink5.png" style="width: 200px; height: 200px">
		</div>
		<div class="itemWrap2">
			<p><input type="radio" name="drink" class="drink" value="코카-콜라® 제로">코카-콜라® 제로</p>
			<img alt="" src="../images/drink3.png" style="width: 200px; height: 200px">
		</div>
			</c:when>
			
			<c:otherwise>
				<div class="itemWrap2">
			<p><input type="radio" name="drink" class="drink" checked="checked" value="아메리카노">아메리카노</p>
			<img alt="" src="../images/drink6.png" style="width: 200px; height: 200px">
		</div>
		<div class="itemWrap2">
			<p><input type="radio" name="drink" class="drink" value="딸기 칠러">딸기 칠러</p>
			<img alt="" src="../images/drink1.png" style="width: 200px; height: 200px">
		</div>
			<div class="itemWrap2">
			<p><input type="radio" name="drink" class="drink" value="코카-콜라®">코카-콜라®</p>
			<img alt="" src="../images/drink2.png" style="width: 200px; height: 200px">
		</div>
		<div class="itemWrap2">
			<p><input type="radio" name="drink" class="drink" value="스프라이트®">스프라이트®</p>
			<img alt="" src="../images/drink4.png" style="width: 200px; height: 200px">
		</div>
			</c:otherwise>
		</c:choose>
	
		
		
	</div>
	
	<div class="btnWrap2" style="font-size: 20px; font-weight: bold;" >
		<p>가격 ₩ <input type="number" style="border: none" readonly="readonly" id="modalPrice"> </p>
		<button id="insertBtn">카트에 담기</button>
	 
	
	</div>
      </div>
      
    </div>
  </div>
   
   
   
     
     
	<c:import url="../template/footer.jsp"></c:import>
	
	<script type="text/javascript">
	
	
	
	$("#listCon").on("click",".selBtn",function(){
		if(mCode==1){
				 var num=$(this).attr("title");
				 var price=$(this).val();			
					$('#menuModal').modal("show");  
			    $("#set").click(function(){
			    		$('#menuModal').modal("hide"); //닫기 
			    		$('#setModal').modal("show"); 
			    		$('#modalPrice').val(price*1+1700);
			    		$("#insertBtn").click(function(){
			    			
			    			
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
			    				 $('#setModal').modal("hide"); 
			    				});	
			    			 
			    		}); 
				    });
			    $("#solo").click(function(){
			    	
					
					 $.post("../cart/cartInsert",{productNum:num,price:price},function(data){
						 data=data.trim();
						 if(data>0){
								alert("카트에 추가되었습니다");
							 }else{
								 alert("카트에 추가실패하였습니다");	
								 }
							$('#menuModal').modal("hide"); //닫기 
						});
				    });
			

			
			}else{
				 var num=$(this).attr("title");
				 var price=$(this).val();
				 $.post("../cart/cartInsert",{productNum:num,price:price},function(data){
					 data=data.trim();
					 if(data>0){
							alert("카트에 추가되었습니다");
						 }else{
							 alert("카트에 추가실패하였습니다");	
							 }
					});
				}
		
		
			 
		});



	
	  var curPage=1;
	  var mCode=${pager.mCode};	 
	  var totalPage=${pager.totalPage};
	  getList(curPage,mCode);
	  $("#moreBtn").click(function(){
			curPage=curPage+1;
			 getList(curPage,mCode);		
		});
	
	  
		 function getList(curPage,mCode){
			
			 $.post("./listPlus",{curPage:curPage,mCode:mCode},function(data){
					$("#listCon").append(data);
				});
				if(curPage==totalPage){
					$("#moreBtn").css("visibility","hidden");
					}
				
			 }

		
	
	</script>
</body>
</html>