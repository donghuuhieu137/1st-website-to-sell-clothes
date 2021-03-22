<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- SPRING FORM -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
				<form:form action="${pageContext.request.contextPath}/admin/dashboard-sale-off-add" method="post" modelAttribute="saleOff">
					<form:hidden path="id"/>
					<div class="title-detail">
						Mã khuyến mãi
					</div>
					<div class="add-product-detail">
						 <form:input type="text" name="code" placeholder="enter.." path="code"/> 
					</div>
					<div class="add-product-note">
						Tối đa 20 kí tự
					</div>
					<br>
					<div class="title-detail">
						Phần trăm giảm 
					</div>
					<div class="add-product-detail">
						 <form:input type="text" name="title-product" placeholder="enter.." path = "total"/> 
					</div>
					<div class="add-product-note">
						Tối đa 20 kí tự
					</div>
					<br>
					  <button type="submit" class="btn btn-primary">Lưu trữ</button>
				</form:form>
			</div>
			<!-- list product -->
		</div>
	</div>
<!-- /wrapper -->
<jsp:include page="/WEB-INF/views/front-end/common/js.jsp"></jsp:include>
</body>
</html>