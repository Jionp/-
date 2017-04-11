package com.qixing.service;

import java.util.List;

import com.qixing.domain.Goods;

public interface GoodsManager {
	List<Goods> getGoods();
	Goods getGood(long oid);
	int changeGoods(long oid,String username,int goodsid,String intime,String gotime,String name,String cardid);
	void saveGoods(String username,int goodsid,String intime,String gotime,String name,String cardid);
	void deleGoods(long oid);
	List<Goods> getUserGoods(String username);
	List<Goods> getUserGoodsing(String username);
	List<Goods> getUserGoodsed(String username);
	List<Goods> getGooduser(int goodsid);
}
