<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<!DOCTYPE html>
<html>
<head>
	<title>Hegg Shop</title>
	<!-- load css -->
	<jsp:include page="/WEB-INF/views/front-end/common/css.jsp"></jsp:include>
	
</head>
<body>
	<!-- wrapper -->
	<div class="wrapper">
		<!-- header -->
			<jsp:include page="/WEB-INF/views/front-end/common/header.jsp"></jsp:include>
		<!-- /header -->
		<!-- main-body -->
		<div class="main-body">
			<!-- banner -->
			<div class="banner">
				<img src="${pageContext.request.contextPath}/images/saleBanner.jpg">
			</div>
			<!-- /banner -->
			<!-- slick slider -->
			<div class="slick-slider-banner-container">
				<div class="slick-slider-banner multiple-items caption-style">
					<div class="image-slick-slide">
						<img src="images/slick-slider-banner/img1.jpg">
						<div class="caption">
							<div class="blur"></div>
							<div class="caption-text">
								<h1>Hoodie</h1>
								<p>Whatever It IS - Always Awesome</p>
							</div>
						</div>
					</div>
					<div class="image-slick-slide">
						<img src="images/slick-slider-banner/img2.jpg">
						<div class="caption">
							<div class="blur"></div>
							<div class="caption-text">
								<h1>Hoodie</h1>
								<p>Whatever It IS - Always Awesome</p>
							</div>
						</div>
					</div>
					<div class="image-slick-slide">
						<img src="images/slick-slider-banner/img3.jpg">
						<div class="caption">
							<div class="blur"></div>
							<div class="caption-text">
								<h1>Hoodie</h1>
								<p>Whatever It IS - Always Awesome</p>
							</div>
						</div>
					</div>
					<div class="image-slick-slide">
						<img src="images/slick-slider-banner/img4.jpg">
						<div class="caption">
							<div class="blur"></div>
							<div class="caption-text">
								<h1>Hoodie</h1>
								<p>Whatever It IS - Always Awesome</p>
							</div>
						</div>
					</div>
					<div class="image-slick-slide">
						<img src="images/slick-slider-banner/img5.jpg">
						<div class="caption">
							<div class="blur"></div>
							<div class="caption-text">
								<h1>Hoodie</h1>
								<p>Whatever It IS - Always Awesome</p>
							</div>
						</div>
					</div>
					<div class="image-slick-slide">
						<img src="images/slick-slider-banner/img6.jpg">
						<div class="caption">
							<div class="blur"></div>
							<div class="caption-text">
								<h1>Hoodie</h1>
								<p>Whatever It IS - Always Awesome</p>
							</div>
						</div>
					</div>
				</div>
				<div class="arrow-prev-container">
					<div class="arrow-prev">
						<span><i class="fas fa-angle-left"></i></span>
					</div>
				</div>
				<div class="arrow-next-container">
					<div class="arrow-next">
						<span><i class="fas fa-angle-right"></i></span>
					</div>
				</div>
			</div>
			<!-- /slick slider -->
			<!-- new-product -->
			<div class="new-product">
				<div class="title">
					<div>Sản Phẩm Mới</div>
					<div class="title-line"></div>
					<p><a href="#">Xem thêm</a></p>
				</div>
				<div class="list-product container-fuild">
					<div class="row">
						<div class="col-md-3 col-sm-6 col-xs-12 info-product">
							<div class="product-img"><a href="#" class="position-center-items"><img src="images/new-product-img/img1.jpg" class="img-fuild"></a></div>
							<div class="product-img-hover"><a href="#" class="position-center-items"><img src="images/new-product-img/img2.jpg" class="img-fuild"></a></div>
							<div class="detail-product">
								<div class="product-name">
									Quần Kaki
								</div>
								<div class="product-price">
									<div class="price">
										200.000₫
									</div>
									<div class="compare-price">
										1.500.000₫
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-12 info-product">
							<div class="product-img"><a href="#" class="position-center-items"><img src="images/new-product-img/img1.jpg" class="img-fuild"></a></div>
							<div class="product-img-hover"><a href="#" class="position-center-items"><img src="images/new-product-img/img2.jpg" class="img-fuild"></a></div>
							<div class="detail-product">
								<div class="product-name">
									Quần Kaki
								</div>
								<div class="product-price">
									<div class="price">
										200.000₫
									</div>
									<div class="compare-price">
										1.500.000₫
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-12 info-product">
							<div class="product-img"><a href="#" class="position-center-items"><img src="images/new-product-img/img1.jpg" class="img-fuild"></a></div>
							<div class="product-img-hover"><a href="#" class="position-center-items"><img src="images/new-product-img/img2.jpg" class="img-fuild"></a></div>
							<div class="detail-product">
								<div class="product-name">
									Quần Kaki
								</div>
								<div class="product-price">
									<div class="price">
										200.000₫
									</div>
									<div class="compare-price">
										1.500.000₫
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-12 info-product">
							<div class="product-img"><a href="#" class="position-center-items"><img src="images/new-product-img/img1.jpg" class="img-fuild"></a></div>
							<div class="product-img-hover"><a href="#" class="position-center-items"><img src="images/new-product-img/img2.jpg" class="img-fuild"></a></div>
							<div class="detail-product">
								<div class="product-name">
									Quần Kaki
								</div>
								<div class="product-price">
									<div class="price">
										200.000₫
									</div>
									<div class="compare-price">
										1.500.000₫
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-12 info-product">
							<div class="product-img"><a href="#" class="position-center-items"><img src="images/new-product-img/img1.jpg" class="img-fuild"></a></div>
							<div class="product-img-hover"><a href="#" class="position-center-items"><img src="images/new-product-img/img2.jpg" class="img-fuild"></a></div>
							<div class="detail-product">
								<div class="product-name">
									Quần Kaki
								</div>
								<div class="product-price">
									<div class="price">
										200.000₫
									</div>
									<div class="compare-price">
										1.500.000₫
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-12 info-product">
							<div class="product-img"><a href="#" class="position-center-items"><img src="images/new-product-img/img1.jpg" class="img-fuild"></a></div>
							<div class="product-img-hover"><a href="#" class="position-center-items"><img src="images/new-product-img/img2.jpg" class="img-fuild"></a></div>
							<div class="detail-product">
								<div class="product-name">
									Quần Kaki
								</div>
								<div class="product-price">
									<div class="price">
										200.000₫
									</div>
									<div class="compare-price">
										1.500.000₫
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-12 info-product">
							<div class="product-img"><a href="#" class="position-center-items"><img src="images/new-product-img/img1.jpg" class="img-fuild"></a></div>
							<div class="product-img-hover"><a href="#" class="position-center-items"><img src="images/new-product-img/img2.jpg" class="img-fuild"></a></div>
							<div class="detail-product">
								<div class="product-name">
									Quần Kaki
								</div>
								<div class="product-price">
									<div class="price">
										200.000₫
									</div>
									<div class="compare-price">
										1.500.000₫
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-12 info-product">
							<div class="product-img"><a href="#" class="position-center-items"><img src="images/new-product-img/img1.jpg" class="img-fuild"></a></div>
							<div class="product-img-hover"><a href="#" class="position-center-items"><img src="images/new-product-img/img2.jpg" class="img-fuild"></a></div>
							<div class="detail-product">
								<div class="product-name">
									Quần Kaki
								</div>
								<div class="product-price">
									<div class="price">
										200.000₫
									</div>
									<div class="compare-price">
										1.500.000₫
									</div>
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		<!-- /new-product -->
		<!-- new-product -->
		<div class="new-product">
			<div class="title">
				<div>Sản Phẩm Mới</div>
				<div class="title-line"></div>
				<p><a href="#">Xem thêm</a></p>
			</div>
			<div class="list-product container-fuild">
				<div class="row">
					<div class="col-md-3 col-sm-6 col-xs-12 info-product">
						<div class="product-img"><a href="#" class="position-center-items"><img src="images/new-product-img/img1.jpg" class="img-fuild"></a></div>
						<div class="product-img-hover"><a href="#" class="position-center-items"><img src="images/new-product-img/img2.jpg" class="img-fuild"></a></div>
						<div class="detail-product">
							<div class="product-name">
								Quần Kaki
							</div>
							<div class="product-price">
								<div class="price">
									200.000₫
								</div>
								<div class="compare-price">
									1.500.000₫
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12 info-product">
						<div class="product-img"><a href="#" class="position-center-items"><img src="images/new-product-img/img1.jpg" class="img-fuild"></a></div>
						<div class="product-img-hover"><a href="#" class="position-center-items"><img src="images/new-product-img/img2.jpg" class="img-fuild"></a></div>
						<div class="detail-product">
							<div class="product-name">
								Quần Kaki
							</div>
							<div class="product-price">
								<div class="price">
									200.000₫
								</div>
								<div class="compare-price">
									1.500.000₫
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12 info-product">
						<div class="product-img"><a href="#" class="position-center-items"><img src="images/new-product-img/img1.jpg" class="img-fuild"></a></div>
						<div class="product-img-hover"><a href="#" class="position-center-items"><img src="images/new-product-img/img2.jpg" class="img-fuild"></a></div>
						<div class="detail-product">
							<div class="product-name">
								Quần Kaki
							</div>
							<div class="product-price">
								<div class="price">
									200.000₫
								</div>
								<div class="compare-price">
									1.500.000₫
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12 info-product">
						<div class="product-img"><a href="#" class="position-center-items"><img src="images/new-product-img/img1.jpg" class="img-fuild"></a></div>
						<div class="product-img-hover"><a href="#" class="position-center-items"><img src="images/new-product-img/img2.jpg" class="img-fuild"></a></div>
						<div class="detail-product">
							<div class="product-name">
								Quần Kaki
							</div>
							<div class="product-price">
								<div class="price">
									200.000₫
								</div>
								<div class="compare-price">
									1.500.000₫
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12 info-product">
						<div class="product-img"><a href="#" class="position-center-items"><img src="images/new-product-img/img1.jpg" class="img-fuild"></a></div>
						<div class="product-img-hover"><a href="#" class="position-center-items"><img src="images/new-product-img/img2.jpg" class="img-fuild"></a></div>
						<div class="detail-product">
							<div class="product-name">
								Quần Kaki
							</div>
							<div class="product-price">
								<div class="price">
									200.000₫
								</div>
								<div class="compare-price">
									1.500.000₫
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12 info-product">
						<div class="product-img"><a href="#" class="position-center-items"><img src="images/new-product-img/img1.jpg" class="img-fuild"></a></div>
						<div class="product-img-hover"><a href="#" class="position-center-items"><img src="images/new-product-img/img2.jpg" class="img-fuild"></a></div>
						<div class="detail-product">
							<div class="product-name">
								Quần Kaki
							</div>
							<div class="product-price">
								<div class="price">
									200.000₫
								</div>
								<div class="compare-price">
									1.500.000₫
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12 info-product">
						<div class="product-img"><a href="#" class="position-center-items"><img src="images/new-product-img/img1.jpg" class="img-fuild"></a></div>
						<div class="product-img-hover"><a href="#" class="position-center-items"><img src="images/new-product-img/img2.jpg" class="img-fuild"></a></div>
						<div class="detail-product">
							<div class="product-name">
								Quần Kaki
							</div>
							<div class="product-price">
								<div class="price">
									200.000₫
								</div>
								<div class="compare-price">
									1.500.000₫
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12 info-product">
						<div class="product-img"><a href="#" class="position-center-items"><img src="images/new-product-img/img1.jpg" class="img-fuild"></a></div>
						<div class="product-img-hover"><a href="#" class="position-center-items"><img src="images/new-product-img/img2.jpg" class="img-fuild"></a></div>
						<div class="detail-product">
							<div class="product-name">
								Quần Kaki
							</div>
							<div class="product-price">
								<div class="price">
									200.000₫
								</div>
								<div class="compare-price">
									1.500.000₫
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /new-product -->
	<!-- new-product -->
	<div class="new-product">
		<div class="title">
			<div>Sản Phẩm Mới</div>
			<div class="title-line"></div>
			<p><a href="#">Xem thêm</a></p>
		</div>
		<div class="list-product container-fuild">
			<div class="row">
				<div class="col-md-3 col-sm-6 col-xs-12 info-product">
					<div class="product-img"><a href="#" class="position-center-items"><img src="images/new-product-img/img1.jpg" class="img-fuild"></a></div>
					<div class="product-img-hover"><a href="#" class="position-center-items"><img src="images/new-product-img/img2.jpg" class="img-fuild"></a></div>
					<div class="detail-product">
						<div class="product-name">
							Quần Kaki
						</div>
						<div class="product-price">
							<div class="price">
								200.000₫
							</div>
							<div class="compare-price">
								1.500.000₫
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12 info-product">
					<div class="product-img"><a href="#" class="position-center-items"><img src="images/new-product-img/img1.jpg" class="img-fuild"></a></div>
					<div class="product-img-hover"><a href="#" class="position-center-items"><img src="images/new-product-img/img2.jpg" class="img-fuild"></a></div>
					<div class="detail-product">
						<div class="product-name">
							Quần Kaki
						</div>
						<div class="product-price">
							<div class="price">
								200.000₫
							</div>
							<div class="compare-price">
								1.500.000₫
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12 info-product">
					<div class="product-img"><a href="#" class="position-center-items"><img src="images/new-product-img/img1.jpg" class="img-fuild"></a></div>
					<div class="product-img-hover"><a href="#" class="position-center-items"><img src="images/new-product-img/img2.jpg" class="img-fuild"></a></div>
					<div class="detail-product">
						<div class="product-name">
							Quần Kaki
						</div>
						<div class="product-price">
							<div class="price">
								200.000₫
							</div>
							<div class="compare-price">
								1.500.000₫
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12 info-product">
					<div class="product-img"><a href="#" class="position-center-items"><img src="images/new-product-img/img1.jpg" class="img-fuild"></a></div>
					<div class="product-img-hover"><a href="#" class="position-center-items"><img src="images/new-product-img/img2.jpg" class="img-fuild"></a></div>
					<div class="detail-product">
						<div class="product-name">
							Quần Kaki
						</div>
						<div class="product-price">
							<div class="price">
								200.000₫
							</div>
							<div class="compare-price">
								1.500.000₫
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12 info-product">
					<div class="product-img"><a href="#" class="position-center-items"><img src="images/new-product-img/img1.jpg" class="img-fuild"></a></div>
					<div class="product-img-hover"><a href="#" class="position-center-items"><img src="images/new-product-img/img2.jpg" class="img-fuild"></a></div>
					<div class="detail-product">
						<div class="product-name">
							Quần Kaki
						</div>
						<div class="product-price">
							<div class="price">
								200.000₫
							</div>
							<div class="compare-price">
								1.500.000₫
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12 info-product">
					<div class="product-img"><a href="#" class="position-center-items"><img src="images/new-product-img/img1.jpg" class="img-fuild"></a></div>
					<div class="product-img-hover"><a href="#" class="position-center-items"><img src="images/new-product-img/img2.jpg" class="img-fuild"></a></div>
					<div class="detail-product">
						<div class="product-name">
							Quần Kaki
						</div>
						<div class="product-price">
							<div class="price">
								200.000₫
							</div>
							<div class="compare-price">
								1.500.000₫
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12 info-product">
					<div class="product-img"><a href="#" class="position-center-items"><img src="images/new-product-img/img1.jpg" class="img-fuild"></a></div>
					<div class="product-img-hover"><a href="#" class="position-center-items"><img src="images/new-product-img/img2.jpg" class="img-fuild"></a></div>
					<div class="detail-product">
						<div class="product-name">
							Quần Kaki
						</div>
						<div class="product-price">
							<div class="price">
								200.000₫
							</div>
							<div class="compare-price">
								1.500.000₫
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12 info-product">
					<div class="product-img"><a href="#" class="position-center-items"><img src="images/new-product-img/img1.jpg" class="img-fuild"></a></div>
					<div class="product-img-hover"><a href="#" class="position-center-items"><img src="images/new-product-img/img2.jpg" class="img-fuild"></a></div>
					<div class="detail-product">
						<div class="product-name">
							Quần Kaki
						</div>
						<div class="product-price">
							<div class="price">
								200.000₫
							</div>
							<div class="compare-price">
								1.500.000₫
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
<!-- /main-body -->
<jsp:include page="/WEB-INF/views/front-end/common/footer.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/front-end/common/js.jsp"></jsp:include>

</html>