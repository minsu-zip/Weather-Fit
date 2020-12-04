<!-- 찜목록에있는 항목을 삭제해주는 페이지 -->
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Dress"%>
<%@ page import="dao.DressRepository"%>

<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("Dress.jsp"); 
		return;
	}
		
	DressRepository dao = DressRepository.getInstance();
	Dress product = dao.getDressById(id); 
	if (product == null) {
		response.sendRedirect("exceptionNoProductId.jsp");
	}
	
	ArrayList<Dress> cartList = (ArrayList<Dress>) session. getAttribute("cartlist"); 
	Dress goodsQnt = new Dress(); 
	for (int i = 0; i < cartList.size(); i++) {
		goodsQnt = cartList.get(i); 
		if (goodsQnt.getDressId().equals(id)) {
			cartList.remove(goodsQnt);
		}
	}
	response.sendRedirect("Cart.jsp");
%>