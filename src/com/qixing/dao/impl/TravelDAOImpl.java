package com.qixing.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.qixing.dao.TravelDAO;
import com.qixing.domain.Travel;


@Component("travelDAO")
@Repository
public class TravelDAOImpl implements TravelDAO{
	
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
	public List<Travel> getTravels() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		List<Travel> travel = currentSession().createQuery("from Travel order by goodsid asc ").list();
		return travel;
	}
	@Override
	public Travel getTravel(int goodsid) {
		// TODO Auto-generated method stub
		Travel travel = (Travel)currentSession().createQuery("from Travel where goodsid = ?").setParameter(0, goodsid).uniqueResult();
		return travel;
	}
	@Override
	public int changeTravel(Travel travel) {
		// TODO Auto-generated method stub
		Query query = currentSession().createQuery("update Travel set name=?1,bigphoto=?2,address=?3,price=?4,buynumber=?5 where goodsid=?6");
		query.setString("1", travel.getName());
		query.setString("2", travel.getBigphoto());
		query.setString("3", travel.getAddress());
		query.setDouble("4", travel.getPrice());
		query.setInteger("5", travel.getBuynumber());
		query.setInteger("6", travel.getGoodsid());
		int update = query.executeUpdate();
		return update;
	}
	@Override
	public void addTravel(Travel travel) {
		// TODO Auto-generated method stub
		currentSession().save(travel);
	}
	@Override
	public void deleTravel(int goodsid) {
		// TODO Auto-generated method stub
		currentSession().createQuery("delete from Travel where goodsid = ?").setParameter(0, goodsid).executeUpdate();
	}
	@Override
	public List<Travel> getRecommendTravels() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		List<Travel> travel = currentSession().createQuery("from Travel order by goodsid desc ").list();
		List<Travel> travel1 =new ArrayList<Travel>();
		if(travel.size()>5){
			for (int i = 0; i < 5; i++) {
				travel1.add(travel.get(i));
			}
			return travel1;
		}
		return travel;
	}
	@Override
	public List<Travel> getSSTravels(String ss) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
//		currentSession().createSQLQuery("select * from Travel where like '%"+ss+"%'").list();
		List<Travel> travel = currentSession().createQuery("from Travel  where name like '%'||?||'%' ").setParameter(0, ss).list();
//		System.out.println(travel.size());
		return travel;
	}
	
}
