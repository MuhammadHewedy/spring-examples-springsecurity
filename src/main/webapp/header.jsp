<%@page import="org.springframework.security.core.Authentication"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>


<%Authentication authentication = SecurityContextHolder.getContext().getAuthentication();%>