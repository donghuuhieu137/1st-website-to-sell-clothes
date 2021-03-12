<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<title>${title }</title>
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
			<!-- list product -->
			<div class="product col-md-9">
				<div class="title">
					${title }
				</div>
				<div class="add-funtion">
					<span><a href="${pageContext.request.contextPath}/admin/dashboard-sale-off-add">Thêm khuyến mãi</a></span>
				</div>
				<div class="list">
					<ul class="list-header">
						<li class="col-md-2">Mã khuyến mãi</li>
						<li class="col-md-3">Tên khuyến mãi</li>
						<li class="col-md-2">Phần trăm giảm</li>
						<li class="col-md-1">Trạng thái</li>
						<li class="col-md-4">Chức năng</li>
					</ul>
					<c:forEach items="${saleoff }" var="saleoff">
						<ul>
							<li class="col-md-2">${saleoff.code }</li>
							<li class="col-md-3">${saleoff.code }</li>
							<li class="col-md-2">${saleoff.total }</li>
							<li class="col-md-1">${saleoff.status }</li>
							<li class="col-md-4 products-list-color">
								<ul class="products-list-action">
									<li class="product-edit"><a href="${pageContext.request.contextPath}/admin/dashboard-sale-off-edit/${saleoff.id }">Sửa</a></li>
									<li class="product-delete"><a href="#">Xóa</a></li>
									<li class="product-add-users"><a href="#">Sửa người dùng</a></li>
								</ul>
							</li>
						</ul>
					</c:forEach>
				</div>
			</div>
			<!-- list product -->
		</div>
	</div>
<!-- /wrapper -->
<jsp:include page="/WEB-INF/views/front-end/common/js.jsp"></jsp:include>
</body>
</html>