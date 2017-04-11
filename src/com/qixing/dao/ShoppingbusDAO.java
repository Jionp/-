package com.qixing.dao;

import java.util.List;

import com.qixing.domain.Shoppingbus;

public interface ShoppingbusDAO {
	List<Shoppingbus> getShopingbused(String username);
	List<Shoppingbus> getShopingbusing(String username);
	int deleShopingbus(long oid);
	int changeShoppingbus(long oid,String intime);
	Shoppingbus getShopping(long oid);
	void saveShoppingbus(Shoppingbus shoppingbus);
}
