<!-- 찜목록을 처리하는 페이지 해당 item 정보를 받아와 리스트에 넣어준다 -->
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
	Dress dress = dao.getDressById(id);
	
	if (dress == null) {
		response.sendRedirect("exceptionNoProductId.jsp");
	}
	
	ArrayList<Dress> goodsList = dao.getAllProducts();
	Dress goods = new Dress();
	
	for (int i = 0; i < goodsList.size(); i++) {
		goods = goodsList.get(i);
		if (goods.getDressId().equals(id)) {
			break;
		}
	}
	
	
	ArrayList<Dress> list = (ArrayList<Dress>) session.getAttribute("cartlist");
	if (list == null) {
		list = new ArrayList<Dress>();
		session.setAttribute("cartlist", list);
	}
	int cnt = 0;
	Dress goodsQnt = new Dress();
	
	for (int i = 0; i < list.size(); i++) {
		goodsQnt = list.get(i);
		if (goodsQnt.getDressId().equals(id)) {
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() + 1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}
	
	if (cnt == 0) {
		goods.setQuantity(1);
		list.add(goods);
	}
	response.sendRedirect("Dress.jsp?id=" + id);
%>