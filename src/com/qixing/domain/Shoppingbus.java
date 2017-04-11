package com.qixing.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="shoppingbus")
public class Shoppingbus {
	@Id
	private long oid;
	@Column
	private String username;
	@Column
	private int goodsid;
	@Column
	private String intime;
	public Shoppingbus( String username, int goodsid, String intime) {
		super();
		this.username = username;
		this.goodsid = goodsid;
		this.intime = intime;
	}
	public Shoppingbus() {
		super();
	}
	public long getOid() {
		return oid;
	}
	public void setOid(long oid) {
		this.oid = oid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}
	public String getIntime() {
		return intime;
	}
	public void setIntime(String intime) {
		this.intime = intime;
	}
	@Override
	public String toString() {
		return "Shoppingbus [username=" + username + ", goodsid=" + goodsid
				+ ", intime=" + intime + "]";
	}
}
