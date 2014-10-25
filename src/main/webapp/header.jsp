<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@page import="org.springframework.security.core.Authentication"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>


<%Authentication authentication = SecurityContextHolder.getContext().getAuthentication();%>

<security:authorize access="hasRole('ROLE_ADMIN') or hasRole('ROLE_DBA')">
	Welcome <b><security:authentication property="principal.username"/></b>
	<br/> <br/>
</security:authorize>

<a href="<%=application.getContextPath()%>/index.jsp">HOME</a>

<hr />