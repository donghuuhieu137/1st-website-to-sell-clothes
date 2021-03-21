<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<c:forEach items="${cart.cartProduct}" var="product">
					<div class="cart-product-detail" id="cart-product-${product.id}">
						<img src="${pageContext.request.contextPath}/uploads/${product.imgPath}">
						<div class="cart-product-info">
							<span class="cart-product-detail-title">
								${product.name}
							</span>
							<br>
							<span>
								${product.price}₫
							</span>
							<br>
							<span>
								${product.color}/ ${product.size}
							</span>
							<br>
							<span>
								Số lượng: ${product.quality}
							</span>
							<span class="cart-product-info-sum">
								${product.totalPrice}₫
							</span>
						</div>
						<div class="cart-product-info2">
							<button onclick="product.removeFromCart(${product.id})"><i class="fas fa-times"></i></button>
						</div>
					</div>
				</c:forEach>
				<div class="cart-product-pay">
					<div class="col-sm-6 col-md-6 cart-product-note">
						<form>
							<input type="text" name="note" placeholder="Ghi chú . . .">
						</form>
					</div>
					<div class="col-sm-6 col-md-6">
						<div class="cart-product-pay-total">
							Tổng tiền: <span> ${totalPriceInCart}₫</span>
						</div>
						<div>
							<a href="${pageContext.request.contextPath}/checkout"><button>Thanh toán</button></a>
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