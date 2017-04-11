package com.qixing.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="chat")
public class Chat {
	@Id
	private long oid;
	public long getOid() {
		return oid;
	}
	public void setOid(long oid) {
		this.oid = oid;
	}
	@Column
	private String username;
	@Column
	private String friendname;
	@Column
	private String contentto;
	@Column
	private String chattime;
	@Column
	private int state;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFriendname() {
		return friendname;
	}
	public void setFriendname(String friendname) {
		this.friendname = friendname;
	}
	public String getContentto() {
		return contentto;
	}
	public void setContentto(String contentto) {
		this.contentto = contentto;
	}
	public String getChattime() {
		return chattime;
	}
	public void setChattime(String chattime) {
		this.chattime = chattime;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public Chat(String username, String friendname, String contentto,
			String chattime, int state) {
		super();
		this.username = username;
		this.friendname = friendname;
		this.contentto = contentto;
		this.chattime = chattime;
		this.state = state;
	}
	public Chat() {
		super();
	}
	@Override
	public String toString() {
		return "Chat [username=" + username + ", friendname=" + friendname
				+ ", contentto=" + contentto + ", chattime=" + chattime
				+ ", state=" + state + "]";
	}
}
