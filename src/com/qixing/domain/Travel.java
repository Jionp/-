package com.qixing.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="travel")
public class Travel {
	@Id
	private int goodsid;
	@Column
	private String name;
	@Column
	private String bigphoto;
	@Column
	private String address;
	@Column
	private double Price;
	@Column
	private int buynumber;
	public int getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBigphoto() {
		return bigphoto;
	}
	public void setBigphoto(String bigphoto) {
		this.bigphoto = bigphoto;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public double getPrice() {
		return Price;
	}
	public void setPrice(double price) {
		Price = price;
	}
	public int getBuynumber() {
		return buynumber;
	}
	public void setBuynumber(int buynumber) {
		this.buynumber = buynumber;
	}
	public Travel(int goodsid, String name, String bigphoto, String address,
			double price, int buynumber) {
		super();
		this.goodsid = goodsid;
		this.name = name;
		this.bigphoto = bigphoto;
		this.address = address;
		Price = price;
		this.buynumber = buynumber;
	}
	public Travel() {
		super();
	}
	@Override
	public String toString() {
		return "Travel [goodsid=" + goodsid + ", name=" + name + ", bigphoto="
				+ bigphoto + ", address=" + address + ", Price=" + Price
				+ ", buynumber=" + buynumber + "]";
	}
}
