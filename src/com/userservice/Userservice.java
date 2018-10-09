package com.userservice;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Util.HibernateUtils;
import com.admindao.Xuqiudao;
import com.bean.Hangyebean;
import com.bean.Juesebean;
import com.bean.Userbean;
import com.userdao.Userdao;

public class Userservice {
	public List<Userbean> userlist()
	{
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		List<Userbean> uList=null;
		try {
			uList=new Userdao().userlist();
			tr.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		return uList;
	}
	public void userdelete(int id)
	{
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		try {
			new Userdao().userdelete(id);
			tr.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		
	}
	public List<Juesebean> jueselist()
	{
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		List<Juesebean> jList=null;
		try {
			jList=new Userdao().jueselist();
			tr.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		return jList;
	}
	public Userbean searchusershenfen(int id)
	{
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		Userbean userbean=null;
		try {
			userbean=new Userdao().searchusershenfen(id);
			tr.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		return userbean;
	}

}
