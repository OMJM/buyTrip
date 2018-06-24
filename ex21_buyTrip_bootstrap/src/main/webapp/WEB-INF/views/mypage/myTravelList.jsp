<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


					<div class="profile-content">
						<!-- head부분 -->
						<h1 class="page-header">여행 관리</h1>
					
					
					
						<!-- content tab부분. -->
						<div>
							<ul class="nav nav-tabs nav-justified">
								<li class="active"><a href="#tabb1" data-toggle="tab">여행 계획</a></li>
								<li><a href="#tabb2" data-toggle="tab">과거 여행</a></li>
							</ul>
							<br>
						</div>

						<!-- list상세부분. -->
						<div class="tab-content">
						
						<!-- 여행계획(현재 부분) -->
							<div class="tab-pane fade in active" id="tabb1">
								<div class="container">
								
												
												<!-- 여행지 폼 -->
													
												<c:choose>
												<c:when test="${empty requestScope.travelList}">
													<tr>
														<td colspan="5">
															<p align="center">
																<b><span style="font-size: 9pt;">등록된 상품이 없습니다.</span></b>
															</p>
														</td>
													</tr>
													</c:when>
													<c:otherwise>
													<c:forEach items="${requestScope.travelList}" var="travelDTO">
														<div class="row">
										<div class="col-md-8">
											<div class="panel panel-default  panel--styled">
													<div class="panel-body" onclick="location.href='${pageContext.request.contextPath}/travel/mytravelsearchProduct?arrNation=${travelDTO.arrivalNation}&deNation=${travelDTO.departNation }'">
													<div class="col-md-12 panelTop">
														<div class="col-md-4">
															<img class="img-responsive"
																src="${pageContext.request.contextPath}/resources/images/159.jpg"
																alt="" />
														</div>
														<div class="col-md-8">
															<h2>${travelDTO.arrivalNation} - ${travelDTO.departNation}</h2>
															<p>${travelDTO.arrivalDate}</p>
															<hr>
															등록 된 상품 개수 : <span style="font-size: 10px;">${travelDTO.countProduct}</span>
														</div>
														</div>	
												</div>
												</div>
										</div>
									</div>
													
													<!-- 여행지폼 완료 -->
														</c:forEach>
													</c:otherwise>
												</c:choose>
												
											
								</div>
							</div>
						
						
						
						<!-- list상세부분.(과거여행) -->
							<div class="tab-pane fade" id="tabb2">
								<div class="container">
									<!-- 여행지 폼 -->
													
												<c:choose>
												<c:when test="${empty requestScope.finishList}">
													<tr>
														<td colspan="5">
															<p align="center">
																<b><span style="font-size: 9pt;">등록된 상품이 없습니다.</span></b>
															</p>
														</td>
													</tr>
													</c:when>
													<c:otherwise>
													<c:forEach items="${requestScope.finishList}" var="travelDTO">
														<div class="row">
										<div class="col-md-8">
											<div class="panel panel-default  panel--styled">
													<div class="panel-body">
													<div class="col-md-12 panelTop">
														<div class="col-md-4">
															<img class="img-responsive"
																src="${pageContext.request.contextPath}/resources/images/159.jpg"
																alt="" width="150px" height="150px" />
														</div>
														<div class="col-md-8">
															<h2>${finishList.arrivalNation} - ${finishList.departNation}</h2>
															<p>${finishList.arrivalDate}</p>
															<hr>
															등록 된 상품 개수 : <span style="font-size: 10px;">${finishList.countProduct}</span>
														</div>
														</div>	
												</div>
												</div>
										</div>
									</div>
													
													<!-- 여행지폼 완료 -->
														</c:forEach>
													</c:otherwise>
												</c:choose>
												
											
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