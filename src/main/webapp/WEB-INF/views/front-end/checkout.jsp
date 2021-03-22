<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Thanh toán đơn hàng</title>
	<link href="${pageContext.request.contextPath}/css/checkout.css"
	rel="stylesheet">
</head>
<body>
	<div class="content">
		<div class="wrap">
			<div class="sidebar">
				<div class="sidebar-content">
					<div class="order-summary order-summary-is-collapsed">
						<h2 class="visually-hidden">Thông tin đơn hàng</h2>
						<div class="order-summary-sections">
							<div class="order-summary-section order-summary-section-product-list" data-order-summary-section="line-items">
								<table class="product-table">
									<tbody>
										<c:forEach items="${cart.cartProduct}" var="product">
											<tr class="product">
												<td class="product-image">
													<div class="product-thumbnail">
														<div class="product-thumbnail-wrapper">
															<img class="product-thumbnail-image" src="${pageContext.request.contextPath}/uploads/${product.imgPath}">
														</div>
														<span class="product-thumbnail-quantity" aria-hidden="true">${product.quality}</span>
													</div>
												</td>
												<td class="product-description">
													<span class="product-description-name order-summary-emphasis">${product.name}</span>
	
													<span class="product-description-variant order-summary-small-text">
														${product.color} / ${product.size}
													</span>
	
												</td>
												<td class="product-quantity visually-hidden">${product.quality}</td>
												<td class="product-price">
													<span class="order-summary-emphasis">${product.totalPrice}₫</span>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>

							<div class="order-summary-section order-summary-section-discount" data-order-summary-section="discount">
								<form id="form_discount_add" accept-charset="UTF-8" method="post">
									<input name="utf8" type="hidden" value="✓">
									<div class="fieldset">
										<div class="field  ">
											<div class="field-input-btn-wrapper">
												<div class="field-input-wrapper">
													<label class="field-label" for="discount.code">Mã giảm giá</label>
													<input placeholder="Mã giảm giá" class="field-input" data-discount-field="true" autocomplete="off" autocapitalize="off" spellcheck="false" size="30" type="text" id="discount.code" name="discount.code" value="">
												</div>
												<button type="submit" class="field-input-btn btn btn-default btn-disabled">
													<span class="btn-content">Sử dụng</span>
													<i class="btn-spinner icon icon-button-spinner"></i>
												</button>
											</div>

										</div>
									</div>
								</form>
							</div>


							<div class="order-summary-section order-summary-section-total-lines payment-lines" data-order-summary-section="payment-lines">
								<table class="total-line-table">
									<thead>
										<tr>
											<th scope="col"><span class="visually-hidden">Mô tả</span></th>
											<th scope="col"><span class="visually-hidden">Giá</span></th>
										</tr>
									</thead>
									<tbody>
										<tr class="total-line total-line-subtotal">
											<td class="total-line-name">Tạm tính</td>
											<td class="total-line-price">
												<span class="order-summary-emphasis">
													${totalPriceInCart}
												</span>
											</td>
										</tr>

										<tr class="total-line total-line-shipping">
											<td class="total-line-name">Phí vận chuyển</td>
											<td class="total-line-price">
												<span class="order-summary-emphasis">
													30,000₫
												</span>
											</td>
										</tr>

									</tbody>
									<tfoot class="total-line-table-footer">
										<tr class="total-line">
											<td class="total-line-name payment-due-label">
												<span class="payment-due-label-total">Tổng cộng</span>
											</td>
											<td class="total-line-name payment-due">
												<span class="payment-due-currency">VND</span>
												<span class="payment-due-price">
													${totalPriceInCart}₫
												</span>
											</td>
										</tr>
									</tfoot>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="main">
				<div class="main-header">
					<a href="${pageContext.request.contextPath}/" class="logo">
						<img src="${pageContext.request.contextPath}/images/logo.jpg">
					</a>
				</div>
				<div class="main-content">

					<div class="step">
						<div class="step-sections steps-onepage">
							<div class="section">
								<div class="section-header">
									<h2 class="section-title">Thông tin giao hàng</h2>
								</div>
								
								<form:form action="${pageContext.request.contextPath}/checkout" method="post" modelAttribute="saleOrder">
									<div class="section-content section-customer-information ">
										<div class="fieldset">
											<div class="field field-required  ">
												<div class="field-input-wrapper">
													<label class="field-label" for="billing_address_full_name">Họ và tên</label>
													<form:input placeholder="Họ và tên" autocapitalize="off" spellcheck="false" class="field-input" size="30" type="text" id="name" name="billing_address_full_name" value="" path="name"/>
												</div>
											</div>
	
	
	
											<div class="field  field-two-thirds  ">
												<div class="field-input-wrapper">
													<label class="field-label" for="checkout_user_email">Email</label>
													<form:input placeholder="Email" autocapitalize="off" spellcheck="false" class="field-input" size="30" type="email" id="email" name="checkout_user_email" value="" path="email"/>
												</div>
	
											</div>
	
	
	
											<div class="field field-required field-third  ">
												<div class="field-input-wrapper">
													<label class="field-label" for="billing_address_phone">Số điện thoại</label>
													<form:input placeholder="Số điện thoại" autocapitalize="off" spellcheck="false" class="field-input" size="30" maxlength="15" type="tel" id="phoneNumber" name="billing_address_phone" value="" path="phoneNumber"/>
												</div>
	
											</div>
	
	
											<div class="field field-required  ">
												<div class="field-input-wrapper">
													<label class="field-label" for="billing_address_address1">Địa chỉ</label>
													<form:input placeholder="Địa chỉ" autocapitalize="off" spellcheck="false" class="field-input" size="30" type="text" id="address" name="billing_address_address1" value="" path="address"/>
												</div>
											</div>
										</div>
									</div>
								</form:form>



									<div id="section-shipping-rate">
										<div class="section-header">
											<h2 class="section-title">Phương thức vận chuyển</h2>
										</div>
										<div class="section-content">

											<div class="content-box">

												<div class="content-box-row">
													<div class="radio-wrapper">
														<label class="radio-label" for="shipping_rate_id_951370">
															<div class="radio-input">
																<input id="shipping_rate_id_951370" class="input-radio" type="radio" name="shipping_rate_id" value="951370" checked="">
															</div>
															<span class="radio-label-primary">WEB_ĐƠN DƯỚI 299K SHIP 30K/ĐƠN COD.</span>
															<span class="radio-accessory content-box-emphasis">

																30,000₫

															</span>
														</label>
													</div>
												</div>

												<div class="content-box-row">
													<div class="radio-wrapper">
														<label class="radio-label" for="shipping_rate_id_1199384">
															<div class="radio-input">
																<input id="shipping_rate_id_1199384" class="input-radio" type="radio" name="shipping_rate_id" value="1199384">
															</div>
															<span class="radio-label-primary">FB_IG SHIP TOÀN QUỐC 30K</span>
															<span class="radio-accessory content-box-emphasis">
																30,000₫
															</span>
														</label>
													</div>
												</div>

											</div>

										</div>
									</div>

									<div id="section-payment-method" class="section">
										<div class="section-header">
											<h2 class="section-title">Phương thức thanh toán</h2>
										</div>
										<div class="section-content">
											<div class="content-box">


												<div class="radio-wrapper content-box-row">
													<label class="radio-label" for="payment_method_id_870425">
														<div class="radio-input">
															<input id="payment_method_id_870425" class="input-radio" name="payment_method_id" type="radio" value="870425" checked="checked">
														</div>
														<span class="radio-label-primary">Thanh toán khi giao hàng (COD)</span>
													</label>
												</div>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
						<div class="step-footer">

							<form id="form_next_step" accept-charset="UTF-8" method="post">
								<button type="submit" class="step-footer-continue-btn btn">
									<span class="btn-content">Hoàn tất đơn hàng</span>
									<i class="btn-spinner icon icon-button-spinner"></i>
								</button>
							</form>
							<a class="step-footer-previous-link" href="${pageContext.request.contextPath}/cart">
								<svg class="previous-link-icon icon-chevron icon" xmlns="http://www.w3.org/2000/svg" width="6.7" height="11.3" viewBox="0 0 6.7 11.3"><path d="M6.7 1.1l-1-1.1-4.6 4.6-1.1 1.1 1.1 1 4.6 4.6 1-1-4.6-4.6z"></path></svg>
								Giỏ hàng
							</a>

						</div>
					</div>

				</div>
				<div class="main-footer">

				</div>
			</div>
		</div>

	</div>
</body>
</html>