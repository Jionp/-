package com.qixing.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity  //实体类注解
@Table(name="goods")
public class Goods {
	@Column
	private int goodsid;
	@Column
	private String username;
	@Column
	private String intime;
	@Column
	private String gotime;
	@Column
	private String name;
	@Column
	private String cardid;
	@Id
	private long oid;
	
	public long getOid() {
		return oid;
	}
	public void setOid(long oid) {
		this.oid = oid;
	}
	public int getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getIntime() {
		return intime;
	}
	public void setIntime(String intime) {
		this.intime = intime;
	}
	public String getGotime() {
		return gotime;
	}
	public void setGotime(String gotime) {
		this.gotime = gotime;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCardid() {
		return cardid;
	}
	public void setCardid(String cardid) {
		this.cardid = cardid;
	}
	public Goods(int goodsid, String username, String intime, String gotime,
			String name, String cardid) {
		super();
		this.goodsid = goodsid;
		this.username = username;
		this.intime = intime;
		this.gotime = gotime;
		this.name = name;
		this.cardid = cardid;
	}
	public Goods() {
		super();
	}
	@Override
	public String toString() {
		return "Goods [goodsid=" + goodsid + ", username=" + username
				+ ", intime=" + intime + ", gotime=" + gotime + ", name="
				+ name + ", cardid=" + cardid + ", oid=" + oid + "]";
	}
	
	
}
