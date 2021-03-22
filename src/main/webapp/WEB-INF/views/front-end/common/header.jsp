<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="main-header">
			<!-- header-mid -->
			<div class="header-mid" id="header">
				<div class="contact-icon">
					<a href="#" title="Facebook"><i class="fab fa-facebook"></i></a>
					<a href="#" title="Instagram"><i class="fab fa-instagram"></i></a>
					<a href="#" title="Twiter"><i class="fab fa-twitter"></i></a>
				</div>
				<div class="logo-brand"><a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/images/logo.jpg"></a></div>
				<div class="header-icon">
					<a href="#" title="Tìm kiếm"><span><i class="fas fa-search"></i></span></a>
					<a href="${pageContext.request.contextPath}/login" title="Tài khoản"><span><i class="fas fa-user-circle"></i></span></a>
					<a href="${pageContext.request.contextPath}/cart" title="Giỏ hàng">
						<span><i class="fas fa-shopping-cart"></i></span>
						<span id="cart-product-quantity">${productQuality}</span>
					</a>
				</div>
			</div>
			<!-- /header-mid -->
			<!-- menu -->
			<div class="menu">
				<nav>
					<ul>
						<li class="menu-hover"><a href="${pageContext.request.contextPath}/" title="TRANG CHỦ">Trang Chủ</a></li>
						<c:forEach items="${categories}" var="categories1">
								<c:choose>
		                        	<c:when test="${categories1.parent_id == NULL}">
		                         		<li class="menu-hover">
											<a href="${pageContext.request.contextPath}/collections/${categories1.id}" title="${categories1.name}">${categories1.name}<i class="fas fa-chevron-down"></i></a>
											<ul class="drop-menu">
											<c:forEach items="${categories}" var="categories2">
													<c:choose>
														<c:when test="${categories2.parent_id == categories1.id}">
															<li><a href="${pageContext.request.contextPath}/collections/${categories2.id}" title="${categories2.name}">${categories2.name}</a></li>
														</c:when>
													</c:choose>
												
											</c:forEach>
											</ul>
										</li>
		                            </c:when>
		                        </c:choose>
						</c:forEach>
					</ul>
				</nav>
			</div>
			<!-- /menu -->
		</div>