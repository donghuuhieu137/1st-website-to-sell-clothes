<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<title>Tài khoản</title>
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
		<div>
			<div class="profile-title">
				<div class="profile-title-text">
					<span>Tài khoản của bạn</span>
					<div class="center">
						<div class="profile-title-underline"></div>
					</div>
				</div>
			</div>
			<div class="profile-main">
				<div class="col-sm-3 profile-menu">
						<div class="profile-main-title">
						TÀI KHOẢN
					</div>
					<div class="profile-main-menu">Thông tin tài khoản</div>
					<div class="profile-main-menu"><a href="${pageContext.request.contextPath}/logout">Đăng xuất</a></div>
					</div>
				<div class="col-sm-9 profile-main-info">
					<div class="profile-main-title">THÔNG TIN TÀI KHOẢN</div>
					<div class="profile-main-info-pre">
						<div class="profile-main-info-pre-name">
							Đồng Hữu Hiếu
						</div>
						<div class="profile-main-info-pre-email">
							donghuuhieu137@gmail.com
						</div>
					</div>
					<div class="profile-main-info-list-order">
						<div class="profile-main-title">
							DANH SÁCH ĐƠN HÀNG MỚI NHẤT
						</div>
						<div class="table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th class="order_number text-center">Mã đơn hàng</th>
											<th class="date text-center">Ngày đặt</th>
											<th class="total text-right">Thành tiền</th>
											<th class="payment_status text-center">Trạng thái thanh toán</th>
											<th class="fulfillment_status text-center">Vận chuyển</th>

										</tr>
									</thead>
									<tbody>
										
										<tr class="odd ">
											<td class="text-center"><a href="/account/orders/cb9fd377fd324e12ab61b76f3bfd950e" title="">#124737</a></td>

											<td class="text-center"><span>22/06/2019</span></td>
											<td class="text-right"><span class="total money">483,000₫</span></td>
											<td class="text-center"><span class="status_paid">paid</span></td>
											<td class="text-center"><span class="status_fulfilled">fulfilled</span></td>

										</tr>
										
										<tr class="even ">
											<td class="text-center"><a href="/account/orders/6ef1bb537ce24ca08abc0bffe1793285" title="">#113419</a></td>

											<td class="text-center"><span>09/03/2019</span></td>
											<td class="text-right"><span class="total money">360,000₫</span></td>
											<td class="text-center"><span class="status_paid">paid</span></td>
											<td class="text-center"><span class="status_fulfilled">fulfilled</span></td>

										</tr>
										
									</tbody>
								</table>
							</div>
					</div>
				</div>
			</div>

		</div>
		<!-- main-body -->
	</div>
</body>
<!-- /main-body -->
<jsp:include page="/WEB-INF/views/front-end/common/footer.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/front-end/common/js.jsp"></jsp:include>

</html>