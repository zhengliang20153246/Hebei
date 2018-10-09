package com.adminservice;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Util.HibernateUtils;
import com.admindao.Needsearchdao;
import com.bean.Tiaojianbean;
import com.bean.Zhengjibean;

public class Needsearchservice {
	public List<Zhengjibean> needsearch(Tiaojianbean tiaojianbean)
	{
		Session session = HibernateUtils.getCurrentSession();
		Transaction tr = session.beginTransaction();
		List<Zhengjibean> zList=null;
		try {
			zList=new Needsearchdao().needsearch(tiaojianbean);
			tr.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		return  zList;
		
	}

}
