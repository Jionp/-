package com.qixing.action.shoppingbus;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import com.opensymphony.xwork2.ActionSupport;
import com.qixing.domain.Goods;
import com.qixing.domain.Littlephoto;
import com.qixing.domain.Shoppingbus;
import com.qixing.domain.Travel;
import com.qixing.domain.Users;
import com.qixing.service.GoodsManager;
import com.qixing.service.LittlephotoManager;
import com.qixing.service.ShoppingbusManager;
import com.qixing.service.TravelManager;
import com.qixing.service.UserManager;

@Scope("prototype")
public class ShoppingbusAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private List<Shoppingbus> shoppingbused;
	private List<Shoppingbus> shoppingbusing;
	private Users user;
	@Autowired
	private UserManager userManager;
	@Autowired
	private ShoppingbusManager shoppingbusManager;
	@Autowired
	private TravelManager travelManager;
	private String jsp;
	private List<Travel> traveled;
	private List<Travel> traveling;
	private long oid;
	private int goodsid;
	private Shoppingbus shoppingbus;
	private String intime;
	private List<Travel> recommendTravels;
	private List<Users> recommendUsers;
	private Travel travel;
	private Goods goods;
	private GoodsManager goodsManager;
	private String gotime;
	private String name;
	private String cardid;
	private LittlephotoManager littlephotoManager;
	private List<Littlephoto> littlephotos;
	public LittlephotoManager getLittlephotoManager() {
		return littlephotoManager;
	}
	public void setLittlephotoManager(LittlephotoManager littlephotoManager) {
		this.littlephotoManager = littlephotoManager;
	}
	public List<Littlephoto> getLittlephotos() {
		return littlephotos;
	}
	public void setLittlephotos(List<Littlephoto> littlephotos) {
		this.littlephotos = littlephotos;
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
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public GoodsManager getGoodsManager() {
		return goodsManager;
	}
	public void setGoodsManager(GoodsManager goodsManager) {
		this.goodsManager = goodsManager;
	}
	public Travel getTravel() {
		return travel;
	}
	public void setTravel(Travel travel) {
		this.travel = travel;
	}
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
	public String getIntime() {
		return intime;
	}
	public void setIntime(String intime) {
		this.intime = intime;
	}
	public Shoppingbus getShoppingbus() {
		return shoppingbus;
	}
	public void setShoppingbus(Shoppingbus shoppingbus) {
		this.shoppingbus = shoppingbus;
	}
	public long getOid() {
		return oid;
	}
	public void setOid(long oid) {
		this.oid = oid;
	}
	public int getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}
	public List<Travel> getTraveled() {
		return traveled;
	}
	public void setTraveled(List<Travel> traveled) {
		this.traveled = traveled;
	}
	public List<Travel> getTraveling() {
		return traveling;
	}
	public void setTraveling(List<Travel> traveling) {
		this.traveling = traveling;
	}
	public TravelManager getTravelManager() {
		return travelManager;
	}
	public void setTravelManager(TravelManager travelManager) {
		this.travelManager = travelManager;
	}
	public String getJsp() {
		return jsp;
	}
	public void setJsp(String jsp) {
		this.jsp = jsp;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public List<Shoppingbus> getShoppingbused() {
		return shoppingbused;
	}
	public void setShoppingbused(List<Shoppingbus> shoppingbused) {
		this.shoppingbused = shoppingbused;
	}
	public List<Shoppingbus> getShoppingbusing() {
		return shoppingbusing;
	}
	public void setShoppingbusing(List<Shoppingbus> shoppingbusing) {
		this.shoppingbusing = shoppingbusing;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public UserManager getUserManager() {
		return userManager;
	}
	public void setUserManager(UserManager userManager) {
		this.userManager = userManager;
	}
	public ShoppingbusManager getShoppingbusManager() {
		return shoppingbusManager;
	}
	public void setShoppingbusManager(ShoppingbusManager shoppingbusManager) {
		this.shoppingbusManager = shoppingbusManager;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		recommendTravels = travelManager.getRecommendTravels();
		recommendUsers = userManager.getRecommendUsers();
		littlephotos = littlephotoManager.getLittlephotos(goodsid);
		if(jsp==null){
			return INPUT;
		}else if(jsp.equals("usergwc")){
			user = userManager.getAdmin(username);
			shoppingbused = shoppingbusManager.getShopingbused(username);
			shoppingbusing = shoppingbusManager.getShopingbusing(username);
			traveling = new ArrayList<Travel>();
			traveled = new ArrayList<Travel>();
			if(shoppingbused!=null){
				for(Shoppingbus s : shoppingbused){
					Travel travel = travelManager.getTravel(s.getGoodsid());
					traveled.add(travel);
				}
			}
			if(shoppingbusing!=null){
				for(Shoppingbus s : shoppingbusing){
					System.out.println(s.toString());
					Travel travel = travelManager.getTravel(s.getGoodsid());
					traveling.add(travel);
				}
			}
			return jsp;
		}else if(jsp.equals("shoppingbusChange")){
			user = userManager.getAdmin(username);
			shoppingbused = shoppingbusManager.getShopingbused(username);
			shoppingbusing = shoppingbusManager.getShopingbusing(username);
			shoppingbus = shoppingbusManager.getShopping(oid);
			traveled = new ArrayList<Travel>();
			traveling = new ArrayList<Travel>();
			if(shoppingbused!=null){
				for(Shoppingbus s : shoppingbused){
					travel = travelManager.getTravel(s.getGoodsid());
					traveled.add(travel);
				}
			}
			if(shoppingbusing!=null){

				for(Shoppingbus s : shoppingbusing){
					travel = travelManager.getTravel(s.getGoodsid());
					traveling.add(travel);
				}
			}
			return jsp;
		}else if(jsp.equals("shoppingchanged")){
			shoppingbusManager.changeShoppingbus(oid, intime);
			user = userManager.getAdmin(username);
			shoppingbused = shoppingbusManager.getShopingbused(username);
			shoppingbusing = shoppingbusManager.getShopingbusing(username);
			traveling = new ArrayList<Travel>();
			traveled = new ArrayList<Travel>();
			if(shoppingbused!=null){
				for(Shoppingbus s : shoppingbused){
					travel = travelManager.getTravel(s.getGoodsid());
					traveled.add(travel);
				}
			}
			if(shoppingbusing!=null){

				for(Shoppingbus s : shoppingbusing){
					Travel travel = travelManager.getTravel(s.getGoodsid());
					traveling.add(travel);
				}
			}
			return jsp;
		}else if(jsp.equals("shoppingbusDele")){
			int i = shoppingbusManager.deleShopingbus(oid);
			user = userManager.getAdmin(username);
			shoppingbused = shoppingbusManager.getShopingbused(username);
			shoppingbusing = shoppingbusManager.getShopingbusing(username);
			traveling = new ArrayList<Travel>();
			traveled = new ArrayList<Travel>();
			if(shoppingbused!=null){
				for(Shoppingbus s : shoppingbused){
					travel = travelManager.getTravel(s.getGoodsid());
					traveled.add(travel);
				}
			}
			if(shoppingbusing!=null){

				for(Shoppingbus s : shoppingbusing){
					travel = travelManager.getTravel(s.getGoodsid());
					traveling.add(travel);
				}
			}
			if(i>0){
				return jsp;
			}else{
				return INPUT;
			}
		}else if(jsp.equals("addbus")){
			travel = travelManager.getTravel(goodsid);
			shoppingbus =new Shoppingbus();
			shoppingbus.setGoodsid(goodsid);
			shoppingbus.setUsername(username);
			shoppingbus.setIntime(intime);
			shoppingbusManager.saveShoppingbus(shoppingbus);
			user = userManager.getAdmin(username);
			return jsp;
		}else if(jsp.equals("addbuy")){
			System.out.println(gotime);
			user = userManager.getAdmin(username);
			travel = travelManager.getTravel(goodsid);
	        Date date = new Date();
	        //设置要获取到什么样的时间
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	        //获取String类型的时间
	        String createdate = sdf.format(date);
			goodsManager.saveGoods(username, goodsid, createdate, gotime, name, cardid);
			return jsp;
		}
		
		return super.execute();
	}
	
	
	
	
	
	
}
