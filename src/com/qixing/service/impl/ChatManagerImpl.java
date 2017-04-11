package com.qixing.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.qixing.dao.ChatDAO;
import com.qixing.domain.Chat;
import com.qixing.service.ChatManager;
@Component("chatManager")
public class ChatManagerImpl implements ChatManager{
	@Autowired
	private ChatDAO chatDAO;
	public ChatDAO getChatDAO() {
		return chatDAO;
	}
	public void setChatDAO(ChatDAO chatDAO) {
		this.chatDAO = chatDAO;
	}

	@Override
	public void saveChat(Chat chat) {
		// TODO Auto-generated method stub
		chatDAO.saveChat(chat);
	}

	@Override
	public List<Chat> getChatone(String username, String friendname) {
		// TODO Auto-generated method stub
		return chatDAO.getChatone(username, friendname);
	}

	@Override
	public List<Chat> getChating(String username) {
		// TODO Auto-generated method stub
		return chatDAO.getChating(username);
	}

	@Override
	public List<Chat> getChated(String username) {
		// TODO Auto-generated method stub
		return chatDAO.getChated(username);
	}
	@Override
	public void changeChating(long oid) {
		// TODO Auto-generated method stub
		chatDAO.changeChating(oid);
	}
	@Override
	public void deleChating(long oid) {
		// TODO Auto-generated method stub
		chatDAO.deleChating(oid);
	}

}
