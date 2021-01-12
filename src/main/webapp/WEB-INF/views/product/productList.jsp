<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet"
	href="https://www.mcdelivery.co.kr/kr//static/1607326511470/assets/00/css/main.css">
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<link href="../css/template/header.css" rel="stylesheet">
	<link href="../css/template/footer.css" rel="stylesheet">
	<c:import url="../template/bootStrap.jsp"></c:import>
<style type="text/css">
.wholeWrap {
	margin: 0 auto;
	width: 1140px;
	
}

.meWrap {
	width: 198px;
	float: left;
}

.listWrap {
	width: 628px;
	float: left;
}

.menuForm {
	width: 190px;
	height: 250px;
	background-color: #ffc423;
	border-radius: 5px;
	margin-top: 30px;
}

.menuUl {
	list-style: none;
	padding: 0px;
	margin: 0px;
}

.menuList {
	width: 190px;
	height: 50px;
	color: white;
	line-height: 50px;
	font-size: 15px;
	text-align: center;
	font-weight: bold;
}

.itemWrap {
	margin-top: 30px;
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

.imgWrap {
	width: 300px;
	height: 250px;
	background-color: white;
	text-align: center;
}

.priceWrap {
	width: 300px;
	height: 100px;
	background-image: linear-gradient(#f3f3f3, #fff 15px, #fff);
}

.proName {
	margin-top: 10px;
	font-size: 14px;
	color: #3d3d3d;
}

.kcalWrap {
	float: left;
	width: 150px;
	height: 100px;
	padding-left: 20px;
	padding-top: 30px;
}

.btnWrap {
	float: left;
	width: 150px;
	height: 100px;
	text-align: center;
	padding-top: 30px;
}

.selBtn {
	background-image: linear-gradient(#ffce47, #feba00);
	border-color: #d21920;
	color: #d21920 !important;
	width: 120px;
	height: 40px;
}

#moreBtn {
	cursor: pointer;
	margin-left: 269px;
	margin-top: 50px;
	margin-bottom: 50px;
}

.modelBtn {
	width: 150px;
	height: 70px;
	margin-top: 115px;
	background-image: linear-gradient(#ec4c34, #d21920);
	color: #fff !important;
	border: none;
	border-radius: 4px;
	font-size: 15px;
	font-weight: bold;
}

#insertBtn {
	background-image: linear-gradient(#ec4c34, #d21920);
	color: #fff !important;
	border: none;
	width: 100px;
	height: 40px;
	border-radius: 4px;
	font-size: 15px;
	font-weight: bold;
}

#orderBtn {
	background-image: linear-gradient(#ec4c34, #d21920);
	color: #fff !important;
	border: none;
	width: 250px;
	height: 50px;
	border-radius: 4px;
	font-size: 18px;
	font-weight: bold;
}

.titleWrap2 {
	width: 1000px;
	height: 30px;
	padding-left: 30px;
	margin: 0px auto 50px auto;
	font-size: 18px;
	font-weight: bold;
}

.btnWrap2 {
	width: 1000px;
	height: 100px;
	padding-left: 30px;
	margin: 0px auto 50px auto;
	font-size: 18px;
	font-weight: bold;
}

.sideWrap2 {
	width: 1000px;
	height: 250px;
	padding-left: 30px;
	margin: 0px auto 50px auto;
}

.itemWrap2 {
	width: 200px;
	height: 250px;
	border: 2px solid #ddd;
	float: left;
	margin-right: 20px;
	overflow: hidden;
}

.itemWrap2 p {
	border-bottom: 2px solid #ddd;
}

.orderWrap {
	width: 314px;
	margin-bottom:100px;
	float: left;
	margin-top: 30px;
	overflow: hidden;
	border: 1px solid #ddd;
}

.orderInfoWrap {
	width: 312px;
	height: 200px;
	overflow: hidden;
	border-bottom: 1px solid #ddd;
}

.cartWrap {
	width: 312px;
	height: 150px;
	border-bottom: 1px solid #ddd;
	
}
.cartImgWrap {
	width: 100px;
	height: 150px;
	
	float: left;
	text-align: center;
}

.cartInfoWrap {
	width: 210px;
	height: 150px;
	
	float: left;
	padding-left: 20px;
	padding-top: 20px;
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
					<li class="menuList"
						style="border-bottom: 1px solid #efaf00; box-shadow: 0 1px 1px #d69c00;"><a
						style="color: #a25716; cursor: pointer; text-decoration: none;"
						href="./productList?mCode=1" id="burgerKind"></a></li>
					<li class="menuList"
						style="border-bottom: 1px solid #efaf00; box-shadow: 0 1px 1px #d69c00;"><a
						style="color: #a25716; cursor: pointer; text-decoration: none;"
						href="./productList?mCode=2">스낵&사이드</a></li>
					<li class="menuList"
						style="border-bottom: 1px solid #efaf00; box-shadow: 0 1px 1px #d69c00;"><a
						style="color: #a25716; cursor: pointer; text-decoration: none;"
						href="./productList?mCode=3">음료</a></li>
					<li class="menuList"><a
						style="color: #a25716; cursor: pointer; text-decoration: none;"
						class="menuTag" href="./productList?mCode=4">디저트</a></li>
				</ul>
			</div>
		</div>
		<div class="listWrap">
			<ul class="menuUl" id="listCon">



			</ul>

			<img alt="" src="../images/btn_more.png" id="moreBtn">

		</div>
		
		<c:choose >
			<c:when test="${not empty member}">
					<div class="orderWrap">
			
			<div class="orderInfoWrap">
				<div
					style="width: 312px; height: 40px; text-align: center; font-size: 18px; line-height: 40px; border-bottom: 1px solid #ddd;">내
					주문 정보</div>
				<div
					style="width: 312px; height: 120px; ">
					<p
						style="color: #999999; font-size: 18px; margin-top: 20px; margin-left: 10px;">배달
						주소</p>
					<select style="width: 292px; height: 40px; margin-left: 10px;" id="addr">
						<c:forEach items="${addressList}" var="vo">
							<option>${vo.addr}</option>
						</c:forEach>
					</select>
				</div>

				
			</div>
			
			<div id="carts">
				
			</div>
			
			
		</div>
			</c:when>
			
			<c:otherwise>
				<div class="orderWrap">
					<a><img alt="" src="../images/orderPicture.png" style="width: 312px; height: 848px;"></a> 
				</div>
			</c:otherwise>
			
		</c:choose>
		
			
		
		
	</div>
	
	<c:import url="./productSetModal.jsp"></c:import>





	<c:import url="../template/footer.jsp"></c:import>

	<script type="text/javascript">
	if(${pager.wCode eq 1}){
			
			$("#burgerKind").text("맥모닝&세트");
		}else{
			$("#burgerKind").text("버거&세트");
			}
	var num;
	var price;


	
	$("#carts").on("click","#orderBtn",function(){
		var p= $("#finalPrice").val()*1;
		if(p>10000){
			var IMP = window.IMP; 
			IMP.init("imp96183071"); 

			IMP.request_pay({
			    pg : 'inicis', // version 1.1.0부터 지원.
			    pay_method : 'card',
			    merchant_uid : 'merchant_' + new Date().getTime(),
			    name : '주문명:결제테스트',
			    amount : p,
			    buyer_email : 'iamport@siot.do',
			    buyer_name : '구매자이름',
			    buyer_tel : '010-1234-5678',
			    buyer_addr : '서울특별시 강남구 삼성동',
			    buyer_postcode : '123-456',
			    m_redirect_url : 'https://www.yourdomain.com/payments/complete'
			}, function(rsp) {
			    if ( rsp.success ) {
			    	var addr=$("#addr").val();
			        $.ajax({
						url:"../order/orderInsert",
						type:"POST",
						data:{
							num:rsp.imp_uid,
							finalPrice:rsp.paid_amount,
							addr:addr
							},
				        success:function(data){
								data=data.trim();
								if(data>0){
										alert("결제 성공!");
										location.href="../";
									}else{
										alert("결제 실패!");
										}
					        }
				        });
			    } else {
			        var msg = '결제에 실패하였습니다.';
			        msg += '에러내용 : ' + rsp.error_msg;
			        alert(msg);
			       
			    }
			    
			});
			}else{
				alert("10000원이상부터 주문가능합니다");
				}
		
		});


	
	$("#solo").click(function() {
		
		$.post("../cart/cartInsert", {
			productNum : num,
			price : price
		}, function(data) {
			data = data.trim();
			if (data > 0) {
				alert("카트에 추가되었습니다");
			} else {
				alert("카트에 추가실패하였습니다");
			}
			
			$('#menuModal').modal("hide"); //닫기 
			getCartList();
		});
	});
	
	$("#set").click(function() {
		$('#menuModal').modal("hide"); //닫기 
		$('#setModal').modal("show");
		$('#modalPrice').val(price * 1 + 1700);	
	});
	$("#insertBtn").click(function() {

		var side;
		var drink;
		$(".side").each(function() {

			if ($(this).prop("checked")) {
				side = $(this).val();

			}
		});

		$(".drink").each(function() {

			if ($(this).prop("checked")) {
				drink = $(this).val();

			}
		});

		$.post("../cart/cartInsert", {
			productNum : num,
			price : price,
			side : side,
			drink : drink,
			setCheck : 1
		}, function(data) {
			data = data.trim();
			if (data > 0) {
				alert("카트에 추가되었습니다");
			} else {
				alert("카트에 추가실패하였습니다");
			}
			$('#setModal').modal("hide");
			getCartList();
		});

	});
		
	
	
		$("#listCon").on("click", ".selBtn", function() {
			if(${empty member}){
				$('#myModal').modal("show"); //닫기 
				}else{
					num = $(this).attr("title");
					price = $(this).val();
					if (mCode == 1) {
						
						
						$('#menuModal').modal("show");
						


						
						
						
					

					} else {
						
						$.post("../cart/cartInsert", {
							productNum : num,
							price : price
						}, function(data) {
							data = data.trim();
							if (data > 0) {
								alert("카트에 추가되었습니다");
								
							} else {
								alert("카트에 추가실패하였습니다");
								
							}
							getCartList();
						});
					}
					}
			

		});

		var curPage = 1;
		var mCode = ${pager.mCode};
		var totalPage = ${pager.totalPage};
		getList(curPage, mCode);
		getCartList();
		
		
		$("#moreBtn").click(function() {
			curPage = curPage + 1;
			getList(curPage, mCode);
		});
		
		

		function getList(curPage, mCode) {

			$.post("./listPlus", {
				curPage : curPage,
				mCode : mCode
			}, function(data) {
				$("#listCon").append(data);
			});
			if (curPage == totalPage) {
				$("#moreBtn").css("visibility", "hidden");
			}

		}
		var finalPrice=0;
		
		function getCartList(){
			$.post("../cart/cartList",{},function(data){
				 $("#carts").empty();
				 $("#carts").append(data);
				});
			
			
		}

		$(".orderWrap").on("click",".removeBtn",function(){
				var num=$(this).attr("title");
				$.post("../cart/cartDelete",{num:num},function(data){
					if(data>0){
							alert("삭제되었습니다");
							getCartList();
						}else{
							alert("삭제되지 못하였습니다");
							getCartList();
							}
					});
				
			});
			</script>
</body>
</html>