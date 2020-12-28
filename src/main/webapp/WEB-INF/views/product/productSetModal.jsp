<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<!-- Modal -->
	<div class="modal fade" id="menuModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content"
				style="width: 420px; height: 300px; text-align: center;">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<button class="modelBtn" style="margin-left: 20px;" id="solo" type="button">단품주문</button>
				<button class="modelBtn" style="margin-left: 30px;" id="set" type="button">세트주문</button>
			</div>

		</div>
	</div>

	

	<div class="modal fade" id="setModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content" style="width: 900px; height: 900px;">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<div class="titleWrap2">사이드</div>

				<div class="sideWrap2">
					<c:choose>
						<c:when test="${pager.wCode eq 0 }">
							<div class="itemWrap2">
								<p>
									<input type="radio" name="side" class="side" checked="checked"
										value="후렌치 후라이">후렌치 후라이
								</p>
								<img alt="" src="../images/side7.png"
									style="width: 200px; height: 200px">
							</div>
						</c:when>

						<c:otherwise>
							<div class="itemWrap2">
								<p>
									<input type="radio" name="side" class="side" checked="checked"
										value="해쉬 브라운">해쉬 브라운
								</p>
								<img alt="" src="../images/mside1.png"
									style="width: 200px; height: 200px">
							</div>
						</c:otherwise>
					</c:choose>

					<div class="itemWrap2">
						<p>
							<input type="radio" name="side" class="side" value="골든 모짜렐라 치즈스틱">골든
							모짜렐라 치즈스틱
						</p>
						<img alt="" src="../images/side2.png"
							style="width: 200px; height: 200px">
					</div>

				</div>

				<div class="titleWrap2">음료</div>

				<div class="sideWrap2">
					<c:choose>
						<c:when test="${pager.wCode eq 0 }">
							<div class="itemWrap2">
								<p>
									<input type="radio" name="drink" class="drink"
										checked="checked" value="코카-콜라®">코카-콜라®
								</p>
								<img alt="" src="../images/drink2.png"
									style="width: 200px; height: 200px">
							</div>
							<div class="itemWrap2">
								<p>
									<input type="radio" name="drink" class="drink" value="스프라이트®">스프라이트®
								</p>
								<img alt="" src="../images/drink4.png"
									style="width: 200px; height: 200px">
							</div>
							<div class="itemWrap2">
								<p>
									<input type="radio" name="drink" class="drink" value="환타®">환타®
								</p>
								<img alt="" src="../images/drink5.png"
									style="width: 200px; height: 200px">
							</div>
							<div class="itemWrap2">
								<p>
									<input type="radio" name="drink" class="drink"
										value="코카-콜라® 제로">코카-콜라® 제로
								</p>
								<img alt="" src="../images/drink3.png"
									style="width: 200px; height: 200px">
							</div>
						</c:when>

						<c:otherwise>
							<div class="itemWrap2">
								<p>
									<input type="radio" name="drink" class="drink"
										checked="checked" value="아메리카노">아메리카노
								</p>
								<img alt="" src="../images/drink6.png"
									style="width: 200px; height: 200px">
							</div>
							<div class="itemWrap2">
								<p>
									<input type="radio" name="drink" class="drink" value="딸기 칠러">딸기
									칠러
								</p>
								<img alt="" src="../images/drink1.png"
									style="width: 200px; height: 200px">
							</div>
							<div class="itemWrap2">
								<p>
									<input type="radio" name="drink" class="drink" value="코카-콜라®">코카-콜라®
								</p>
								<img alt="" src="../images/drink2.png"
									style="width: 200px; height: 200px">
							</div>
							<div class="itemWrap2">
								<p>
									<input type="radio" name="drink" class="drink" value="스프라이트®">스프라이트®
								</p>
								<img alt="" src="../images/drink4.png"
									style="width: 200px; height: 200px">
							</div>
						</c:otherwise>
					</c:choose>



				</div>

				<div class="btnWrap2" style="font-size: 20px; font-weight: bold;">
					<p>
						가격 ₩ <input type="number" style="border: none" readonly="readonly"
							id="modalPrice">
					</p>
					<button id="insertBtn">카트에 담기</button>


				</div>
			</div>
				
		</div>
	</div>
    