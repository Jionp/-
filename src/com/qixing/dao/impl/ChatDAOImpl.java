package com.qixing.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.qixing.dao.ChatDAO;
import com.qixing.domain.Chat;


@Component("chatDAO")
@Repository
public class ChatDAOImpl implements ChatDAO{
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
	public void saveChat(Chat chat) {
		// TODO Auto-generated method stub
		long num;
		if(currentSession().createQuery("select max(oid) from Chat").uniqueResult()==null){
			num = 0;
		}else{
			num = (Long)currentSession().createQuery("select max(oid) from Chat").uniqueResult();
		}
		chat.setOid(num+1);
		currentSession().save(chat);
	}

	@Override
	public List<Chat> getChatone(String username, String friendname) {
		// TODO Auto-generated method stub
		Query query = currentSession().createQuery("from Chat where username = ?1 and friendname = ?2");
		query.setString("1", username);
		query.setString("2", friendname);
		@SuppressWarnings("unchecked")
		List<Chat> chated = query.list();
		return chated;
	}

	@Override
	public List<Chat> getChating(String username) {
		// TODO Auto-generated method stub
		Query query = currentSession().createQuery("from Chat where friendname = ? and state = 1");
		query.setParameter(0, username);
		@SuppressWarnings("unchecked")
		List<Chat> chating = query.list();
		for(Chat c:chating){
			System.out.println(c);
		}
		return chating;
	}

	@Override
	public List<Chat> getChated(String username) {
		// TODO Auto-generated method stub
		Query query = currentSession().createQuery("from Chat where friendname = ?1 and state = ?2");
		query.setString("1", username);
		query.setInteger("2", 2);
		@SuppressWarnings("unchecked")
		List<Chat> chating = query.list();
		return chating;
	}

	@Override
	public void changeChating(long oid) {
		// TODO Auto-generated method stub
		currentSession().createQuery("update Chat set state = 2 where oid = ?").setParameter(0, oid).executeUpdate();
	}

	@Override
	public void deleChating(long oid) {
		// TODO Auto-generated method stub
		currentSession().createQuery("delete from Chat where oid = ?").setParameter(0, oid).executeUpdate();
	}

}















