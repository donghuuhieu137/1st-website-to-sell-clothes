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
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
			<!-- add product -->
			<div class="product col-md-9">
				<div class="title">
					${title }
				</div>
				<form:form action="${pageContext.request.contextPath}/admin/dashboard-products-add" method="post" modelAttribute="product" enctype="multipart/form-data">
					
					<form:hidden path="id"/>
					
					<form:hidden path="code"/>
					
					<div class="title-detail">
						Category
					</div>
					<div class="add-product-detail">
						<form:select class="form-control form-control-line" path="category.id">
							<form:options items="${categories}" itemValue="id" itemLabel="name"/>
						</form:select>
					</div>
					<br>
					<div class="title-detail">
						Title
					</div>
					<div class="add-product-detail">
						 <form:input type="text" name="title-product" placeholder="enter.." path="title"/> 
					</div>
					<br>
					<div class="title-detail">
						Size
					</div>
					<div class="add-product-detail">
						<form:checkboxes path="size" items="${size}" temValue="id" itemLabel="name"/>  
					</div>
					<br>
					<div class="title-detail">
						Color
					</div>
					<div class="add-product-detail">
						<form:checkboxes path="color" items="${color}" temValue="id" itemLabel="name"/>
					</div>
					<br>
					<div class="title-detail">
						Short Description
					</div>
					<div class="add-product-detail">
						 <form:input type="text" name="title-product" placeholder="enter.." path="shortDes"/> 
					</div>
					<div class="add-product-note">
						Tối đa 20 kí tự
					</div>
					<br>
					<div class="add-product-detail">
						 <label>Details description</label>
						<form:textarea id="txtDetailDescription" class="form-control" path="detailDes"/>
					</div>
					<div class="add-product-note">
						Nội dung được hiển thị màn hình sản phẩm
					</div>
					<br>
					<div class="form-group">
						<label>Images</label>
						<input type="file" name="product_images" class="form-control" multiple="multiple">
					</div>
					<br>
					<div class="title-detail">
						Giá bán
					</div>
					<div class="add-product-detail">
						 <form:input type="number" name="title-product" placeholder="enter.." path="price"/> 
					</div>
					<div class="add-product-note">
						Đơn vị VNĐ
					</div>
					<br>
					<div class="title-detail">
						Trạng thái
					</div>
					<div class="add-product-detail">
						 <form:checkbox path="status"/>
					</div>
					<div class="add-product-note">
						Xác định sản phẩm được hiển thị
					</div>
					<br>
					<button type="submit" class="btn btn-primary">Lưu trữ</button>
				</form:form>
			</div>
			
			<!-- /add product -->
		</div>
	</div>
<!-- /wrapper -->
<jsp:include page="/WEB-INF/views/front-end/common/js.jsp"></jsp:include>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
        <script>
        	$( document ).ready(function() {
        		$('#txtDetailDescription').summernote();
        	});        
        </script>
</body>
</html>