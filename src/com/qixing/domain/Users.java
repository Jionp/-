package com.qixing.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="users")
public class Users {
	@Id
	private String username;
	@Column
	private String password;
	@Column
	private String sex;
	@Column
	private int age;
	@Column
	private String phone;
	@Column
	private int power;
	@Column
	private String photo;
	@Column
	private String speak;
	@Column
	private long flag;
	public long getFlag() {
		return flag;
	}
	public void setFlag(long flag) {
		this.flag = flag;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getPower() {
		return power;
	}
	public void setPower(int power) {
		this.power = power;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getSpeak() {
		return speak;
	}
	public void setSpeak(String speak) {
		this.speak = speak;
	}
	public Users(String username, String password, String sex, int age,
			String phone, int power, String photo, String speak) {
		super();
		this.username = username;
		this.password = password;
		this.sex = sex;
		this.age = age;
		this.phone = phone;
		this.power = power;
		this.photo = photo;
		this.speak = speak;
	}
	public Users() {
		super();
	}
	@Override
	public String toString() {
		return "Users [username=" + username + ", password=" + password
				+ ", sex=" + sex + ", age=" + age + ", phone=" + phone
				+ ", power=" + power + ", photo=" + photo + ", speak=" + speak
				+ "]";
	}
}
