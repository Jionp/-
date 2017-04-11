package com.qixing.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.qixing.dao.TravelDAO;
import com.qixing.domain.Travel;
import com.qixing.service.TravelManager;

@Component("travelManager")
public class TravelManagerImpl implements TravelManager{
	
	@Autowired
	private TravelDAO travelDAO;
	
	
	public TravelDAO getTravelDAO() {
		return travelDAO;
	}


	public void setTravelDAO(TravelDAO travelDAO) {
		this.travelDAO = travelDAO;
	}


	@Override
	public List<Travel> getTravels() {
		// TODO Auto-generated method stub
		return travelDAO.getTravels();
	}


	@Override
	public Travel getTravel(int goodsid) {
		// TODO Auto-generated method stub
		return travelDAO.getTravel(goodsid);
	}


	@Override
	public int changeTravel(Travel travel) {
		// TODO Auto-generated method stub
		return travelDAO.changeTravel(travel);
	}


	@Override
	public void addTravel(Travel travel) {
		// TODO Auto-generated method stub
		travelDAO.addTravel(travel);
	}


	@Override
	public void deleTravel(int goodsid) {
		// TODO Auto-generated method stub
		travelDAO.deleTravel(goodsid);
	}


	@Override
	public List<Travel> getRecommendTravels() {
		// TODO Auto-generated method stub
		return travelDAO.getRecommendTravels();
	}


	@Override
	public List<Travel> getSSTravels(String ss) {
		// TODO Auto-generated method stub
		return travelDAO.getSSTravels(ss);
	}
	
}
