package com.qixing.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="address")
public class Address {
	@Id
	private long oid;
	@Column
	private String username;
	@Column
	private String  address;
	@Column
	private String  name;
	@Column
	private String  phone;
	@Column
	private String  province;
	@Column
	private String  county;
	@Column
	private String  city;
	@Column
	private String  street;
	public Address() {
		super();
	}
	public Address(String username, String address, String name,
			String phone, String province, String county, String city,
			String street) {
		super();
		this.username = username;
		this.address = address;
		this.name = name;
		this.phone = phone;
		this.province = province;
		this.county = county;
		this.city = city;
		this.street = street;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCounty() {
		return county;
	}
	public void setCounty(String county) {
		this.county = county;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	@Override
	public String toString() {
		return "Address [oid=" + oid + ", username=" + username + ", address="
				+ address + ", name=" + name + ", phone=" + phone
				+ ", province=" + province + ", county=" + county + ", city="
				+ city + ", street=" + street + "]";
	}
}
