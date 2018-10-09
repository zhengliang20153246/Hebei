package com.Util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/*
 * ��ܵĹ�����
 */

public class HibernateUtils {
	private static final Configuration CONFIG;
	private static final SessionFactory FACTORY;
	static{
		//���������ļ�
		CONFIG=new Configuration().configure();
		//���칤��
		FACTORY=CONFIG.buildSessionFactory();
	}
	/*
	 * �ӹ�������ȡsession����
	 */
	public static Session getSession()
	{
		
		return FACTORY.openSession();
		
	}
	/*
	 * ��Threadload�л�ȡ��session�Ķ���
	 */
	public static Session getCurrentSession()
	{
		
		return FACTORY.getCurrentSession();
		
	}
	public static void main(String[] args) {
		//�{��getsesion
		getSession();
	}

}
