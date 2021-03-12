<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<!DOCTYPE html>
<html>
<head>
	<title>Danh sách sản phẩm</title>
	<!-- load css -->
	<jsp:include page="/WEB-INF/views/front-end/common/css.jsp"></jsp:include>
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
				<span><a href="/">Trang chủ</a> / <a href="${pageContext.request.contextPath}/collections/${category.id}">${category.name}</a></span>
			</div>
		<div class="collections-main-body">
			<div class="collections-sort-menu col-sm-3 col-md-3">
				<div class="collections-sort-menu-title">GIÁ SẢN PHẨM</div><br>
				<form>
					<input type="checkbox" name="price1">
					<label for="price1">Dưới 100,000đ</label><br>
					<input type="checkbox" name="price2">
					<label for="price2">100,000đ - 150,000đ</label><br>
					<input type="checkbox" name="price3">
					<label for="price3">150,000đ - 200,000đ</label><br>
					<input type="checkbox" name="price4">
					<label for="price4">200,000đ - 250,000đ</label><br>
					<input type="checkbox" name="price5">
					<label for="price5">Trên 250,000đ</label><br>
				</form>
				<br>
				<div class="collections-sort-menu-title">KÍCH THƯỚC</div><br>
				<form class="collections-sort-menu-by-size">
					<input type="checkbox" name="size1">
					<label for="size1">S</label>
					<input type="checkbox" name="size2">
					<label for="size2">M</label>
					<input type="checkbox" name="size3">
					<label for="size3">L</label>
					<input type="checkbox" name="size4">
					<label for="size4">XL</label>
					<input type="checkbox" name="size5">
					<label for="size5">XXL</label>
				</form>
				<br>
			</div>
			<div class="collections-detail col-sm-9 col-md-9">
				<div class="collections-title">
					<span>${category.name}</span>
					<span class="collections-sort-list">
						  <select id="sort" name="sort">
						  	<option value="special">Sản phẩm nổi bật</option>
						    <option value="newest">Mới nhất</option>
						    <option value="oldest">Cũ nhất</option>
						    <option value="price-increase">Giá: Tăng dần</option>
						    <option value="price-reduce">Giá: Giảm dần</option>
						    <option value="atioz">A-Z</option>
						    <option value="atioz">Z-A</option>
						  </select>
					</span>
				</div>
				<div class="row">
					<c:forEach items="${products}" var="product">
						<c:choose>
							<c:when test="${product.status==true}">
								<div class="col-sm-3 col-md-3 collections-img info-product">
								<div><a href="${pageContext.request.contextPath}/product/${product.id}"><img src="${pageContext.request.contextPath}/uploads/${product.productImages.get(0).path}"></a></div>
								<div class="detail-product">
									<div class="product-name">
										<a href="${pageContext.request.contextPath}/product/${product.id}">${product.title}</a>
									</div>
									<div class="product-price">
										<div class="price">
											${product.price}đ
										</div>
										<div class="compare-price">
											2000đ
										</div>
									</div>
								</div>
						</div>
							</c:when>
						</c:choose>
					</c:forEach>
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