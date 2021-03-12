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
					${title }
				</div>
				<div class="add-funtion">
					<span><a href="${pageContext.request.contextPath}/admin/dashboard-category-add">Thêm danh mục sản phẩm</a></span>
				</div>
				<div class="list">
						<ul class="list-header">
							<li class="col-md-1">ID</li>
							<li class="col-md-2">Tên danh mục</li>
							<li class="col-md-2">Miêu tả</li>
							<li class="col-md-1">Danh mục cha</li>
							<li class="col-md-2">Seo</li>
							<li class="col-md-1">Trạng thái</li>
							<li class="col-md-3">Chức năng</li>
						</ul>
					<c:forEach items="${categories}" var= "categories">
						<ul>
							<li class="col-md-1">${categories.id}</li>
							<li class="col-md-2">${categories.name}</li>
							<li class="col-md-2">${categories.description}</li>
							<li class="col-md-1">${categories.parent_id}</li>
							<li class="col-md-2">${categories.seo}</li>
							<li class="col-md-1">${categories.status}</li>
							<li class="col-md-3 products-list-color">
								<ul class="products-list-action">
									<li class="product-edit"><a href="${pageContext.request.contextPath}/admin/dashboard-category-edit/${categories.id}">Sửa</a></li>
									<li class="product-delete"><a href="#">Xóa</a></li>
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