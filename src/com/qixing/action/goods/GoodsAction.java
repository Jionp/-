package com.qixing.action.goods;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;
import com.qixing.domain.Goods;
import com.qixing.domain.Travel;
import com.qixing.domain.Users;
import com.qixing.service.GoodsManager;
import com.qixing.service.TravelManager;
import com.qixing.service.UserManager;

@Scope("prototype")
@Component
public class GoodsAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String jsp;
	private List<Goods> goods;
	private Goods good;
	private long oid;
	private String username;
	private int goodsid;
	private String intime;
	private String gotime;
	private String name;
	private String cardid;
	private Users user;
	private List<Travel> travels;
	private Travel travel;
	private List<Travel> travelsing;
	private List<Travel> travelsed;
	private List<Goods> goodsing;
	private List<Goods> goodsed;
	private List<Travel> recommendTravels;
	private List<Users> recommendUsers;
	
	public List<Travel> getRecommendTravels() {
		return recommendTravels;
	}
	public void setRecommendTravels(List<Travel> recommendTravels) {
		this.recommendTravels = recommendTravels;
	}
	public List<Users> getRecommendUsers() {
		return recommendUsers;
	}
	public void setRecommendUsers(List<Users> recommendUsers) {
		this.recommendUsers = recommendUsers;
	}
	public List<Goods> getGoodsing() {
		return goodsing;
	}

	public void setGoodsing(List<Goods> goodsing) {
		this.goodsing = goodsing;
	}

	public List<Goods> getGoodsed() {
		return goodsed;
	}

	public void setGoodsed(List<Goods> goodsed) {
		this.goodsed = goodsed;
	}

	public List<Travel> getTravelsing() {
		return travelsing;
	}

	public void setTravelsing(List<Travel> travelsing) {
		this.travelsing = travelsing;
	}

	public List<Travel> getTravelsed() {
		return travelsed;
	}

	public void setTravelsed(List<Travel> travelsed) {
		this.travelsed = travelsed;
	}

	public Travel getTravel() {
		return travel;
	}

	public void setTravel(Travel travel) {
		this.travel = travel;
	}

	public List<Travel> getTravels() {
		return travels;
	}

	public void setTravels(List<Travel> travels) {
		this.travels = travels;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getGoodsid() {
		return goodsid;
	}

	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}

	public String getIntime() {
		return intime;
	}

	public void setIntime(String intime) {
		this.intime = intime;
	}

	public String getGotime() {
		return gotime;
	}

	public void setGotime(String gotime) {
		this.gotime = gotime;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCardid() {
		return cardid;
	}

	public void setCardid(String cardid) {
		this.cardid = cardid;
	}

	public Goods getGood() {
		return good;
	}

	public void setGood(Goods good) {
		this.good = good;
	}

	public long getOid() {
		return oid;
	}

	public void setOid(long oid) {
		this.oid = oid;
	}

	@Autowired
	private GoodsManager goodsManager;

	public String getJsp() {
		return jsp;
	}

	public void setJsp(String jsp) {
		this.jsp = jsp;
	}

	public List<Goods> getGoods() {
		return goods;
	}

	public void setGoods(List<Goods> goods) {
		this.goods = goods;
	}

	public GoodsManager getGoodsManager() {
		return goodsManager;
	}

	public void setGoodsManager(GoodsManager goodsManager) {
		this.goodsManager = goodsManager;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Autowired
	private UserManager userManager;
	
	
	public UserManager getUserManager() {
		return userManager;
	}

	public void setUserManager(UserManager userManager) {
		this.userManager = userManager;
	}
	@Autowired
	private TravelManager travelManager;
	

	public TravelManager getTravelManager() {
		return travelManager;
	}

	public void setTravelManager(TravelManager travelManager) {
		this.travelManager = travelManager;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		recommendTravels = travelManager.getRecommendTravels();
		recommendUsers = userManager.getRecommendUsers();
		if(jsp==null){
			return INPUT;
		}else if(jsp.equals("goodsShow")){
			goods = goodsManager.getGoods();
			return jsp;
		}else if(jsp.equals("goodsChange")){
			goods = goodsManager.getGoods();
			return jsp;
		}else if(jsp.equals("goodschangeto")){
			good = goodsManager.getGood(oid);
			return jsp;
		}else if(jsp.equals("goodschanged")){
			Travel travel = travelManager.getTravel(goodsid);
			if(travel==null){
				return INPUT;
			}else{
				int changeGoods = goodsManager.changeGoods(oid, username, goodsid, intime, gotime, name, cardid);
				if(changeGoods>0){
					return jsp;
				}
			}
			return INPUT;
		}else if(jsp.equals("goodssave")){
			boolean exists = userManager.exists(username);
			Travel travel = travelManager.getTravel(goodsid);
			if(exists||travel==null){
				return INPUT;
			}else{
				goodsManager.saveGoods(username, goodsid, intime, gotime, name, cardid);
				return jsp;
			}
		}else if(jsp.equals("goodsSave")){
			return jsp;
		}else if(jsp.equals("goodsDele")){
			goods = goodsManager.getGoods();
			return jsp;
		}else if(jsp.equals("goodsdele")){
			goodsManager.deleGoods(oid);
			return jsp;
		}else if(jsp.equals("usergoods")){
			goodsing = goodsManager.getUserGoodsing(username);
			goodsed = goodsManager.getUserGoodsed(username);
			user = userManager.getAdmin(username);
			if(goodsing!=null){
//				System.out.println(goodsing);
				travelsing = new ArrayList<Travel>();
				for(Goods g : goodsing){
					travelsing.add(travelManager.getTravel(g.getGoodsid()));
				}	
			}
//			System.out.println("----"+travelsing.size());
			if(goodsed!=null){
				travelsed = new ArrayList<Travel>();
				for(Goods g : goodsed){
					travelsed.add(travelManager.getTravel(g.getGoodsid()));
				}	
			}
			return jsp;
		}else if(jsp.equals("userGoodsDele")){
			goodsManager.deleGoods(oid);
			goodsing = goodsManager.getUserGoodsing(username);
			goodsed = goodsManager.getUserGoodsed(username);
			user = userManager.getAdmin(username);
			if(goodsing!=null){
//				System.out.println(goodsing);
				travelsing = new ArrayList<Travel>();
				for(Goods g : goodsing){
					travelsing.add(travelManager.getTravel(g.getGoodsid()));
				}	
			}
//			System.out.println("----"+travelsing.size());
			if(goodsed!=null){
				travelsed = new ArrayList<Travel>();
				for(Goods g : goodsed){
					travelsed.add(travelManager.getTravel(g.getGoodsid()));
				}	
			}
			return jsp;
		}
		return INPUT;
	}
}

























