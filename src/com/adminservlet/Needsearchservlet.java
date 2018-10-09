package com.adminservlet;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.adminservice.Needsearchservice;
import com.bean.Tiaojianbean;
import com.bean.Zhengjibean;


public class Needsearchservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Needsearchservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String method=request.getParameter("method");
		if(method.equals("needsearch"))
		{
			needsearch(request,response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	protected void needsearch(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		Map<String, String[]> map=request.getParameterMap();
		Tiaojianbean tiaojianbean=new Tiaojianbean();
		try {
			BeanUtils.populate(tiaojianbean, map);
			List<Zhengjibean> list = new Needsearchservice().needsearch(tiaojianbean);
			if(list.size()==0)
			{
				response.sendRedirect(request.getContextPath()+"/index/needsearch.jsp?status=1");
			}
			else
			{
				request.setAttribute("zhengjibeanlist", list);
				request.getRequestDispatcher("/index/needsearch.jsp").forward(request, response);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
