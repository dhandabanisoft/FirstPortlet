<%@ page import="com.test.firstportlet.UserBean" import="com.test.LoginServlet"%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
<%@ page import="org.apache.log4j.Logger" %>
<% Logger log = Logger.getLogger("com.log.test");
           log.info("Entering userlogged JSP");
            %>
<portlet:defineObjects />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>User Logged Successfully</title>
</head>
<body>
	<center>
	
		<% UserBean currentUser = (UserBean)(session.getAttribute("currentSessionUser"));	
		%>
		Welcome
		<%= currentUser.getUsername() + " " + currentUser.getPassword() %>
	</center>
	 <% log.info("Existing userlogged JSP");%>
</body>
</html>