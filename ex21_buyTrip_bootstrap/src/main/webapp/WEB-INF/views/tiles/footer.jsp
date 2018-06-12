<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!-- footer start here -->
	<div class="footer-agile jarallax">
		<div class="container">

			<div class="footer-btm-agileinfo">
				<div class="col-md-3 col-xs-3 footer-grid">
					<h3>바로 가기</h3> 
					<ul>
						<li><a href="index.html">주문하기</a></li>
						<li><a href="services.html">배달하기</a></li> 
						<li><a href="projects.html">메시지</a></li> 
						<li><a href="contact.html">마이페이지</a></li> 
					</ul> 
				</div>
				<div class="col-md-3 col-xs-3 footer-grid w3social">
						<div class="col-md-12 col-xs-12 footer-grid w3social">
					
				</div> 
				</div>
				<div class="col-md-6 col-xs-6 footer-grid footer-review">
					<h3>Newsletter</h3>
					<form action="#" method="post">
						<input type="email" name="Email" placeholder="Your Email"
							required=""> <input type="submit" value="Subscribe">
						<div class="clearfix"></div>
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="footer-top-agileinfo">
				<div class="social-wthree-icons bnragile-icons">
					<ul>
						<li><a href="#"
							class="fa fa-facebook icon icon-border facebook"> </a></li>
						<li><a href="#"
							class="fa fa-twitter icon icon-border twitter"> </a></li>
						<li><a href="#"
							class="fa fa-google-plus icon icon-border googleplus"> </a></li>
						<li><a href="#"
							class="fa fa-dribbble icon icon-border dribbble"> </a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- //footer end here -->
	<script src="${pageContext.request.contextPath}/resources/js/responsiveslides.min.js"></script>
		<!-- start-smooth-scrolling -->
			<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/move-top.js"></script>
			<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/easing.js"></script>
			<script type="text/javascript">
				jQuery(document).ready(function($) {
					$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
			</script>
	<!-- //start-smoth-scrolling -->
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
</body>
</html>