package com.qixing.dao.impl;



import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.qixing.dao.UserDAO;
import com.qixing.domain.Users;

@Transactional
@Component("userDAO")
@Repository
public class UserDAOImpl implements UserDAO{
	
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
	public boolean exists(String username) {
		// TODO Auto-generated method stub
		long count = (Long)currentSession().createQuery("select count(*) from Users u where u.username = ?").setParameter(0, username).uniqueResult();
		if(count>0){
			return false;
		}else{
			return true;
		}
	}

	@Override
	public void save(Users users) {
		// TODO Auto-generated method stub
		Session session = currentSession();
		users.setFlag(0);
		session.save(users);
	}
	@Override
	public int login(String username, String password) {
		// TODO Auto-generated method stub
		Query query = currentSession().createQuery("from Users where username = ?1 and password = ?2");
		query.setString("1", username);
		query.setString("2", password);
		Users user = new Users();
		user = (Users) query.uniqueResult();
//		System.out.println(user);
		if(user==null){
			return -1;
		}else if(user.getPower()==0){
			return 0;
		}else{
			return 1;
		}
	}
	@Override
	public Users getAdmin(String username) {
		// TODO Auto-generated method stub
		Users users = (Users)currentSession().createQuery("from Users u where u.username = ?").setParameter(0, username).uniqueResult();
		return users;
	}
	@Override
	public List<Users> getAdmins() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		
		List<Users> Admins = currentSession().createQuery("from Users u where u.power = ?").setParameter(0, 1).list();
		return Admins;
	}
	@Override
	public int getChange(Users user) {
		// TODO Auto-generated method stub
		Query query = currentSession().createQuery("update Users set speak=?1,password=?2,sex=?3,age=?4,phone=?5 where username=?6");
		query.setString("1", user.getSpeak());
		query.setString("2", user.getPassword());
		query.setString("3", user.getSex());
		query.setInteger("4", user.getAge());
		query.setString("5", user.getPhone());
		query.setString("6", user.getUsername());
		int update = query.executeUpdate();
		return update;
	}
	@Override
	public int deleUser(String username) {
		// TODO Auto-generated method stub
		int dele = currentSession().createQuery("delete from Users where username = ?").setParameter(0, username).executeUpdate();
		return dele;
	}
	@Override
	public List<Users> getUsers() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		List<Users> users = currentSession().createQuery("from Users u where u.power = ?").setParameter(0, 0).list();
		return users;
	}
	@Override
	public void ChangeUser(Users user) {
		// TODO Auto-generated method stub
		Query query = currentSession().createQuery("update Users set speak=?1,password=?2,sex=?3,age=?4,phone=?5,photo=?7 where username=?6");
		query.setString("1", user.getSpeak());
		query.setString("2", user.getPassword());
		query.setString("3", user.getSex());
		query.setInteger("4", user.getAge());
		query.setString("5", user.getPhone());
		query.setString("6", user.getUsername());
		query.setString("7", user.getPhoto());
		query.executeUpdate();
	}
	@SuppressWarnings("unused")
	@Override
	public List<Users> getRecommendUsers() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		List<Users> users = currentSession().createQuery("from Users u where u.power = ? order by flag desc").setParameter(0, 0).list();
		List<Users> users1 = new ArrayList<Users>();
		if(users.size()>5){
			for(int i=0;i<5;i++){
				users1.add(users.get(i));
				return users1;
			}
		}
		return users;
	}

}
















