<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

				<!--  mypage content -->
					<div class="profile-content">
						<!-- head부분 -->
						<h1 class="page-header">거래 관리</h1>
						<!-- content tab부분. -->
						<div>
							<ul class="nav nav-tabs nav-justified">
								<li class="active"><a href="#tabb1" data-toggle="tab">거래중</a></li>
								<li><a href="#tabb2" data-toggle="tab">거래완료</a></li>
								<li><a href="#tabb3" data-toggle="tab">거래 거래취소</a></li>
							</ul>
							<br>
						</div>

						<!-- list상세부분. -->
						<div class="tab-content">

							<div class="tab-pane fade in active" id="tabb1">
								<div class="container">
									<div class="row">
										<div class="col-md-8">
										<c:choose>
												<c:when test="${empty requestScope.list}">
													<tr>
														<td colspan="5">
															<p align="center">
																<b><span style="font-size: 9pt;">등록된 상품이 없습니다.</span></b>
															</p>
														</td>
													</tr>
													</c:when>
													<c:otherwise>
													<c:forEach items="${requestScope.list}" var="productDTO">
														<!-- 상품 한개 템플릿 -->
														<div class="panel panel-default  panel--styled"
															style="padding: 10px;" 
															onclick="location.href='${pageContext.request.contextPath}/order/readOrderDetail?productCode=${productDTO.productCode}'">
															<div align="right">
																<h4>마감날짜 : ${productDTO.deadlineDate}</h4>
															</div>

															<div class="row">
																<div class="col-xs-3 col-md-3 text-center">
																	<img
																		src="${pageContext.request.contextPath}/resources/images/159.jpg"
																		alt="bootsnipp" class="img-rounded img-responsive"
																		style="width: 189px; height: auto;" />
																</div>
																<div class="col-xs-9 col-md-9 section-box"
																	style="align-self: center;">
																	<h2>
																		${productDTO.productName} <a href="http://bootsnipp.com/" target="_blank"><span
																			class="glyphicon glyphicon-new-window"> </span></a>
																	</h2>
																	<div class="well well-sm">
																		<div class="col-sm-6" style="font-size: 15px;">
																			<small>출발지 : </small> ${productDTO.arrivalNation}
																		</div>
																		<small>도착지 : </small>${productDTO.departNation}<br>
																	</div>
																	<div class="row">
																		<div class="col-sm-5" style="font-size: 20px;">
																			${productDTO.productPrice}<small>원</small>
																		</div>
																		<div class="col-sm-7" align="right">
																			<button type="button" class="btn btn-info"
																				onclick="location.href='${pageContext.request.contextPath}/order/readOrderDetail?productCode=${productDTO.productCode}'">상세보기</button>
																		</div>
																	</div>

																</div>
															</div>
														</div>
														<!-- 상품 한개 템플릿 끝 -->

							</c:forEach>
							</c:otherwise>
							</c:choose>
										</div>
									</div>
								</div>
							</div>


							<div class="tab-pane fade" id="tabb2">
								<div class="container">
									<div class="row">
										<div class="col-md-8">
										
											
											<!-- 상품 한개 템플릿 -->
											<div class="panel panel-default  panel--styled" style="padding:10px;">
													<div align="right">
														<h4>마감날자 : 2018-07-02</h4>
													</div>

													<div class="row">
														<div class="col-xs-3 col-md-3 text-center">
															<img
																src="${pageContext.request.contextPath}/resources/images/159.jpg"
																alt="bootsnipp" class="img-rounded img-responsive"
																style="width: 189px; height: auto;" />
														</div>
														<div class="col-xs-9 col-md-9 section-box"
															style="align-self: center;">
															<h2>
																제품 제목 <a href="http://bootsnipp.com/" target="_blank"><span
																	class="glyphicon glyphicon-new-window"> </span></a>
															</h2>
															<div class="well well-sm">
																<div class="col-sm-6" style="font-size: 15px;">
																	<small>출발지 </small> 런던
																</div>
																<small>도착지 : </small>서울<br>
															</div>
															<div class="row">
																<div class="col-sm-5" style="font-size: 20px;">
																	금 액 : 25000<small>원</small>
																</div>
																<div class="col-sm-7" align="right">
																	<button type="button" class="btn btn-info">제안하기</button>
																</div>
															</div>

														</div>
													</div>
											</div>
											<!-- 상품 한개 템플릿 끝 -->
											
											
											
										</div>
									</div>
								</div>
							</div>


							<div class="tab-pane fade" id="tabb3">
								<div class="container">
									<div class="row">
										<div class="col-md-8">
										
										
											
											<!-- 상품 한개 템플릿 -->
											<div class="panel panel-default  panel--styled" style="padding:10px;">
													<div align="right">
														<h4>마감날자 : 2018-07-02</h4>
													</div>

													<div class="row">
														<div class="col-xs-3 col-md-3 text-center">
															<img
																src="${pageContext.request.contextPath}/resources/images/159.jpg"
																alt="bootsnipp" class="img-rounded img-responsive"
																style="width: 189px; height: auto;" />
														</div>
														<div class="col-xs-9 col-md-9 section-box"
															style="align-self: center;">
															<h2>
																제품 제목 <a href="http://bootsnipp.com/" target="_blank"><span
																	class="glyphicon glyphicon-new-window"> </span></a>
															</h2>
															<div class="well well-sm">
																<div class="col-sm-6" style="font-size: 15px;">
																	<small>출발지 </small> 베를린
																</div>
																<small>도착지 : </small>서울<br>
															</div>
															<div class="row">
																<div class="col-sm-5" style="font-size: 20px;">
																	금 액 : 25000<small>원</small>
																</div>
																<div class="col-sm-7" align="right">
																	<button type="button" class="btn btn-info">제안하기</button>
																</div>
															</div>

														</div>
													</div>
											</div>
											<!-- 상품 한개 템플릿 끝 -->
											
										</div>
									</div>
								</div>
							</div>





						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //projects -->

</body>
</html>