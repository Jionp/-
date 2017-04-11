package com.qixing.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.qixing.dao.AddressDAO;
import com.qixing.domain.Address;
import com.qixing.service.AddressManager;

@Component("addressManager")
public class AddressManagerImpl implements AddressManager{
	@Autowired
	private AddressDAO addressDAO;

	public AddressDAO getAddressDAO() {
		return addressDAO;
	}

	public void setAddressDAO(AddressDAO addressDAO) {
		this.addressDAO = addressDAO;
	}

	@Override
	public List<Address> getAddresses(String username) {
		// TODO Auto-generated method stub
		return addressDAO.getAddresses(username);
	}

	@Override
	public void save(Address address) {
		// TODO Auto-generated method stub
		addressDAO.save(address);
	}

	@Override
	public long getNum() {
		// TODO Auto-generated method stub
		return addressDAO.getNum();
	}

	@Override
	public void deleAddresser(long oid) {
		// TODO Auto-generated method stub
		addressDAO.deleAddresser(oid);
	}

	@Override
	public Address getAddress(long oid) {
		// TODO Auto-generated method stub
		return addressDAO.getAddress(oid);
	}

	@Override
	public int changeAddress(Address addres) {
		// TODO Auto-generated method stub
//		System.out.println(11111);
		return addressDAO.changeAddress(addres);
	}
	

}
