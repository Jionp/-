package com.qixing.dao.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.qixing.dao.ShoppingbusDAO;
import com.qixing.domain.Shoppingbus;

@Component("shoppingbusDAO")
@Repository
public class ShoppingbusDAOImpl implements ShoppingbusDAO{
	@Autowired
	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	private Session currentSession(){
        return sessionFactory.getCurrentSession();
    }

	@Override
	public List<Shoppingbus> getShopingbused(String username) {
		// TODO Auto-generated method stub
		Query query = currentSession().createQuery("from Shoppingbus where username = ?1 and intime <= ?2");
		//我要获取当前的日期
        Date date = new Date();
        //设置要获取到什么样的时间
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        //获取String类型的时间
        String createdate = sdf.format(date);
        
		query.setString("1", username);
		query.setString("2", createdate);
		@SuppressWarnings("unchecked")
		List<Shoppingbus> shoppingbused = query.list();
		return shoppingbused;
	}

	@Override
	public List<Shoppingbus> getShopingbusing(String username) {
		// TODO Auto-generated method stub
		Query query = currentSession().createQuery("from Shoppingbus where username = ?1 and intime > ?2");
		//我要获取当前的日期
        Date date = new Date();
        //设置要获取到什么样的时间
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        //获取String类型的时间
        String createdate = sdf.format(date);
        
		query.setString("1", username);
		query.setString("2", createdate);
		@SuppressWarnings("unchecked")
		List<Shoppingbus> shoppingbusing = query.list();
		return shoppingbusing;
	}
	@Override
	public int deleShopingbus(long oid) {
		// TODO Auto-generated method stub
		int update = currentSession().createQuery("delete from Shoppingbus where oid = ?").setParameter(0, oid).executeUpdate();
		return update;
	}
	@Override
	public int changeShoppingbus(long oid,String intime) {
		// TODO Auto-generated method stub
		Query query = currentSession().createQuery("update Shoppingbus set intime=?1 where oid=?2");
		query.setString("1", intime);
		query.setLong("2", oid);
		int update = query.executeUpdate();
		return update;
	}
	@Override
	public Shoppingbus getShopping(long oid) {
		// TODO Auto-generated method stub
		Shoppingbus shoppingbus = (Shoppingbus)currentSession().createQuery("from Shoppingbus where oid = ?").setParameter(0, oid).uniqueResult();
		return shoppingbus;
	}
	@Override
	public void saveShoppingbus(Shoppingbus shoppingbus) {
		// TODO Auto-generated method stub
		long a = (Long)currentSession().createQuery("select max(oid) from Shoppingbus").uniqueResult();
//		System.out.println("a:"+a);
		shoppingbus.setOid(a+1);
//		//我要获取当前的日期
//        Date date = new Date();
//        //设置要获取到什么样的时间
//        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//        //获取String类型的时间
//        String createdate = sdf.format(date);
//        shoppingbus.setIntime(createdate);
//        System.out.println(shoppingbus);
		currentSession().save(shoppingbus);
	}

}
