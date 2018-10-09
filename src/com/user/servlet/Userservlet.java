package com.user.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Util.StringUtil;
import com.alibaba.fastjson.JSON;
import com.bean.Juesebean;
import com.bean.Userbean;
import com.userservice.Userservice;

/**
 * Servlet implementation class Userservlet
 */
public class Userservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String method=request.getParameter("method");
		if(method.equals("userlist"))		
		{
			userlist(request,response);
		}
		else if(method.equals("userdelete"))
		{
			userdelete(request,response);
		}
		else if(method.equals("quanxian"))
		{
			quanxian(request,response);
		}
		
		
		
			
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	protected void quanxian(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		req.setCharacterEncoding("utf-8");
		Userservice userservice=new Userservice();
		List<Userbean> userlists=userservice.userlist();
		req.setAttribute("Userlists", userlists);
		req.getRequestDispatcher("/index/quanxian.jsp").forward(req, resp);
	}
	protected void userdelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		Userservice userservice=new Userservice();
		int id=StringUtil.StringToInt(request.getParameter("id"));
		userservice.userdelete(id);
		List<Userbean> userlists=userservice.userlist();
		request.setAttribute("Userlists", userlists);
		request.getRequestDispatcher("/index/userlist.jsp?status=1").forward(request, response);
	}
	protected void userlist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		List<Userbean> userlists=new Userservice().userlist();
		request.setAttribute("Userlists", userlists);
		request.getRequestDispatcher("/index/userlist.jsp").forward(request, response);
	}

}
