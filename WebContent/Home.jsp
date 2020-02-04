<%@page import="java.sql.Time"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	
	<%=new Date() %>
	<%
		int i = 0;
		if (request.getParameter("number") != null) {
			i = Integer.parseInt(request.getParameter("number"));
		}
		if (i % 2 == 0) {
	%>
	<jsp:include page="Success.jsp"></jsp:include>

	<%
		} else {
	%>
	<jsp:forward page="Error.jsp"></jsp:forward>

	<%
		}
	%>
</body>
</html>