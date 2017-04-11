package com.qixing.action.address;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;
import com.qixing.domain.Address;
import com.qixing.domain.Travel;
import com.qixing.domain.Users;
import com.qixing.service.AddressManager;
import com.qixing.service.TravelManager;
import com.qixing.service.UserManager;

@Scope("prototype")
@Component
public class AdderssAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Autowired
	private AddressManager addressManager;
	private String username;
	private String address;
	private String name;
	private String phone;
	private String province;
	private String county;
	private String city;
	private String street;
	private Address addres;
	private String jsp;
	private List<Address> addresses;
	@Autowired
	private UserManager userManager;
	private Users user;
	private long oid;
	private List<Travel> recommendTravels;
	private List<Users> recommendUsers;
	@Autowired
	private TravelManager travelManager;
	public TravelManager getTravelManager() {
		return travelManager;
	}
	public void setTravelManager(TravelManager travelManager) {
		this.travelManager = travelManager;
	}
	public List<Travel> getRecommendTravels() {
		return recommendTravels;
	}
	public void setRecommendTravels(List<Travel> recommendTravels) {
		this.recommendTravels = recommendTravels;
	}
	public List<Users> getRecommendUsers() {
		return recommendUsers;
	}
	public void setRecommendUsers(List<Users> recommendUsers) {
		this.recommendUsers = recommendUsers;
	}
	public long getOid() {
		return oid;
	}
	public void setOid(long oid) {
		this.oid = oid;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public UserManager getUserManager() {
		return userManager;
	}
	public void setUserManager(UserManager userManager) {
		this.userManager = userManager;
	}
	public List<Address> getAddresses() {
		return addresses;
	}
	public void setAddresses(List<Address> addresses) {
		this.addresses = addresses;
	}
	public String getJsp() {
		return jsp;
	}
	public void setJsp(String jsp) {
		this.jsp = jsp;
	}
	public AddressManager getAddressManager() {
		return addressManager;
	}
	public void setAddressManager(AddressManager addressManager) {
		this.addressManager = addressManager;
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
	public Address getAddres() {
		return addres;
	}
	public void setAddres(Address addres) {
		this.addres = addres;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		recommendTravels = travelManager.getRecommendTravels();
		recommendUsers = userManager.getRecommendUsers();
		if(jsp==null){
			return INPUT;
		}else if(jsp.equals("useroneshdzgl")){
//			System.out.println(username);
			addresses = addressManager.getAddresses(username);
			user = userManager.getAdmin(username);
			return jsp;
		}else if(jsp.equals("addAddress")){
			addres = new Address(username, address, name, phone, province, county, city, street);
			addressManager.save(addres);
			user = userManager.getAdmin(username);
			addresses = addressManager.getAddresses(username);
			return jsp;
		}else if(jsp.equals("addressChange")){
			user = userManager.getAdmin(username);
			addres = addressManager.getAddress(oid);
			return jsp;
		}else if(jsp.equals("addressDele")){
			addressManager.deleAddresser(oid);
			user = userManager.getAdmin(username);
			addresses = addressManager.getAddresses(username);
			return jsp;
		}else if(jsp.equals("changeAddress")){
			addres = new Address(username, address, name, phone, province, county, city, street);
			addres.setOid(oid);
			System.out.println(oid);
			int a = addressManager.changeAddress(addres);
			if(a>0){
				user = userManager.getAdmin(username);
				addresses = addressManager.getAddresses(username);
				return jsp;
			}else{
				return INPUT;
			}
		}
		return super.execute();
	}
}
