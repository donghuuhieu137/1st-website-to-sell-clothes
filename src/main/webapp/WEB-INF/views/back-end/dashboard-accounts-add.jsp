<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- SPRING FORM -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<title>${title}</title>
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
				<form:form action="${pageContext.request.contextPath}/admin/dashboard-accounts-add" method="post" modelAttribute="account" enctype="multipart/form-data">
				<form:hidden path="id"/>
				<div class="title-detail">
					Tài khoản
				</div>
				<div class="add-product-detail">
					 <form:input type="text" name="title-product" placeholder="enter.." path="username"/> 
				</div>
				<div class="add-product-note">
					Tối đa 20 kí tự
				</div>
				<br>
				<div class="title-detail">
					Mật khẩu
				</div>
				<div class="add-product-detail">
					 <form:input type="password" name="title-product" placeholder="enter.." path="password"/> 
				</div>
				<div class="add-product-note">
					Tối đa 20 kí tự
				</div>
				<br>
				<div class="title-detail">
					Email
				</div>
				<div class="add-product-detail">
					 <form:input type="text" name="title-product" placeholder="enter.." path="email"/> 
				</div>
				<br>
				<div class="title-detail">
					Địa chỉ
				</div>
				<div class="add-product-detail">
					 <form:input type="text" name="title-product" placeholder="enter.." path="address"/> 
				</div>
				<br>
				<!--<div class="title-detail">
					Role
				</div>
				<div class="add-product-detail">
					<form action="">
					  <label for="Role"></label>
					  <select name="product" id="product">
					    <option value="role-admin">Amin</option>
					    <option value="role-client">Client</option>
					  </select>
					  <br><br>
					</form>
				</div>
				<div class="title-detail">
					Trạng thái
				</div>
				<div class="add-product-size">
					<form>
						<label>Active</label>
						<input type="checkbox" id="active" name="active" value="active">
					</form>
				</div>-->
				<br>
				<button type="submit" class="btn btn-primary">Lưu trữ</button>
			</form:form>
			</div>
			<!-- order -->
		</div>
	</div>
<!-- /wrapper -->
<jsp:include page="/WEB-INF/views/front-end/common/js.jsp"></jsp:include>
</body>
</html>