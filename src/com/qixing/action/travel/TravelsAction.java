package com.qixing.action.travel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;
import com.qixing.domain.Travel;
import com.qixing.service.TravelManager;

@Scope("prototype")
@Component
public class TravelsAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String jsp;
	
	private List<Travel> travels;
	
	private Travel travel;
	
	private int goodsid;

	public int getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}
	public Travel getTravel() {
		return travel;
	}
	public void setTravel(Travel travel) {
		this.travel = travel;
	}
	@Autowired
	private TravelManager traveManager;
	
	public String getJsp() {
		return jsp;
	}
	public void setJsp(String jsp) {
		this.jsp = jsp;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public TravelManager getTraveManager() {
		return traveManager;
	}
	public void setTraveManager(TravelManager traveManager) {
		this.traveManager = traveManager;
	}
	
	public List<Travel> getTravels() {
		return travels;
	}
	public void setTravels(List<Travel> travels) {
		this.travels = travels;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		if(jsp==null){
			return INPUT;
		}else if(jsp.equals("travels")){
			travels = traveManager.getTravels();
			return jsp;
		}else if(jsp.equals("travelschange")){
			travels = traveManager.getTravels();
			return jsp;
		}else if(jsp.equals("travelchange")){
			travel = traveManager.getTravel(goodsid);
			return jsp;
		}else if(jsp.equals("travelchanged")){
			return jsp;
		}else if(jsp.equals("travelsdele")){
			travels = traveManager.getTravels();
			return jsp;
		}else if(jsp.equals("traveldele")){
			traveManager.deleTravel(goodsid);
			return jsp;
		}
		return super.execute();
	}
}
