package com.qixing.dao;

import java.util.List;

import com.qixing.domain.Chat;

public interface ChatDAO {
	void saveChat(Chat chat);
	List<Chat> getChatone(String username,String friendname);
	List<Chat> getChating(String username);
	List<Chat> getChated(String username);
	void changeChating(long oid);
	void deleChating(long oid);
}
