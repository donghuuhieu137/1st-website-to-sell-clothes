<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
			<div class="order col-md-9">
				<form:form action="${pageContext.request.contextPath}/admin/dashboard-category-add" method="post" modelAttribute="category">
					<form:hidden path="id"/>
					<div class="title">
						${title}
					</div>
					<div class="title-detail">
						Tên danh mục
					</div>
					<div class="add-product-detail">
						 <form:input type="text" placeholder="enter.." path="name"/> 
					</div>
					<div class="add-product-note">
						Tối đa 20 kí tự
					</div>
					<br>
					<div class="title-detail">
						Short Description
					</div>
					<div class="add-product-detail">
						 <form:input type="text" name="title-product" placeholder="enter.." path="description"/> 
					</div>
					<div class="add-product-note">
						Nội dung được hiển thị màn hình sản phẩm
					</div>
					<br>
					<div class="title-detail">
						Danh mục cha
					</div>
					<div class="add-product-detail">
						 <form:select class="form-control form-control-line" path="parent_id">
							<form:options items="${categories}" itemValue="id" itemLabel="name"/>
							<form:option value="">&nbsp;</form:option>
						</form:select>
					</div>
					<div class="add-product-note">
						ID danh mục cha
					</div>
					<br>
					<div class="title-detail">
						Seo
					</div>
					<div class="add-product-detail">
						 <form:input type="text" name="title-product" placeholder="enter.." path="seo"/> 
					</div>
					<br>
					<!--<div class="title-detail">
						Trạng thái
					</div>
					<div class="add-product-size">
						<form>
							<label>Active</label>
							<form:checkbox path="status"/>
						</form>
					</div>-->
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