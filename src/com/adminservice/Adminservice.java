package com.adminservice;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Util.HibernateUtils;
import com.admindao.Admindao;
import com.bean.Userbean;

public class Adminservice {
	public Userbean login(String name,String password)
	{
		Admindao admindao=new Admindao();
		Userbean userbean=null;
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		try {
			userbean=admindao.login(name, password);
			tr.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
			
		}
		return userbean;
	}

	public void add(Userbean userbean) {
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		try {
			new Admindao().add(userbean);
			tr.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
			
		}
		
	}

}
