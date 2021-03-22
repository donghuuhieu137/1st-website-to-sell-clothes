package com.itptit.model;

import javax.servlet.http.HttpServletRequest;

public class CategorySearch {

	public static int SIZE_ITEMS_ON_PAGE = 1;

	private Integer id;
	private Integer currentPage;
	private Integer ParentId;

	public static int getSIZE_ITEMS_ON_PAGE() {
		return SIZE_ITEMS_ON_PAGE;
	}

	public static void setSIZE_ITEMS_ON_PAGE(int sIZE_ITEMS_ON_PAGE) {
		SIZE_ITEMS_ON_PAGE = sIZE_ITEMS_ON_PAGE;
	}

	public Integer getParentId() {
		return ParentId;
	}

	public void setParentId(Integer parentId) {
		ParentId = parentId;
	}

	public void parseRequest(final HttpServletRequest request) {
		Integer currentPage = null;

		String strPage = request.getParameter("page");
		if (strPage != null && !strPage.isEmpty()) {
			currentPage = Integer.parseInt(strPage);
		}

		this.setCurrentPage(currentPage);
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}



}
