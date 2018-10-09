package com.admindao;



import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.junit.Test;

import com.Util.HibernateUtils;
import com.bean.Hangyebean;
import com.bean.Tongjibean;
import com.bean.Tuihuibean;
import com.bean.Xuekebean;
import com.bean.Zhengjibean;

public class Xuqiudao {
	public List<Hangyebean> zhaohangye()
	{
		Session session = HibernateUtils.getCurrentSession();
		Query query = session.createQuery("from Hangyebean");
		List<Hangyebean> hList=query.list();
		return hList;
	}
	public List<Xuekebean> zhaoxueke()
	{
		Session session = HibernateUtils.getCurrentSession();
		Query query = session.createQuery("from Hangyebean");
		List<Xuekebean> xList=query.list();
		return xList;
	}
	public void addneed(Zhengjibean zhengjibean)
	{
		Session session = HibernateUtils.getCurrentSession();
		session.save(zhengjibean);
	}
	
	public List<Zhengjibean> tiaojianneedlsit(int status,int userid)
	{
		Session session = HibernateUtils.getCurrentSession();
		Query query = session.createQuery("from Zhengjibean where userid = ? and status = ?");
		query.setParameter(0, userid);
		query.setParameter(1, status);
		List <Zhengjibean> list = query.list();
	
		return list;
	}
	public List<Zhengjibean> needlist()
	{
		Session session = HibernateUtils.getCurrentSession();
		Query query = session.createQuery("from Zhengjibean");
		List <Zhengjibean> list = query.list();
		return list;
	}
	public List<Zhengjibean> shenhe(int status)
	{
		Session session = HibernateUtils.getCurrentSession();
		Query query = session.createQuery("from Zhengjibean where status = ?");
		query.setParameter(0, status);
		List <Zhengjibean> list = query.list();
		return list;
	}
	public Tongjibean tongji()
	{
		Session session = HibernateUtils.getCurrentSession();
		Tongjibean tongjibean=new Tongjibean();
		Query query = session.createQuery("select count(*) from Zhengjibean where status = ?");
		query.setParameter(0, 0);
		List <Number> list= query.list();
		tongjibean.setWeishenhe(list.get(0).intValue());
		
		query.setParameter(0, 1);
		list= query.list();
		tongjibean.setShenhe(list.get(0).intValue());
		
		query.setParameter(0, 2);
		list= query.list();
		tongjibean.setTongguo(list.get(0).intValue());
		
		query.setParameter(0, 3);
		list= query.list();
		tongjibean.setTuihui(list.get(0).intValue());
		tongjibean.setZong();
		
		
		return tongjibean;
		
	}
	public void needstatusupdate(int id,int status)
	{
		Session session = HibernateUtils.getCurrentSession();
		Zhengjibean zhengjibean = session.get(Zhengjibean.class, id);
		zhengjibean.setStatus(status);
		session.update(zhengjibean);
	}
	public void needdeleta(int id)
	{
		Session session = HibernateUtils.getCurrentSession();
		Zhengjibean zhengjibean = session.get(Zhengjibean.class, id);
		session.delete(zhengjibean);
	}
	public Zhengjibean searchneed(int id)
	{
		Session session = HibernateUtils.getCurrentSession();
		Zhengjibean zhengjibean = session.get(Zhengjibean.class, id);
		return zhengjibean;
	}
	public void xuqiuxiugai(Zhengjibean zhengjibean)
	{
		Session session = HibernateUtils.getCurrentSession();
		System.out.println(zhengjibean);
		session.saveOrUpdate(zhengjibean);
		
	}
	public Tuihuibean tuihuiliyou(int zhengjiid)
	{
		Session session = HibernateUtils.getCurrentSession();
		Query query = session.createQuery("from Tuihuibean where zhengjiid = ?");
		query.setParameter(0, zhengjiid);
		List <Tuihuibean>list = query.list();
		return list.get(0);
	}
	public void addtuihui(Tuihuibean tuihuibean)
	{
		Session session = HibernateUtils.getCurrentSession();
		
		session.save(tuihuibean);
	}
	
	

}
