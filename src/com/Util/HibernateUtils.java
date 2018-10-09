package com.Util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/*
 * 框架的工具类
 */

public class HibernateUtils {
	private static final Configuration CONFIG;
	private static final SessionFactory FACTORY;
	static{
		//加载配置文件
		CONFIG=new Configuration().configure();
		//构造工厂
		FACTORY=CONFIG.buildSessionFactory();
	}
	/*
	 * 从工厂来获取session对象
	 */
	public static Session getSession()
	{
		
		return FACTORY.openSession();
		
	}
	/*
	 * 从Threadload中获取到session的对象
	 */
	public static Session getCurrentSession()
	{
		
		return FACTORY.getCurrentSession();
		
	}
	public static void main(String[] args) {
		//調用getsesion
		getSession();
	}

}
