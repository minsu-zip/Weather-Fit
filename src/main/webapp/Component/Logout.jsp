<!-- 로그아웃 페이지 세션 종료 -->
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%
	session.invalidate();
	response.sendRedirect("Weather.jsp");
	
%>
