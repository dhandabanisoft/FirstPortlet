<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
<%@ page import="org.apache.log4j.Logger"%>
<%
	Logger log = Logger.getLogger("com.log.test");
	log.info("Entering Login JSP");
%>
<portlet:defineObjects />
<html>
<head>
<title>Login Page</title>
</head>

	<h3 align="center">
		Sign in to continue to mail <img
			src="\portlets\First-portlet\docroot\images\Tulips.jpg" width="16"
			height="16">
	</h3>

<body>
	<portlet:actionURL name="doGet" windowState="normal" var="doGet">
	</portlet:actionURL>
	<br>	
	<form action="<%=doGet%>" method="post" align="center">
		<hr>
		 UserName <br>
		 <input  type="text" name="<portlet:namespace/>un" id="<portlet:namespace/>un"/><br/>
		 Password <br> 
		 <input  type="text" name="<portlet:namespace/>pw" id="<portlet:namespace/>pw"/><br/>
		 
		 <input type="submit" name="submit" id="sub_btn" value="sign-in">
		 
	</form>	
	<%
		log.info("Exiting login JSP");
	%>
</body>

</html>