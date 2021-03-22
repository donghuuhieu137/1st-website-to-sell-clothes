<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
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
				<span>Đăng nhập</span>
			</div>
			<div class="col-sm-6 col-md-6 login-input">
				<form id="login_form" action="${pageContext.request.contextPath}/login" method="post">
					<input type="text" name="username" id="username" placeholder="Email">
					<br><br><br>
					<input type="password" name="password" id="password" placeholder="Mật khẩu">
					<br><br>
					 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					<div class="login-submit">
						<button type="submit">Đăng nhập</button>
						<ul>
							<li><a href="${pageContext.request.contextPath}/get-password">Quên mật khẩu?</a></li>
							<li>hoặc <a href="${pageContext.request.contextPath}/regist">Đăng kí</a></li>
						</ul>
					</div>
					
				</form>
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