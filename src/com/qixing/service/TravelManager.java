package com.qixing.service;

import java.util.List;

import com.qixing.domain.Travel;

public interface TravelManager {
	List<Travel> getTravels();
	Travel getTravel(int goodsid);
	int changeTravel(Travel travel);
	void addTravel(Travel travel);
	void deleTravel(int goodsid);
	List<Travel> getRecommendTravels();
	List<Travel> getSSTravels(String ss);
}
