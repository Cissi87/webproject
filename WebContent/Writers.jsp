<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Insert title here</title>
</head>
<body>

<%
BloggSystem bloggSystem = new BloggSystem();
bloggSystem.fill();

for(int i=0; i < bloggSystem.Writers.size();i++) {
	%>
	<h2><%=bloggSystem.Writers.get(i).title%></h2>
	<%=bloggSystem.posts.get(i).writer %>
	<%=bloggSystem.Writers.get(i).content%>
	<%=bloggSystem.Writers.get(i).category %>
	<%
}
%>

</body>
</html>