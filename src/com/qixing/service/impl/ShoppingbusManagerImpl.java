package com.qixing.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.qixing.dao.ShoppingbusDAO;
import com.qixing.domain.Shoppingbus;
import com.qixing.service.ShoppingbusManager;

@Component("shoppingbusManager")
public class ShoppingbusManagerImpl implements ShoppingbusManager{
	@Autowired
	private ShoppingbusDAO shoppingbusDAO;
	
	public ShoppingbusDAO getShoppingbusDAO() {
		return shoppingbusDAO;
	}

	public void setShoppingbusDAO(ShoppingbusDAO shoppingbusDAO) {
		this.shoppingbusDAO = shoppingbusDAO;
	}

	@Override
	public List<Shoppingbus> getShopingbused(String username) {
		// TODO Auto-generated method stub
		return shoppingbusDAO.getShopingbused(username);
	}

	@Override
	public List<Shoppingbus> getShopingbusing(String username) {
		// TODO Auto-generated method stub
		return shoppingbusDAO.getShopingbusing(username);
	}

	@Override
	public int deleShopingbus(long oid) {
		// TODO Auto-generated method stub
		return shoppingbusDAO.deleShopingbus(oid);
	}

	@Override
	public int changeShoppingbus(long oid, String intime) {
		// TODO Auto-generated method stub
		return shoppingbusDAO.changeShoppingbus(oid, intime);
	}

	@Override
	public Shoppingbus getShopping(long oid) {
		// TODO Auto-generated method stub
		return shoppingbusDAO.getShopping(oid);
	}

	@Override
	public void saveShoppingbus(Shoppingbus shoppingbus) {
		// TODO Auto-generated method stub
		shoppingbusDAO.saveShoppingbus(shoppingbus);
	}

}
