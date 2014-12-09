<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
<%@ page import="org.apache.log4j.Logger" %>
<% Logger log = Logger.getLogger("com.log.test");
           log.info("Entering invalidlogin JSP");
            %>
<portlet:defineObjects />
<html>
<head>
<title>Invalid Login</title>
</head>
<body>
	Sorry, you are not a registered user! Please sign up 
	
<br/>
	
 <% log.info("Existing invalidlogin JSP");%>
</body>

</html>