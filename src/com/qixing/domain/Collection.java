package com.qixing.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="collection")
public class Collection {
	@Id
	private int goodsid;
	@Column
	private String time;
	public int getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public Collection(int goodsid, String time) {
		super();
		this.goodsid = goodsid;
		this.time = time;
	}
	public Collection() {
		super();
	}
	@Override
	public String toString() {
		return "Collection [goodsid=" + goodsid + ", time=" + time + "]";
	}
	
}
