<%@page import="org.springframework.security.authentication.AnonymousAuthenticationToken"%>
<%@ include file="../header.jsp"%>
<html>
<body>
	<h2>Hello World!</h2>


	<a href="admin/index.jsp">Go to admin specific resources</a>
	<a href="dba/index.jsp">Go to dba specific resources</a>

	<%
	if (!(authentication instanceof AnonymousAuthenticationToken)) {
	%>
	<%
		System.out.println("auth: " + authentication);
	%>
	<br />
	<a href="j_spring_security_logout">Logout</a>
	<%
		}
	%>


</body>
</html>
