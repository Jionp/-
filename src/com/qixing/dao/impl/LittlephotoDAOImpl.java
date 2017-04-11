package com.qixing.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.qixing.dao.LittlephotoDAO;
import com.qixing.domain.Littlephoto;

@Component("littlephotoDAO")
@Repository
public class LittlephotoDAOImpl implements LittlephotoDAO{
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
	public List<Littlephoto> getPhotos() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		List<Littlephoto> littlephoto = currentSession().createQuery("from Littlephoto order by goodsid asc,oid asc").list();
		return littlephoto;
	}
	@Override
	public int changePhoto(Littlephoto photo) {
		// TODO Auto-generated method stub
		Query query = currentSession().createQuery("update Littlephoto set goodsid=?1,photoaddress=?2,photospeak=?3 where oid=?4");
		query.setInteger("1", photo.getGoodsid());
		query.setString("2", photo.getPhotoaddress());
		query.setString("3", photo.getPhotospeak());
		query.setLong("4", photo.getOid());
		int update = query.executeUpdate();
		return update;
	}
	@Override
	public void addPhoto(Littlephoto photo) {
		// TODO Auto-generated method stub
		Session session = currentSession();
		long count = (Long)session.createQuery("select count(*) from Littlephoto").uniqueResult();
		photo.setOid(count+1);
		session.save(photo);
	}
	@Override
	public void delePhoto(long oid) {
		// TODO Auto-generated method stub
		currentSession().createQuery("delete from Littlephoto where oid = ?").setParameter(0, oid).executeUpdate();
	}
	@Override
	public List<Littlephoto> getLittlephotos(int goodsid) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		List<Littlephoto> littlephotos = currentSession().createQuery("from Littlephoto where goodsid = ? order by goodsid asc,oid asc").setParameter(0, goodsid).list();
		return littlephotos;
	}
	
}
