package com.qixing.service;

import java.util.List;

import com.qixing.domain.Address;



public interface AddressManager {
	List<Address> getAddresses(String username);
	void save(Address address);
	long getNum();
	void deleAddresser(long oid);
	Address getAddress(long oid);
	int changeAddress(Address addres);
}
