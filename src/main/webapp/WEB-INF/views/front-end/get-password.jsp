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
				<span>Khôi phục mật khẩu</span>
			</div>
			<div class="col-sm-6 col-md-6 login-input">
				<form>
					<label class="get-password-title">Nhập email</label>
					<br><br>
					<input type="text" name="username" placeholder="Email">
					<br><br><br>
					<div class="login-submit">
						<button>Gửi</button>
						<div class="get-password-cancel"><a href="${pageContext.request.contextPath}/login">Huỷ</a></div>
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