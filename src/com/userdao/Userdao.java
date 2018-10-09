package com.userdao;

import java.util.List;



import org.hibernate.Query;
import org.hibernate.Session;


import com.Util.HibernateUtils;
import com.bean.Juesebean;
import com.bean.Userbean;

public class Userdao {
	public List<Userbean> userlist()
	{
		Session session = HibernateUtils.getCurrentSession();
		Query query = session.createQuery("from Userbean");
		List<Userbean> uList=query.list();
		return uList;
	}
	public void userdelete(int id)
	{
		Session session = HibernateUtils.getCurrentSession();
		Userbean userbean = session.get(Userbean.class, id);
		session.delete(userbean);
	}
	public List<Juesebean> jueselist()
	{
		Session session = HibernateUtils.getCurrentSession();
		Query query = session.createQuery("from Juesebean");
		List<Juesebean> jList=query.list();
		
		System.out.println(jList);
		
		return jList;
	}
	public Userbean searchusershenfen(int id)
	{
		Session session = HibernateUtils.getCurrentSession();
		return session.get(Userbean.class, id);
	}

}
