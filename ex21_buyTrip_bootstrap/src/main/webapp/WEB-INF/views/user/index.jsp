<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- banner-->
<div class="w3layouts-banner-slider">
	<div class="container">
		<div class="slider">
			<div class="callbacks_container">
				<ul class="rslides callbacks callbacks1" id="slider4">
					<li>
						<div class="top-agileits-banner">
							<div class="agileits-banner-info">
								<h3>여행 비용을 마련하세요</h3>
							</div>
							<div class="agileinfo-social-grids">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-rss"></i></a> <a href="#"><i class="fa fa-vk"></i></a>
							</div>
							<div class="clearfix"></div>
						</div>
					</li>
					<li>
						<div class="top-agileits-banner">
							<div class="agileits-banner-info">
								<h3>더 저렴하게 직구하세요</h3>
							</div>
							<div class="agileinfo-social-grids">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-rss"></i></a> <a href="#"><i class="fa fa-vk"></i></a>
							</div>
							<div class="clearfix"></div>
						</div>
					</li>
					<li>
						<div class="top-agileits-banner">
							<div class="agileits-banner-info">
								<h3>새로운 친구를 찾으세요</h3>
							</div>
							<div class="agileinfo-social-grids">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-rss"></i></a> <a href="#"><i class="fa fa-vk"></i></a>
							</div>
							<div class="clearfix"></div>
						</div>
					</li>
					<li>
						<div class="top-agileits-banner">
							<div class="agileits-banner-info">
								<h3>시작해보세요 BuyTrip</h3>
							</div>
							<div class="agileinfo-social-grids">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-rss"></i></a> <a href="#"><i class="fa fa-vk"></i></a>
							</div>
							<div class="clearfix"></div>
						</div>
					</li>
				</ul>
			</div>
			<div class="clearfix"></div>
			<script>
				// You can also use "$(window).load(function() {"
				$(function() {
					// Slideshow 4
					$("#slider4")
							.responsiveSlides(
									{
										auto : true,
										pager : true,
										nav : false,
										speed : 500,
										namespace : "callbacks",
										before : function() {
											$('.events')
													.append(
															"<li>before event fired.</li>");
										},
										after : function() {
											$('.events')
													.append(
															"<li>after event fired.</li>");
										}
									});
				});
			</script>
			<!--banner Slider starts Here-->
		</div>
	</div>
</div>
<!-- /banner-->

<!-- services -->
<div class="services">
	<div class="container">
		<div class="ser-wthree">
			<div class="services-agileinfo" style="margin-left: 10%">
				<div class="col-sm-6 col-xs-6 services-w3grids ">
					<div class="ser-agile" onclick="location.href='${pageContext.request.contextPath}/order'">
						<div class="services-icon hvr-radial-in">
							<i class="fa fa-anchor" aria-hidden="true"></i>
						</div>
						<h4>주문하기</h4>
						<p> 원하는 물건이 있나요? 배달해 드릴게요!  </p>
					</div>
				</div>
				
				<div class="col-sm-6 col-xs-6 services-w3grids col-sm-push-2">
					<div class="ser-agile" location.href='${pageContext.request.contextPath}/travel'>
						<div class="services-icon hvr-radial-in">
							<i class="fa fa-line-chart" aria-hidden="true"></i>
						</div>
						<h4>배달하기</h4>
						<p>여행 경비를 벌고 싶으세요? 클릭하세요!</p>
					</div>
				</div>
				
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</div>
<!-- //services -->

<!-- reservation -->
	<div class="reservation-info"> 
		<div class="reservation">
			<div class="container">			
				  
				<div class="col-md-8 book-reservation">
				<h2 class="agileits-title w3title2">혹시 금방 귀국할 예정인가요?</h2>
				<h4>여행을 하면서 돈을 벌어 보세요!</h4>
				<p> 지금 어느 나라에 있나요? </p>
					<form action="#" method="post">  
						
						<div class="col-md-7 form-left">
							<select class="form-control">
								<option>일본</option>
								<option>중국</option>
								<option>미국</option> 
								<option>대만</option>
								<option>베트남</option>
								<option>그 외 나라들...</option>
							</select>
						</div>
					
						
						<div class="col-md-5 make">
							<input type="submit" value="검색하기">
						</div>
						<div class="clearfix"> </div>
					</form> 
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>	
	<!-- //reservation -->



<!-- team -->
	<div class="team">
		<div class="container">
			<h3 class="agileits-title w3title1">Meet Our Team</h3>
			<p class="top-p">Mauris vestibulum ac sem at ornare. Praesent feugiat metus pellentesque, finibus massa quis, viverra lacus. Ut nisi ante, dignissim sit amet justo pretium.</p>
			<div class="agile_team_grids">
				<div class="col-md-4 agile_team_grid agile1">
					<div class="agile_team_grid_main">
						<img src="${pageContext.request.contextPath}/resources/images/t1.jpg" alt=" " class="img-responsive" />
						<div class="p-mask">
							<ul class="social-icons">
								<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="agile_team_grid1">
						<h4>Williamson</h4>
						<p>Managing Director</p>
					</div>
				</div>
				<div class="col-md-4 agile_team_grid agile2">
					<div class="agile_team_grid_main">
						<img src="${pageContext.request.contextPath}/resources/images/t2.jpg" alt=" " class="img-responsive" />
						<div class="p-mask">
							<ul class="social-icons">
								<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="agile_team_grid1">
						<h4>Linda Carl </h4>
						<p>Manager</p>
					</div>
				</div>
				<div class="col-md-4 agile_team_grid agile3">
					<div class="agile_team_grid_main">
						<img src="${pageContext.request.contextPath}/resources/images/t3.jpg" alt=" " class="img-responsive" />
						<div class="p-mask">
							<ul class="social-icons">
								<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="agile_team_grid1">
						<h4>Harington</h4>
						<p>General Manager</p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //team -->
<!-- modal -->
	<div class="modal about-modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header"> 
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
					<h4 class="modal-title">Prefabrication</h4>
				</div> 
				<div class="modal-body">
					<div class="agileits-w3layouts-info">
						<img src="${pageContext.request.contextPath}/resources/images/g8.jpg" alt="" />
						<p>Duis venenatis, turpis eu bibendum porttitor, sapien quam ultricies tellus, ac rhoncus risus odio eget nunc. Pellentesque ac fermentum diam. Integer eu facilisis nunc, a iaculis felis. Pellentesque pellentesque tempor enim, in dapibus turpis porttitor quis. Suspendisse ultrices hendrerit massa. Nam id metus id tellus ultrices ullamcorper.  Cras tempor massa luctus, varius lacus sit amet, blandit lorem. Duis auctor in tortor sed tristique. Proin sed finibus sem</p>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- //modal -->
</body>
</html>