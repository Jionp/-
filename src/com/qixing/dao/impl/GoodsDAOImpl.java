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

import com.qixing.dao.GoodsDAO;
import com.qixing.domain.Goods;

@Component("goodsDAO")
@Repository
public class GoodsDAOImpl implements GoodsDAO {

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
	public List<Goods> getGoods() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		List<Goods> goods = currentSession().createQuery("from Goods order by oid asc").list();
		return goods;
	}
	@Override
	public Goods getGood(long oid) {
		// TODO Auto-generated method stub
		Goods good  = (Goods)currentSession().createQuery("from Goods where oid = ?").setParameter(0, oid).uniqueResult();
		return good;
	}
	@Override
	public int changeGoods(long oid, String username, int goodsid,
			String intime, String gotime, String name, String cardid) {
		// TODO Auto-generated method stub
		Query query = currentSession().createQuery("update Goods set username = ?1,goodsid = ?2,intime = ?3,gotime = ?4,name = ?5" +
				",cardid = ?6 where oid = ?7");
		query.setString("1", username);
		query.setInteger("2", goodsid);
		query.setString("3", intime);
		query.setString("4", gotime);
		query.setString("5", name);
		query.setString("6", cardid);
		query.setLong("7", oid);
		int update = query.executeUpdate();
		return update;
	}
	@Override
	public void saveGoods(String username, int goodsid, String intime,
			String gotime, String name, String cardid) {
		// TODO Auto-generated method stub
		Session session = currentSession();
		long count = (Long)session.createQuery("select max(oid) from Goods ").uniqueResult();
		Goods goods = new Goods(goodsid, username, intime, gotime, name, cardid);
		goods.setOid(count+1);
		session.save(goods);
	}
	@Override
	public void deleGoods(long oid) {
		// TODO Auto-generated method stub
		currentSession().createQuery("delete from Goods where oid = ?").setParameter(0, oid).executeUpdate();
		
	}
	@Override
	public List<Goods> getUserGoods(String username) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		List<Goods> goods = currentSession().createQuery("from Goods where username = ? order by oid asc").setParameter(0, username).list();
		return goods;
	}
	@Override
	public List<Goods> getUserGoodsing(String username) {
		// TODO Auto-generated method stub
		//我要获取当前的日期
        Date date = new Date();
        //设置要获取到什么样的时间
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        //获取String类型的时间
        String createdate = sdf.format(date);
		Query createQuery = currentSession().createQuery("from Goods where username = ?1 and gotime >?2 order by oid asc");
		createQuery.setString("1", username);
		createQuery.setString("2", createdate);
		@SuppressWarnings("unchecked")
		List<Goods> goodsing = createQuery.list();
		return goodsing;
	}
	@Override
	public List<Goods> getUserGoodsed(String username) {
		// TODO Auto-generated method stub
		//我要获取当前的日期
        Date date = new Date();
        //设置要获取到什么样的时间
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        //获取String类型的时间
        String createdate = sdf.format(date);
		Query createQuery = currentSession().createQuery("from Goods where username = ?1 and gotime <?2 order by oid asc");
		createQuery.setString("1", username);
		createQuery.setString("2", createdate);
		@SuppressWarnings("unchecked")
		List<Goods> goodsed = createQuery.list();
		return goodsed;
	}
	@Override
	public List<Goods> getGooduser(int goodsid) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		List<Goods> goods = currentSession().createQuery("from Goods where goodsid = ? order by oid asc").setParameter(0, goodsid).list();
		return goods;
	}

}
















