package com.qixing.dao;

import java.util.List;

import com.qixing.domain.*;

public interface TravelDAO {
	List<Travel> getTravels();
	Travel getTravel(int goodsid);
	int changeTravel(Travel travel);
	void addTravel(Travel travel);
	void deleTravel(int goodsid);
	List<Travel> getRecommendTravels();
	List<Travel> getSSTravels(String ss);
}
