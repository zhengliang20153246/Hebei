package com.user.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.jcp.xml.dsig.internal.MacOutputStream;

import com.Util.StringUtil;
import com.alibaba.fastjson.JSON;
import com.bean.Juesebean;
import com.bean.Userbean;
import com.userservice.Quanxianservice;
import com.userservice.Userservice;

/**
 * Servlet implementation class Quanxianservlet
 */
public class Quanxianservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Quanxianservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String method=request.getParameter("method");
		if(method.equals("jueselist"))
		{
			jueselist(request,response);
		}
		else if(method.equals("showquanxian"))
		{
			showquanxian(request,response);
		}
		else if(method.equals("searchquanxian"))
		{
			searchquanxian(request,response);
		}
		else if(method.equals("searchquanxian"))
		{
			searchquanxianid(request,response);
		}
		else if(method.equals("fenpeijuese"))
		{
			fenpeijuese(request,response);
		}
		else if(method.equals("addjuese"))
		{
			addjuese(request,response);
		}
		else if(method.equals("feipeiquanxian"))
		{
			feipeiquanxian(request,response);
		}
		else 
		{
			deletejuese(request,response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	protected void deletejuese(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		req.setCharacterEncoding("utf-8");
		String juese=req.getParameter("juese");
		System.out.println(juese);
		new Quanxianservice().deletejuese(juese);
		List<Juesebean> jueselist=new Userservice().jueselist();
		resp.setCharacterEncoding("utf-8");
		PrintWriter out = resp.getWriter();
		out.print(JSON.toJSONString(jueselist));
		out.flush();
		out.close();
		
	}
	protected void feipeiquanxian(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		req.setCharacterEncoding("utf-8");
		Map<String,String[]>map=req.getParameterMap();
		Juesebean juesebean=new Juesebean();
		try {
			BeanUtils.populate(juesebean, map);
			new Quanxianservice().feipeiquanxian(juesebean);
			List<Juesebean> jueselist=new Userservice().jueselist();
			resp.setCharacterEncoding("utf-8");
			PrintWriter out = resp.getWriter();
			out.print(JSON.toJSONString(jueselist));
			out.flush();
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	protected void addjuese(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		req.setCharacterEncoding("utf-8");
		String  newjuese=req.getParameter("newjuese");
		new Quanxianservice().addjuese(newjuese);
		List<Juesebean> jueselist=new Userservice().jueselist();
		resp.setCharacterEncoding("utf-8");
		PrintWriter out = resp.getWriter();
		out.print(JSON.toJSONString(jueselist));
		out.flush();
		out.close();
		
	}
	protected void fenpeijuese(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		req.setCharacterEncoding("utf-8");
		int userid=StringUtil.StringToInt(req.getParameter("qxuserid"));
		String qxjuese=req.getParameter("qxjuese");
		new Quanxianservice().fenpeiquan(userid,qxjuese);
		resp.setCharacterEncoding("utf-8");
		PrintWriter out = resp.getWriter();
		out.print(JSON.toJSONString("1"));
		out.flush();
		out.close();
	}
	protected void searchquanxian(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		req.setCharacterEncoding("utf-8");
		String juese=req.getParameter("juese");
		Juesebean juesebean=new Quanxianservice().searchquanxian(juese);
		resp.setCharacterEncoding("utf-8");
		PrintWriter out = resp.getWriter();
		out.print(JSON.toJSONString(juesebean));
		out.flush();
		out.close();
	}
	protected void searchquanxianid(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		req.setCharacterEncoding("utf-8");
		int id=StringUtil.StringToInt(req.getParameter("jueseid"));
		Juesebean juesebean=new Quanxianservice().searchquanxianid(id);
		resp.setCharacterEncoding("utf-8");
		PrintWriter out = resp.getWriter();
		out.print(JSON.toJSONString(juesebean));
		out.flush();
		out.close();
	}
	protected void showquanxian(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		req.setCharacterEncoding("utf-8");
		int userid=StringUtil.StringToInt(req.getParameter("userid"));
		Userbean userbean = new Userservice().searchusershenfen(userid);
		Juesebean juesebean=new Quanxianservice().searchquanxian(userbean.getShenfen());
		resp.setCharacterEncoding("utf-8");
		PrintWriter out = resp.getWriter();
		out.print(JSON.toJSONString(juesebean));
		out.flush();
		out.close();
	}
	protected void jueselist(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		req.setCharacterEncoding("utf-8");
		Userservice userservice=new Userservice();
		List<Juesebean> jueselist=userservice.jueselist();
		resp.setCharacterEncoding("utf-8");
		PrintWriter out = resp.getWriter();
		out.print(JSON.toJSONString(jueselist));
		out.flush();
		out.close();
	}

}
