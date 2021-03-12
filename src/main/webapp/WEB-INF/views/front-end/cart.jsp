<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<!DOCTYPE html>
<html>
<head>
	<title>Giỏ hàng</title>
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
		<div class="cart-main-body">
			<div class="cart-header">
				<span>Trang chủ / Giỏ hàng</span>
			</div>
			<div class="cart-title">
				<span>Giỏ hàng</span>
			</div>
			<div class="cart-product">
				<div class="cart-product-detail">
					<img src="images/cart-img/img1.jpg">
					<div class="cart-product-info">
						<span class="cart-product-detail-title">
							HD43 - Áo Hoodie
						</span>
						<br>
						<span>
							169,000₫
						</span>
						<br>
						<span>
							TRẮNG/M
						</span>
						<br>
						<span>
							Số lượng 1
						</span>
						<span class="cart-product-info-sum">
							338,000₫
						</span>
					</div>
					<div class="cart-product-info2">
						<a href="#"><i class="fas fa-times"></i></a>
					</div>
				</div>
				<div class="cart-product-pay">
					<div class="col-sm-6 col-md-6 cart-product-note">
						<form>
							<input type="text" name="note" placeholder="Ghi chú">
						</form>
					</div>
					<div class="col-sm-6 col-md-6">
						<div class="cart-product-pay-total">
							Tổng tiền: <span> 338,000₫</span>
						</div>
						<div>
							<button>Thanh toán</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- main-body -->
	</div>
</body>
<!-- /main-body -->
<jsp:include page="/WEB-INF/views/front-end/common/footer.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/front-end/common/js.jsp"></jsp:include>

</html>