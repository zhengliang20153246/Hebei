package com.userdao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import com.Util.HibernateUtils;
import com.bean.Juesebean;
import com.bean.Userbean;

public class Quanxiandao {
	public Juesebean searchquanxian(String name)
	{
		Session session = HibernateUtils.getCurrentSession();
		Query query = session.createQuery("from Juesebean where name = ?");
		query.setParameter(0, name);
		List<Juesebean> list = query.list();
		return list.get(0);
	}

	public void fenpeiquan(int userid, String qxjuese) {
		Session session = HibernateUtils.getCurrentSession();
		Userbean userbean = session.get(Userbean.class, userid);
		userbean.setShenfen(qxjuese);
		session.update(userbean);
		
	}

	public void addjuese(String newjuese) {
		Session session = HibernateUtils.getCurrentSession();
		Juesebean juesebean=new Juesebean(newjuese,0,0,0,0,0,0,0,0,0,0,0);
		session.save(juesebean);
		
	}

	public Juesebean searchquanxianid(int id) {
		Session session = HibernateUtils.getCurrentSession();
		
		return session.get(Juesebean.class, id);
	}

	public void feipeiquanxian(Juesebean juesebean) {
		Session session = HibernateUtils.getCurrentSession();
		Query query = session.createQuery("from Juesebean where name = ?");
		query.setParameter(0, juesebean.getName());
		List <Juesebean>list = query.list();
		Juesebean juesebean2 = list.get(0);
		juesebean2.setTianbao(juesebean.getTianbao());
		juesebean2.setChakangerenshenhexuqiu(juesebean.getChakangerenshenhexuqiu());
		juesebean2.setChakanquanbushenhexuqiu(juesebean.getChakanquanbushenhexuqiu());
		juesebean2.setXuqiuxiugai(juesebean.getXuqiuxiugai());
		juesebean2.setChakanquanbu(juesebean.getChakanquanbu());
		juesebean2.setChakangeren(juesebean.getChakangeren());
		juesebean2.setChakantuihui(juesebean.getChakantuihui());
		juesebean2.setShenhexuqiu(juesebean.getShenhexuqiu());
		juesebean2.setXinxixiugai(juesebean.getXinxixiugai());
		juesebean2.setMimaxiugai(juesebean.getMimaxiugai());
		session.saveOrUpdate(juesebean2);
	}

	public void deletejuese(String juese) {
		Session session = HibernateUtils.getCurrentSession();
		Query query = session.createQuery("from Juesebean where name = ?");
		query.setParameter(0, juese);
		List <Juesebean>list = query.list();
		session.delete(list.get(0));
	}

	

}
