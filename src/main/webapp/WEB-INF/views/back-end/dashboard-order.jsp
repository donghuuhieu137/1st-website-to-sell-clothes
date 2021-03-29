<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<title>Demo Dashboard</title>
	<!-- load css -->
	<jsp:include page="/WEB-INF/views/back-end/common/css.jsp"></jsp:include>
</head>
<body>
	<!-- wrapper -->
	<div class="wrapper">
		<!-- header -->
		<jsp:include page="/WEB-INF/views/back-end/common/header.jsp"></jsp:include>
		<!-- /header -->
		<div class="body-main">
			<!-- menu -->
			<jsp:include page="/WEB-INF/views/back-end/common/menu.jsp"></jsp:include>
			<!-- /menu -->
			<!-- order -->
			<div class="order col-md-9">
				<div class="title">
					Đơn Hàng
				</div>
				<div class="list">
					<ul class="list-header">
						<li class="col-md-1">Tài khoản</li>
						<li class="col-md-1">Địa chỉ giao hàng</li>
						<li class="col-md-1">Số điện thoại</li>
						<li class="col-md-1">Email</li>
						<li class="col-md-2">Tên sản phẩm</li>
						<li class="col-md-1">Giá</li>
						<li class="col-md-1">Màu</li>
						<li class="col-md-1">Cỡ</li>
						<li class="col-md-1">Số lượng</li>
						<li class="col-md-1">Chức năng</li>
					</ul>
					
						<c:forEach items="${orders}" var="order">
							<ul class="list-header list-order order-${order.id}">
								<li class="col-md-1">${order.name}</li>
								<li class="col-md-1">${order.address}</li>
								<li class="col-md-1">${order.phoneNumber}</li>
								<li class="col-md-1">${order.email}</li>
								<li class="col-md-2">
									<c:forEach items="${order.saleOrderProducts}" var="product">
										<div>${product.productId.title}</div><br>
									</c:forEach>
								</li>
								<li class="col-md-1">
									<c:forEach items="${order.saleOrderProducts}" var="product">
										<div>${product.total}</div><br>
									</c:forEach>
								</li>
								<li class="col-md-1">
									<c:forEach items="${order.saleOrderProducts}" var="product">
										<div>${product.color}</div><br>
									</c:forEach>
								</li>
								<li class="col-md-1">
									<c:forEach items="${order.saleOrderProducts}" var="product">
										<div>${product.size}</div><br>
									</c:forEach>
								</li>
								<li class="col-md-1">
									<c:forEach items="${order.saleOrderProducts}" var="product">
										<div>${product.quantity}</div><br>
									</c:forEach>
								</li>
								<li>
									<ul class="products-list-action">
										<li class="product-delete"><a href="javascript:void(0)" onclick="order.delete(${order.id})">Xóa</a></li>
									</ul>
								</li>
							</ul>
						</c:forEach>
							
					
					
				</div>
			</div>
			<!-- order -->
		</div>
	</div>
<!-- /wrapper -->
<jsp:include page="/WEB-INF/views/front-end/common/js.jsp"></jsp:include>
</body>
</html>