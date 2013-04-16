<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="blogg.*, java.util.List, java.sql.*"%>
    <% Class.forName("com.mysql.jdbc.Driver").newInstance(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Categories</title>
</head>
<body>
<%
BloggSystem bloggSystem = new BloggSystem();
bloggSystem.fill();

for(int i=0; i < bloggSystem.Categories.size();i++) {
	%>
	<%=bloggSystem.Categories.get(i).name%>
	<%
}
%>
</body>
</html>