package com.qixing.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.qixing.dao.AddressDAO;
import com.qixing.domain.Address;

@Transactional
@Component("addressDAO")
@Repository
public class AddressDAOImpl implements AddressDAO{
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
	public List<Address> getAddresses(String username) {
		// TODO Auto-generated method stub
//		System.out.println(username);
		@SuppressWarnings("unchecked")
		List<Address> addresses = currentSession().createQuery("from Address where username = ?  order by oid desc").setParameter(0, username).list();
//		System.out.println(1111);
		return addresses;
	}
	@Override
	public void save(Address address) {
		// TODO Auto-generated method stub
		long a = (Long)currentSession().createQuery("select max(oid) from Address").uniqueResult();
		address.setOid(a+1);
		currentSession().save(address);
	}
	@Override
	public long getNum() {
		// TODO Auto-generated method stub
		long a = (Long)currentSession().createQuery("select count(*) from Address").uniqueResult();
		return a;
	}
	@Override
	public void deleAddresser(long oid) {
		// TODO Auto-generated method stub
		currentSession().createQuery("delete from Address where oid = ?").setParameter(0, oid).executeUpdate();
	}
	@Override
	public Address getAddress(long oid) {
		// TODO Auto-generated method stub
		Address address = (Address)currentSession().createQuery("from Address where oid = ? ").setParameter(0, oid).uniqueResult();
		return address;
	}
	@Override
	public int changeAddress(Address addres) {
		// TODO Auto-generated method stub
		Query query = currentSession().createQuery("update Address set username = ?1,name = ?2,phone = ?3,province = ?4,city = ?5" +
				",county = ?6,street=?7 where oid = ?8");
		query.setString("1", addres.getUsername());
		query.setString("2", addres.getName());
		query.setString("3", addres.getPhone());
		System.out.println(addres.getPhone());
		query.setString("4", addres.getProvince());
		query.setString("5", addres.getCity());
		query.setString("6", addres.getCounty());
		query.setString("7", addres.getStreet());
		query.setLong("8", addres.getOid());
		int update = query.executeUpdate();
		return update;
	}

}
