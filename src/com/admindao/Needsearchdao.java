package com.admindao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.Util.HibernateUtils;
import com.bean.Tiaojianbean;
import com.bean.Zhengjibean;

public class Needsearchdao {
	public List<Zhengjibean> needsearch(Tiaojianbean tiaojianbean)
	{
		Session session = HibernateUtils.getCurrentSession();
		Criteria criteria = session.createCriteria(Zhengjibean.class);
		if(tiaojianbean.getId()>0)
		{
			criteria.add(Restrictions.eq("id", tiaojianbean.getId()));
		}
		if(!tiaojianbean.getXuqiuname().equals(""))
		{
			if(tiaojianbean.getXuqiunamefangshi().equals("1"))
			{
				criteria.add(Restrictions.eq("jiname", tiaojianbean.getXuqiuname()));
			}
			else
			{
				String string="%"+tiaojianbean.getXuqiuname()+"%";
				criteria.add(Restrictions.like("jiname",string ));
			}
		}
		if(!tiaojianbean.getGuanjian().equals(""))
		{
			if(tiaojianbean.getGuanjianfangshi().equals("1"))
			{
				criteria.add(Restrictions.eq("guanjian1", tiaojianbean.getGuanjian()));
			}
			else
			{
				String string="%"+tiaojianbean.getGuanjian()+"%";
				criteria.add(Restrictions.like("guanjian1",string ));
			}
		}
		if(!tiaojianbean.getJigoushuxing().equals("-1"))
		{
			criteria.add(Restrictions.eq("jigoushuxing", tiaojianbean.getJigoushuxing()));
			
		}
		if(!tiaojianbean.getXuqiujiejuefanghsi().equals("-1"))
		{
			criteria.add(Restrictions.eq("xuqiujiejuefangshi", tiaojianbean.getXuqiujiejuefanghsi()));
			
		}
		if(!tiaojianbean.getKejihuodong().equals("-1"))
		{
			criteria.add(Restrictions.eq("kejihuodongleixing", tiaojianbean.getKejihuodong()));
			
		}
		if(!tiaojianbean.getTime().equals(""))
		{
			criteria.add(Restrictions.eq("xuqiuqianyear", tiaojianbean.getTime()));
			
		}
		if(!tiaojianbean.getTime1().equals(""))
		{
			criteria.add(Restrictions.eq("xuqiuhouyear", tiaojianbean.getTime1()));
			
		}
		List<Zhengjibean> list = criteria.list();
		
		return list;
		
	}

}
