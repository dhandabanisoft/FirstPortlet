package com.test;
import java.io.IOException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.util.PortalUtil;
import com.liferay.util.bridges.mvc.MVCPortlet;
import com.test.firstportlet.UserBean;
import com.test.firstportlet.UserDAO;

/** * Servlet implementation class LoginServlet */

public class LoginServlet extends MVCPortlet {
	public void doGet(ActionRequest actionRequest, ActionResponse actionResponse)throws IOException, PortletException{
		try
		{
			System.out.println("Enter into Try method");
			
			String employeeName = ParamUtil.getString(actionRequest, "un");
			String employeeAddress = ParamUtil.getString(actionRequest,"pw");
			
			//System.out.println("employeeName"+ employeeName);
			//System.out.println("employeeAddress"+ employeeAddress);
			
			HttpServletRequest requestt = PortalUtil.getOriginalServletRequest(PortalUtil.getHttpServletRequest(actionRequest));
			
			UserBean user = new UserBean();	
			user.setUserName(actionRequest.getParameter("un"));
			user.setPassword(actionRequest.getParameter("pw"));
			
			user = UserDAO.login(user);			
			
			if (user.isValid()) 
			{
				HttpSession session =  requestt.getSession(true);
				session.setAttribute("currentSessionUser",user);
				
				//actionResponse.sendRedirect("userLogged.jsp");	//logged page
				actionResponse.setRenderParameter("mvcPath","/html/new/userLogged.jsp");		
				//return;
			} 
			else				
				//actionResponse.sendRedirect("invalidLogin.jsp");//error page
				actionResponse.setRenderParameter("mvcPath","/html/new/invalidLogin.jsp");
			//return;
			System.out.println("end of the progrmme");
		}
		catch(Throwable theException)
		{
			System.out.println(theException);
		}
	}
}
