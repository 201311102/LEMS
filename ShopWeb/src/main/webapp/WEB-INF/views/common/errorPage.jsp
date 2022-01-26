<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isErrorPage="true"%>
<%
	response.setStatus(200);
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../include/menu.jsp"%>
</head>
<body>
	<p
		style="text-align: center; font-size: 20px; font-weight: bold; margin: 50px 0px;">
		잘못된 주소입니다.<br> <a href="main">[메인 홈으로 가기]</a>
	</p>
</body>
<%@ include file="../include/csinfo.jsp"%>