<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="index.jsp">HOME</a>

	<h3>Login to My App</h3>

	<%
		String errorMsg = request.getParameter("error");
		if (errorMsg != null && !errorMsg.trim().isEmpty()) {
	%>
	<p style="color: red;">
		Login failed,
		<%=errorMsg%>
	</p>
	<%
		}
	%>

	<form action="j_spring_security_check" method="POST">
		<table>
			<tr>
				<td>User or email</td>
				<td><input type="text" name="usernameTxt" /></td>
			</tr>

			<tr>
				<td>password</td>
				<td><input type="text" name="passwordTxt" /></td>
			</tr>

			<tr>
				<td>Remember me</td>
				<td><input name="_spring_security_remember_me" type="checkbox" />
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="Login" /></td>
			</tr>

		</table>
	</form>
</body>
</html>