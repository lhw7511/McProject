<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:forEach items="${list}" var="dto">
			<li class="itemWrap">
				<div class="imgWrap">
					<img alt="" src="../upload/product/${dto.fileName}">
					<p class="proName">${dto.name}</p>
				</div>
				<div class="priceWrap">
					<div class="kcalWrap">
						<p style="color: #44900c; font-size: 12px;">가격 ₩ ${dto.price}</p>
						<p style="color: #3d3d3d; font-size: 14px;">${dto.kcal} Kcal</p>
					</div>
					<div class="btnWrap">
						<button type="button" class="selBtn">추가</button>
					</div>
				</div>
			</li>
			</c:forEach>
		
	