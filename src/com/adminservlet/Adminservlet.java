package com.adminservlet;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.adminservice.Adminservice;
import com.bean.Userbean;


public class Adminservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Adminservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String method=request.getParameter("method");
		if(method.equals("login"))
		{
			login(request,response);
			
		}
		else if("reg".equals(method))
		{
			reg(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	protected void reg(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		req.setCharacterEncoding("utf-8");
		Map<String, String[]> map=req.getParameterMap();
		Userbean userbean=new Userbean();
		try {
			BeanUtils.populate(userbean, map);
			new Adminservice().add(userbean);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("username");
		String password=request.getParameter("password");
	    Userbean userbean = new Adminservice().login(name, password);
	    if(userbean==null)
		{
			
	    	response.sendRedirect(request.getContextPath() + "/login/login.jsp?status=1");
		}
		else
		{
			if(userbean.getShenfen().equals("π‹¿Ì‘±"))
			{
			request.getSession().setAttribute("user", userbean);
			response.sendRedirect(request.getContextPath() + "/index/index.jsp");
			}
			else
			{
			request.getSession().setAttribute("user", userbean);
			response.sendRedirect(request.getContextPath() + "/user/index.jsp");
			}
		}
		
		
	}

}
