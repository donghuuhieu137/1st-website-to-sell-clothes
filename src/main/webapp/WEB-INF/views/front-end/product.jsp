<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<!DOCTYPE html>
<html>
<head>
	<title>Sản phẩm</title>
	<!-- load css -->
	<jsp:include page="/WEB-INF/views/front-end/common/css.jsp"></jsp:include>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
</head>
<body>
	<!-- wrapper -->
	<div class="wrapper">
		<!-- header -->
			<jsp:include page="/WEB-INF/views/front-end/common/header.jsp"></jsp:include>
		<!-- /header -->
		<!-- main-body -->
		<div class="cart-header">
				<span><a href="/">Trang chủ</a> / <a href="${pageContext.request.contextPath}/collections/${product.category.id}">${product.category.name}</a> / ${product.title}</span>
			</div>
		<div class="row product-detail-wrapper">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="row product-detail-main pr_style_02">
					<div class="col-md-6 col-sm-12 col-xs-12">
					
						<div class="product-gallery">
							<div class="product-image-detail box__product-gallery scroll">
								<ul id="sliderproduct" class="site-box-content slide_product clearfix">
									
									<c:forEach items="${product.productImages}" var="img">
										<li class="product-gallery-item gallery-item current">
											<img class="product-image-feature" src="${pageContext.request.contextPath}/uploads/${img.path}">
										</li>
									</c:forEach>
									
								</ul>
								</div>
							</div>							

						</div>
						<div class="col-md-6 col-sm-12 col-xs-12 product-content-desc" id="detail-product">
							<div class="col-lg-7 col-md-9 col-sm-12 pr-detail col-xs-12">
								<div class="product-title">
									<h1>${product.title}</h1>
									<span id="pro_sku">CODE: ${product.code}</span>	
								</div>
								<div class="product-price" id="price-preview"><span class="pro-sale">-25%</span><span class="pro-price">${product.price}₫</span><del>160,000₫</del></div>

								<form:form id="add-item-form" action="/cart/add" method="post" class="variants clearfix" modelAttribute="product-cart">
									<div class="select-swatch clearfix">
										<div id="variant-swatch-0" class="swatch clearfix">
											<div class="header hide">Màu sắc:</div>
											<div class="header">
												<span><!--  --></span>
											</div>
											<div class="select-swap">
												<c:forEach items="${product.color}" var="color">
													<div class="n-sd swatch-element color">
														<input class="variant-0" type="radio" name="color" value="${color.name}" id="${color.code}">
														<label for="${color.code}" class="${color.code}">
															<span>${color.name}</span>
														</label>
													</div>
												</c:forEach>
											</div>
										</div>
										<div id="variant-swatch-1" class="swatch clearfix">
											<div class="header hide">Kích thước:</div>
											<div class="select-swap">  
												<c:forEach items="${product.size}" var="size">
													<div class="n-sd swatch-element size">
														<input class="variant-1" type="radio" name="size" value="${size.name}" id="${size.code}" >
														<label for="${size.code}">
															<span>${size.name}</span>
														</label>
													</div>
												</c:forEach>
											</div>
										</div>
									</div>
									<div class="selector-actions">
										<div class="quantity-area clearfix">
											<input type="button" value="-" onclick="minusQuantity()" class="qty-btn">
											<input type="text" id="quantity" name="quantity" value="1" min="1" class="quantity-selector">
											<input type="button" value="+" onclick="plusQuantity()" class="qty-btn">
										</div>
										<div class="wrap-addcart clearfix">						
											<button type="button" id="add-to-cart" class="add-to-cartProduct button dark btn-addtocart addtocart-modal" onclick="product.addToCart( ${product.id}, $('#quantity').val(), $('input[name=color]:checked').val(), $('input[name=size]:checked').val() )" name="add">Thêm vào giỏ</button>

											<button class="clickcart" id="buy-now">Mua ngay</button>

										</div>	
									</div>
								</form:form>
								<div class="product-description">	
									<div class="title-bl">
										<h2>Mô tả</h2>
									</div>							
									<div class="description-content">
										<div class="description-productdetail">
											${product.detailDes}
										</div>
									</div>
								</div>
							</div>

							<div class="col-lg-5 hidden-md hidden-sm shippingnow hidden-xs">
								<div class="sider-info-shipping">
									<div class="slidebar_right">
										<div class="date_working_block">
											<div class="title">THỜI GIAN GIAO HÀNG</div>
											<label>Từ 2-5 ngày làm việc</label>
										</div>
										<ul>
											<li class="free_ship clearfix">
												<div class="icon"></div>
												<div class="icon_side">
													<b>MIỄN PHÍ GIAO HÀNG TOÀN QUỐC</b>
													<span>Cho đơn hàng từ 299,000 vnđ</span>
												</div>
											</li>
											<li class="return_product clearfix">
												<div class="icon"></div>
												<div class="icon_side">
													<b>CHÍNH SÁCH ĐỔI TRẢ</b>
													<span>Dễ dàng, nhanh chóng</span>
												</div>
											</li>
											<li class="payment clearfix">
												<div class="icon"></div>
												<div class="icon_side">
													<b>THANH TOÁN TIỆN LỢI</b>
													<span>Nhiều hình thức thanh toán</span>
												</div>
											</li>
											<li class="telco clearfix">
												<div class="icon"></div>
												<div class="icon_side">
													<b>HOTLINE TƯ VẤN</b>
													<span>0973.979.123</span>
												</div>
											</li>
											<li class="address clearfix">
												<div class="icon"></div>
												<div class="icon_side">
													<b>ĐỊA CHỈ</b>
													<span>Số 5, Thôn Cầu Thăng Long, Xã Kim Nỗ, Huyện Đông Anh,TP Hà Nội.</span>
												</div>
											</li>
										</ul>
										<br>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		<!-- main-body -->
		
	</div>
</body>
<!-- /main-body -->
<jsp:include page="/WEB-INF/views/front-end/common/js.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/front-end/common/footer.jsp"></jsp:include>


</html>