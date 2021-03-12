<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<title>Đăng nhập</title>
	<!-- load css -->
	<jsp:include page="/WEB-INF/views/front-end/common/css.jsp"></jsp:include>
</head>
<body>
	<!-- wrapper -->
	<div class="wrapper">
		<!-- header -->
			<jsp:include page="/WEB-INF/views/front-end/common/header.jsp"></jsp:include>
		<!-- /header -->
		<!-- main-body -->
		<div class="login-main-body">
			<div class="col-sm-6 col-md-6 login-title">
				<span>Đăng kí</span>
			</div>
			<div class="col-sm-6 col-md-6 login-input">
				<form:form action="${pageContext.request.contextPath}/regist" method="post" modelAttribute="user">
					<form:hidden path="id"/>
					<form:input type="text" path="userName" name="userName" placeholder="userName"/>
					<br><br><br>
					<form:input type="text" path="email" name="email" placeholder="Email"/>
					<br><br><br>
					<form:input type="password" path="password" name="password" placeholder="Mật khẩu"/>
					<br><br><br>
					<form:input type="text" path="address" name="address" placeholder="Địa chỉ"/>
					<br><br><br>
					<div class="login-submit">
						<button type="submit">Đăng kí</button>
						<div class="get-password-cancel"><a href="${pageContext.request.contextPath}/login">Huỷ</a></div>
					</div>
					
				</form:form>
				<br>
			</div>
		</div>
		<!-- main-body -->
	</div>
</body>
<!-- /main-body -->
<jsp:include page="/WEB-INF/views/front-end/common/footer.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/front-end/common/js.jsp"></jsp:include>

</html>