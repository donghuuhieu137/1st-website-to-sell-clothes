<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
	<title>${title }</title>
	<!-- load css -->
	<jsp:include page="/WEB-INF/views/back-end/common/css.jsp"></jsp:include>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<div class="order col-md-9">
				<div class="title">
					${title}
				</div>
				<div class="add-funtion">
					<span><a href="${pageContext.request.contextPath}/admin/dashboard-products-add">Thêm sản phẩm</a></span>
				</div>
				<div class="list">
						<ul class="list-header">
							<li class="col-md-1">Title</li>
							<li class="col-md-3">Short Description</li>
							<li class="col-md-4">Color</li>
							<li class="col-md-1">Size</li>
							<li class="col-md-1">Status</li>
							<li class="col-md-2">Action</li>
						</ul>
						<c:forEach items="${products}" var="product">
						<ul>
							<li class="col-md-1">${product.title }</li>
							<li class="col-md-3">${product.shortDes }</li>
							<li class="col-md-4 products-list-color">
								<ul>
									<c:forEach items="${product.color}" var="color">
										<li>${color.name}</li>
									</c:forEach>
								</ul>
							</li>
							<li class="col-md-1 products-list-color">
								<ul>
									<c:forEach items="${product.size}" var="size">
										<li>${size.name}</li>
									</c:forEach>
								</ul>
							</li>
							<li class="col-md-1 ColProductStatus-${product.id}">
								<c:choose>
		                        	<c:when test="${product.status == false}">
		                         		<span class="badge badge-danger">Đã xóa</span>
		                            </c:when>
		                            <c:otherwise>
		                                 <span class="badge badge-primary">Hoạt động</span>
		                            </c:otherwise>
		                        </c:choose>
							</li>
							<li class="col-md-2 products-list-color">
								<ul class="products-list-action">
									<li class="product-edit"><a href="${pageContext.request.contextPath}/admin/dashboard-products-edit/${product.id}">Sửa</a></li>
									<li class="product-delete"><a href="javascript:void(0)" onclick="product.delete(${product.id})">Xóa</a></li>
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
<jsp:include page="/WEB-INF/views/back-end/common/js.jsp"></jsp:include>
</body>
</html>