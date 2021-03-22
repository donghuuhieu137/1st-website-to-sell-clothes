<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<div class="header-bar">
			<div class="logo col-md-2">
				<img src="${pageContext.request.contextPath}/images/logo.jpg">
			</div>
			<div class="search-bar col-md-9">
				<input type="text" placeholder="Search..">
			</div>
			<div class="log-out col-md-1">
				<a href="${pageContext.request.contextPath}/logout"><button>Sign out</button></a>
			</div>
		</div>