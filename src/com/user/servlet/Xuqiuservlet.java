package com.user.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.Util.StringUtil;
import com.adminservice.Xuqiuservice;
import com.bean.Hangyebean;
import com.bean.Tongjibean;
import com.bean.Tuihuibean;
import com.bean.Xuekebean;
import com.bean.Zhengjibean;





public class Xuqiuservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Xuqiuservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String method=request.getParameter("method");
		if(method.equals("tianbao"))
		{
			zhao(request,response);
		}
		else if(method.equals("addneed"))
		{
			addneed(request,response);
		}
		else if(method.equals("needhecha"))
		{
			needhecha(request,response);
		}
		else if(method.equals("needlist"))
		{
			needlist(request,response);
		}
		else if(method.equals("shenhe"))
		{
			shenhe(request,response);
		}
		else if(method.equals("tuihuiliulan"))
		{
			tuihuiliulan(request,response);
		}
		else if(method.equals("needshangchuan"))
		{
			needshangchuan(request,response);
		}
		else if(method.equals("needdelete"))
		{
			needdelete(request,response);
		}
		else if(method.equals("needhechadetail"))
		{
			needhechadetail(request,response);
		}
		else if(method.equals("needxiugai"))
		{
			needxiugai(request,response);
		}
		else if(method.equals("search"))
		{
			search(request,response);
		}
		else if(method.equals("tuihuineeddelete"))
		{
			tuihuineeddelete(request,response);
		}
		else if(method.equals("tuihuiliulandetail"))
		{
			tuihuiliulandetail(request,response);
		}
		else if(method.equals("shenhedetail"))
		{
			shenhedetail(request,response);
		}
		else if(method.equals("zhengjishenehe"))
		{
			zhengjishenehe(request,response);
		}
		else if(method.equals("zhengjituihui"))
		{
			zhengjituihui(request,response);
		}
		
		
		else
		{
			tongji(request,response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	protected void zhengjituihui(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		req.setCharacterEncoding("utf-8");
		int id=StringUtil.StringToInt(req.getParameter("id"));
		Xuqiuservice xuqiuservice=new Xuqiuservice();
		xuqiuservice.zhengjishenehe(3, id);
		Map<String, String[]> map=req.getParameterMap();
		Tuihuibean tuihuibean=new Tuihuibean();
		tuihuibean.setZhengjiid(id);
		try {
			//封装数据
			BeanUtils.populate(tuihuibean, map);
			new Xuqiuservice().addtuihui(tuihuibean);
			req.getRequestDispatcher("/index/shenhedetail.jsp?status=2").forward(req, resp);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	protected void zhengjishenehe(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		req.setCharacterEncoding("utf-8");
		int id=StringUtil.StringToInt(req.getParameter("id"));
		Xuqiuservice xuqiuservice=new Xuqiuservice();
		xuqiuservice.zhengjishenehe(2, id);
		req.getRequestDispatcher("/index/shenhedetail.jsp?status=1").forward(req, resp);
	}
	protected void shenhedetail(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		req.setCharacterEncoding("utf-8");
		int id=StringUtil.StringToInt(req.getParameter("id"));
		Xuqiuservice xuqiuservice=new Xuqiuservice();
		Zhengjibean zhengjibean=xuqiuservice.searchneed(id);
		req.setAttribute("zhengjibean", zhengjibean);
		req.getRequestDispatcher("/index/shenhedetail.jsp").forward(req, resp);
	}
	protected void tuihuiliulandetail(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		req.setCharacterEncoding("utf-8");
		int id=StringUtil.StringToInt(req.getParameter("id"));
		Xuqiuservice xuqiuservice=new Xuqiuservice();
		Zhengjibean zhengjibean=xuqiuservice.searchneed(id);
		Tuihuibean tuihuibean=xuqiuservice.tuihuiliyou(id);
		req.setAttribute("tuihuibean", tuihuibean);
		req.setAttribute("zhengjibean", zhengjibean);
		req.getRequestDispatcher("/index/tuihuiliulandetail.jsp").forward(req, resp);
	}
	protected void tuihuineeddelete(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		req.setCharacterEncoding("utf-8");
		Xuqiuservice xuqiuservice=new Xuqiuservice();
		int id=StringUtil.StringToInt(req.getParameter("id"));
		int userid=StringUtil.StringToInt(req.getParameter("userid"));
		int status=3;
		xuqiuservice.needdeleta(id);
        List<Zhengjibean>zhengjibeanlist=xuqiuservice.tiaojianneedlsit(status,userid);
		req.setAttribute("zhengjibeanlist", zhengjibeanlist);
		req.getRequestDispatcher("/index/tuihuiliulan.jsp?status=1").forward(req, resp);
		
	}
	protected void search(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		req.setCharacterEncoding("utf-8");
		int id=StringUtil.StringToInt(req.getParameter("id"));
		Zhengjibean zhengjibean=new Xuqiuservice().searchneed(id);
		req.setAttribute("zhengjibean", zhengjibean);
		req.getRequestDispatcher("/index/needdetail.jsp").forward(req, resp);
	}
	protected void needxiugai(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		req.setCharacterEncoding("utf-8");
		int id=StringUtil.StringToInt(req.getParameter("id"));
		int userid=StringUtil.StringToInt(req.getParameter("userid"));
		Map<String,String[]> map=req.getParameterMap();
		Zhengjibean zhengjibean=new Zhengjibean();
		zhengjibean.setId(id);
		zhengjibean.setUserid(userid);
		Xuqiuservice xuqiuservice=new Xuqiuservice();
		try {
			//封装数据
			BeanUtils.populate(zhengjibean, map);
			xuqiuservice.xuqiuxiugai(zhengjibean);
			
			Zhengjibean zhengjibean2=xuqiuservice.searchneed(id);
			req.setAttribute("zhengjibean", zhengjibean2);
		
			req.getRequestDispatcher("/index/needhechadetail.jsp?status=1").forward(req, resp);
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		
	}
	protected void needhechadetail(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		req.setCharacterEncoding("utf-8");
		int id=StringUtil.StringToInt(req.getParameter("id"));
		Zhengjibean zhengjibean=new Xuqiuservice().searchneed(id);
		req.setAttribute("zhengjibean", zhengjibean);
		req.getRequestDispatcher("/index/needhechadetail.jsp").forward(req, resp);
	}
	protected void needdelete(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		req.setCharacterEncoding("utf-8");
		Xuqiuservice xuqiuservice=new Xuqiuservice();
		int id=StringUtil.StringToInt(req.getParameter("id"));
		int userid=StringUtil.StringToInt(req.getParameter("userid"));
		int status=0;
		xuqiuservice.needdeleta(id);
        List<Zhengjibean>zhengjibeanlist=xuqiuservice.tiaojianneedlsit(status,userid);
		req.setAttribute("zhengjibeanlist", zhengjibeanlist);
		req.getRequestDispatcher("/index/needhecha.jsp?status=2").forward(req, resp);
		
	}
	protected void needshangchuan(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		req.setCharacterEncoding("utf-8");
		Xuqiuservice xuqiuservice=new Xuqiuservice();
		int id=StringUtil.StringToInt(req.getParameter("id"));
		int userid=StringUtil.StringToInt(req.getParameter("userid"));
		int status=0;
		xuqiuservice.needshangchuang(id);
        List<Zhengjibean>zhengjibeanlist=xuqiuservice.tiaojianneedlsit(status,userid);
		req.setAttribute("zhengjibeanlist", zhengjibeanlist);
		req.getRequestDispatcher("/index/needhecha.jsp?status=1").forward(req, resp);
		
	}
	protected void tongji(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		req.setCharacterEncoding("utf-8");
		
		Tongjibean tongjibean=new Xuqiuservice().tongji();
		tongjibean.setWeishenhe1(tongjibean.jiussuan(tongjibean.getWeishenhe(), tongjibean.getZong()));
		tongjibean.setShenhe1(tongjibean.jiussuan(tongjibean.getShenhe(), tongjibean.getZong()));
		tongjibean.setTongguo1(tongjibean.jiussuan(tongjibean.getTongguo(), tongjibean.getZong()));
		tongjibean.setTuihui1(tongjibean.jiussuan(tongjibean.getTuihui(), tongjibean.getZong()));
		req.setAttribute("tongjibean", tongjibean);
		req.getRequestDispatcher("/jquery-css3-vote-bar-150326231418/NewFile1.jsp").forward(req, resp);
	}
	protected void tuihuiliulan(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		req.setCharacterEncoding("utf-8");
		int status=StringUtil.StringToInt(req.getParameter("status"));
		int userid=StringUtil.StringToInt(req.getParameter("userid"));
		List<Zhengjibean>zhengjibeanlist=new Xuqiuservice().tiaojianneedlsit(status,userid);
		req.setAttribute("zhengjibeanlist", zhengjibeanlist);
		req.getRequestDispatcher("/index/tuihuiliulan.jsp").forward(req, resp);
		
	}
	protected void shenhe(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		req.setCharacterEncoding("utf-8");
		int status=StringUtil.StringToInt(req.getParameter("status"));
		List<Zhengjibean>zhengjibeanlist=new Xuqiuservice().shenhe(status);
		req.setAttribute("zhengjibeanlist", zhengjibeanlist);
		req.getRequestDispatcher("/index/shenhe.jsp").forward(req, resp);
		
	}
	protected void needlist(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		req.setCharacterEncoding("utf-8");
		List<Zhengjibean>zhengjibeanlist=new Xuqiuservice().needlist();
		req.setAttribute("zhengjibeanlist", zhengjibeanlist);
		req.getRequestDispatcher("/index/listneed.jsp").forward(req, resp);
		
	}
	protected void needhecha(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException
	{
		req.setCharacterEncoding("utf-8");
		int status=StringUtil.StringToInt(req.getParameter("status"));
		int userid=StringUtil.StringToInt(req.getParameter("userid"));
		List<Zhengjibean>zhengjibeanlist=new Xuqiuservice().tiaojianneedlsit(status, userid);
		req.setAttribute("zhengjibeanlist", zhengjibeanlist);
		req.getRequestDispatcher("/index/needhecha.jsp").forward(req, resp);
		
	}
	protected void  addneed(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int userid=StringUtil.StringToInt(request.getParameter("id"));
		Map<String,String[]> map=request.getParameterMap();
		Zhengjibean zhengjibean=new Zhengjibean();
		zhengjibean.setUserid(userid);
		try {
			//封装数据
			BeanUtils.populate(zhengjibean, map);
			new Xuqiuservice().addneed(zhengjibean);
			List<Xuekebean> xuekebeanlist=new Xuqiuservice().zhaoxueke();
			List<Hangyebean> hangyelist=new Xuqiuservice().zhaohangye();
			request.setAttribute("xuekeBeans", xuekebeanlist);
			request.setAttribute("hangyeBeans", hangyelist);
			request.getRequestDispatcher("/index/addneed1.jsp?status=1").forward(request, response);
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		
	}
	protected void  zhao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		List<Xuekebean> xuekebeanlist=new Xuqiuservice().zhaoxueke();
		List<Hangyebean> hangyelist=new Xuqiuservice().zhaohangye();
		request.setAttribute("xuekeBeans", xuekebeanlist);
		request.setAttribute("hangyeBeans", hangyelist);
		request.getRequestDispatcher("/index/addneed1.jsp").forward(request, response);
		
	}

}
