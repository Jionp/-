package com.qixing.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="littlephoto")
public class Littlephoto {
	@Id
	private long oid;
	@Column
	private int goodsid;
	@Column
	private String photoaddress;
	@Column
	private String photospeak;
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
	public String getPhotoaddress() {
		return photoaddress;
	}
	public void setPhotoaddress(String photoaddress) {
		this.photoaddress = photoaddress;
	}
	public String getPhotospeak() {
		return photospeak;
	}
	public void setPhotospeak(String photospeak) {
		this.photospeak = photospeak;
	}
	
	public Littlephoto(int goodsid, String photoaddress, String photospeak) {
		super();
		this.goodsid = goodsid;
		this.photoaddress = photoaddress;
		this.photospeak = photospeak;
	}
	public Littlephoto() {
		super();
	}
	@Override
	public String toString() {
		return "Littlephoto [oid=" + oid + ", goodsid=" + goodsid
				+ ", photoaddress=" + photoaddress + ", photospeak="
				+ photospeak + "]";
	}
	
}
