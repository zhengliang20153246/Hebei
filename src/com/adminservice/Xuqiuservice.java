package com.adminservice;



import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.junit.Test;

import com.Util.HibernateUtils;
import com.admindao.Xuqiudao;
import com.bean.Hangyebean;
import com.bean.Tongjibean;
import com.bean.Tuihuibean;
import com.bean.Xuekebean;
import com.bean.Zhengjibean;
import com.sun.org.apache.regexp.internal.recompile;

public class Xuqiuservice {
	public List<Hangyebean> zhaohangye()
	{
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		List<Hangyebean> hList=null;
		try {
			hList=new Xuqiudao().zhaohangye();
			tr.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		return hList;
	}
	public List<Xuekebean> zhaoxueke()
	{
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		List<Xuekebean> xList=null;
		try {
			xList=new Xuqiudao().zhaoxueke();
			tr.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		return xList;
	}
	public void addneed(Zhengjibean zhengjibean)
	{
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		try
		{
			new Xuqiudao().addneed(zhengjibean);
			tr.commit();
		}
		catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		
	}
	public List<Zhengjibean>  tiaojianneedlsit(int status,int userid)
	{
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		List<Zhengjibean> list=null;
		try
		{
			list=new Xuqiudao().tiaojianneedlsit(status, userid);
			tr.commit();
			
		}
		catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		return list;
	}
	public List<Zhengjibean>  needlist()
	{
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		List<Zhengjibean> list=null;
		try
		{
			list=new Xuqiudao().needlist();
			tr.commit();
			
		}
		catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		return list;
	}
	public List<Zhengjibean>  shenhe(int status)
	{
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		List<Zhengjibean> list=null;
		try
		{
			list=new Xuqiudao().shenhe(status);
			tr.commit();
			
		}
		catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		return list;
	}
	public Tongjibean tongji()
	{
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		Tongjibean tongjibean=null;
		try
		{
			tongjibean=new Xuqiudao().tongji();
			tr.commit();
			
		}
		catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		return tongjibean;
	}

	public void needshangchuang(int id)
	{
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		try
		{
			new Xuqiudao().needstatusupdate(id, 1);
			tr.commit();
			
		}
		catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		 
	}
	public void needdeleta(int id)
	{
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		try
		{
			new Xuqiudao().needdeleta(id);;
			tr.commit();
			
		}
		catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		 
	}
	public Zhengjibean searchneed(int id)
	{
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		Zhengjibean zhengjibean=null;
		try
		{
			zhengjibean=new Xuqiudao().searchneed(id);;
			tr.commit();
			
		}
		catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		return zhengjibean;
		 
	}
	public void xuqiuxiugai(Zhengjibean zhengjibean)
	{
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		
		try
		{
			new Xuqiudao().xuqiuxiugai(zhengjibean);
			tr.commit();
			
		}
		catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		
	}
	public Tuihuibean tuihuiliyou(int zhengjiid)
	{
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		Tuihuibean tuihuibean=null;
		
		try
		{
			tuihuibean=new Xuqiudao().tuihuiliyou(zhengjiid);
			tr.commit();
			
		}
		catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		return tuihuibean;
		
	}
	public void zhengjishenehe(int status,int id)
	{
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		try
		{
			new Xuqiudao().needstatusupdate(id, status);
			tr.commit();
			
		}
		catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		
	}
	public void addtuihui(Tuihuibean tuihuibean)
	{
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		try
		{
			new Xuqiudao().addtuihui(tuihuibean);
			tr.commit();
			
		}
		catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		
	}
	
	
	
	

}
