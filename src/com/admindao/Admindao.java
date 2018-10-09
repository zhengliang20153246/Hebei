package com.admindao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;


import com.Util.HibernateUtils;
import com.bean.Userbean;

public class Admindao {
	public Userbean login(String name,String password)
	{
		Session session = HibernateUtils.getCurrentSession();
		Query query = session.createQuery("from Userbean where username = ?");
		query.setString(0, name);
		List <Userbean> list = query.list();
		Userbean userbean=list.get(0);
		if(userbean.getPassword().equals(password))
		{
			return userbean;
		}
		else
		{
			return null;
		}
		
		
	}

	public void add(Userbean userbean) {
		Session session = HibernateUtils.getCurrentSession();
		userbean.setShenfen("π‹¿Ì‘±");
		session.save(userbean);
	}

}
