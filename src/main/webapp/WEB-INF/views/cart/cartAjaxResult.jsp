<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div
					style="width: 312px; height: 180px; background-color: white; padding-top: 30px;
					border-bottom: 1px solid #ddd;
					">
					<span
						style="font-size: 20px; font-weight: bold; margin-left: 31px;">총
						주문합계:</span> <input type="text" id="finalPrice" value="${finalPrice}"
						style="border: none; font-size: 20px; font-weight: bold; color: #44900c; width: 120px"
						readonly="readonly">
					<button id="orderBtn" style="margin-left: 31px; margin-top: 40px;">결제</button>
				</div>
 <c:forEach items="${list}" var="dto">
 
 <div class="cartWrap">
 					
				<div class="cartImgWrap">
					<img alt="" src="../upload/product/${dto.productVO.fileName}" style="width: 100px; height: 100px;">
					<i class="mcd mcd-remove icon removeBtn" style=" cursor: pointer;" title="${dto.num}"></i>
				</div>
				<div class="cartInfoWrap">
					
					<p>
					<c:choose>
					<c:when test="${dto.setCheck eq 1}">세트-</c:when>
					<c:otherwise>단품-</c:otherwise>
					</c:choose>
					
					${dto.productVO.name}			
					(${dto.amount}개)</p>
					<c:if test="${dto.setCheck eq 1}">
					<ul>
						<li>${dto.drink}</li>
						<li>${dto.side}</li>
					</ul>
					</c:if>
				
					<p style="color: #44900c; font-size: 15px; margin-left: 130px; font-weight: bold;">
						${dto.totalPrice}원
					</p>
				</div>
			</div>
			
 
 </c:forEach>
 		
	
	