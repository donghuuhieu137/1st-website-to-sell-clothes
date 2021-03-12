<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<div class="menu-main col-md-2">
				<ul>
					<li class="menu-title">
						<div class="dashboard-home">DASHBOARD</div>
						<i class="fas fa-home"></i>
					</li>
					<li>
						<i class="fas fa-file"></i>
						<div class="orders"><a href="${pageContext.request.contextPath}/admin/dashboard-orders">Đơn hàng</a></div>
					</li>
					<li>
						<i class="fas fa-shopping-cart"></i>
						<div class="products"><a href="${pageContext.request.contextPath}/admin/dashboard-products">Sản phẩm</a></div>
					</li>
					<li>
						<i class="fas fa-user"></i>
						<div class="accounts"><a href="${pageContext.request.contextPath}/admin/dashboard-accounts">Tài khoản</a></div>
					</li>
					<li>
						<i class="fas fa-percent"></i>
						<div class="discount"><a href="${pageContext.request.contextPath}/admin/dashboard-sale-off">Khuyến mãi</a></div>
					</li>
					<li>
						<i class="fas fa-list-alt"></i>
						<div class="list-products"><a href="${pageContext.request.contextPath}/admin/dashboard-category">Danh mục sản phẩm</a></div>
					</li>
					<li class="menu-title">
						SAVED REPORT
						<i class="fas fa-flag"></i>
					</li>
					<li>
						<i class="fas fa-hourglass-start"></i>
						<div class="last-quarter">
							<a href="#">Last quarter</a>
						</div>
					</li>
					<li>
						<i class="fas fa-people-arrows"></i>
						<div class="social-engagement">
							<a href="#">Social engagement</a>
						</div>
					</li>
					<li>
						<i class="fas fa-vote-yea"></i>
						<div class="year-end-sale">
							<a href="#">Year-end sale</a>
						</div>
					</li>
				</ul>
			</div>