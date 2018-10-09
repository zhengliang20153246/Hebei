package com.userservice;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Util.HibernateUtils;
import com.bean.Juesebean;
import com.userdao.Quanxiandao;

public class Quanxianservice {
	public Juesebean searchquanxian(String name)
	{
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		Juesebean juesebean=null;
		try {
			juesebean=new Quanxiandao().searchquanxian(name);
			tr.commit();	
		} catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		return juesebean;
	}

	public void fenpeiquan(int userid, String qxjuese) {
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		
		try {
			new Quanxiandao().fenpeiquan(userid,qxjuese);
			tr.commit();	
		} catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		
	}

	public void addjuese(String newjuese) {
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		
		try {
			new Quanxiandao().addjuese(newjuese);
			tr.commit();	
		} catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		
	}

	public Juesebean searchquanxianid(int id) {
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		Juesebean juesebean=null;
		try {
			juesebean=new Quanxiandao().searchquanxianid(id);
			tr.commit();	
		} catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		return juesebean;
	}

	public void feipeiquanxian(Juesebean juesebean) {
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		try {
			new Quanxiandao().feipeiquanxian(juesebean);
			tr.commit();	
		} catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		
	}

	public void deletejuese(String juese) {
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		try {
			new Quanxiandao().deletejuese(juese);
			tr.commit();	
		} catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		
	}

}
