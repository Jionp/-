package com.qixing.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.qixing.dao.GoodsDAO;
import com.qixing.domain.Goods;
import com.qixing.service.GoodsManager;

@Component("goodsManager")
public class GoodsManagerImpl implements GoodsManager{
	@Autowired
	private GoodsDAO goodsDAO;

	public GoodsDAO getGoodsDAO() {
		return goodsDAO;
	}

	public void setGoodsDAO(GoodsDAO goodsDAO) {
		this.goodsDAO = goodsDAO;
	}

	@Override
	public List<Goods> getGoods() {
		// TODO Auto-generated method stub
		return goodsDAO.getGoods();
	}

	@Override
	public Goods getGood(long oid) {
		// TODO Auto-generated method stub
		return goodsDAO.getGood(oid);
	}

	@Override
	public int changeGoods(long oid, String username, int goodsid,
			String intime, String gotime, String name, String cardid) {
		// TODO Auto-generated method stub
		return goodsDAO.changeGoods(oid, username, goodsid, intime, gotime, name, cardid);
	}

	@Override
	public void saveGoods(String username, int goodsid, String intime,
			String gotime, String name, String cardid) {
		// TODO Auto-generated method stub
		goodsDAO.saveGoods(username, goodsid, intime, gotime, name, cardid);
	}

	@Override
	public void deleGoods(long oid) {
		// TODO Auto-generated method stub
		goodsDAO.deleGoods(oid);
	}

	@Override
	public List<Goods> getUserGoods(String username) {
		// TODO Auto-generated method stub
		return goodsDAO.getUserGoods(username);
	}

	@Override
	public List<Goods> getUserGoodsing(String username) {
		// TODO Auto-generated method stub
		return goodsDAO.getUserGoodsing(username);
	}

	@Override
	public List<Goods> getUserGoodsed(String username) {
		// TODO Auto-generated method stub
		return goodsDAO.getUserGoodsed(username);
	}

	@Override
	public List<Goods> getGooduser(int goodsid) {
		// TODO Auto-generated method stub
		return goodsDAO.getGooduser(goodsid);
	}

}
