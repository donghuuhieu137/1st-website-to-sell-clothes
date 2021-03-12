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
			<!-- order -->
			<div class="order col-md-9">
				<div class="title">
					${title }
				</div>
				<div class="add-funtion">
					<span><a href="${pageContext.request.contextPath}/admin/dashboard-accounts-add">Thêm tài khoản</a></span>
				</div>
				<div class="list">
					<ul class="list-header">
						<li class="col-md-2">Username</li>
						<li class="col-md-2">Password</li>
						<li class="col-md-2">Email</li>
						<li class="col-md-3">Adress</li>
						<li class="col-md-1">Roles</li>
						<li class="col-md-1">Status</li>
						<li class="col-md-1">Action</li>
					</ul>
					<c:forEach items="${accounts}" var = "accounts">
						<ul class="list-header">
							<li class="col-md-2">${accounts.userName}</li>
							<li class="col-md-2">${accounts.password}</li>
							<li class="col-md-2">${accounts.email}</li>
							<li class="col-md-3">${accounts.address}</li>
							<li class="col-md-1">${accounts.roles}</li>
							<li class="col-md-1">${accounts.status}</li>
							<li class="col-md-1 products-list-color">
								<ul class="products-list-action">
									<li class="product-delete"><a href="#">Xóa</a></li>
									<li class="product-edit"><a href="${pageContext.request.contextPath}/admin/dashboard-accounts-edit/${accounts.id}">Sửa</a></li>
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