package com.qixing.action.users;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.qixing.domain.Chat;
import com.qixing.domain.Goods;
import com.qixing.domain.Littlephoto;
import com.qixing.domain.Travel;
import com.qixing.domain.Users;
import com.qixing.service.ChatManager;
import com.qixing.service.GoodsManager;
import com.qixing.service.LittlephotoManager;
import com.qixing.service.TravelManager;
import com.qixing.service.UserManager;

@Scope("prototype")
public class Indexaction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Autowired
	private UserManager userManager;
	@Autowired
	private TravelManager travelManager;
	private List<Travel> travels;
	private String jsp;
	private String username;
	private Users user;
	private int goodsid;
	private Travel travel;
	private Littlephoto littlephoto;
	private List<Littlephoto> littlephotos;
	private String passworded;
	private String passwording;
	private List<Travel> recommendTravels;
	private List<Users> recommendUsers;
	private Chat chat;
	private List<Chat> chated;
	private List<Chat> chating;
	private String friendname;
	private String contentto;
	@Autowired
	private GoodsManager goodsManager;
	private List<Goods> goods;
	private List<Users> userbuys;
	private String ss;
	public String getSs() {
		return ss;
	}
	public void setSs(String ss) {
		this.ss = ss;
	}
	public List<Users> getUserbuys() {
		return userbuys;
	}
	public void setUserbuys(List<Users> userbuys) {
		this.userbuys = userbuys;
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
	@Autowired
	private ChatManager chatManager;
	private List<Chat> chats;
	public List<Chat> getChats() {
		return chats;
	}
	public void setChats(List<Chat> chats) {
		this.chats = chats;
	}
	public ChatManager getChatManager() {
		return chatManager;
	}
	public void setChatManager(ChatManager chatManager) {
		this.chatManager = chatManager;
	}
	public String getFriendname() {
		return friendname;
	}
	public void setFriendname(String friendname) {
		this.friendname = friendname;
	}
	public String getContentto() {
		return contentto;
	}
	public void setContentto(String contentto) {
		this.contentto = contentto;
	}
	public Chat getChat() {
		return chat;
	}
	public void setChat(Chat chat) {
		this.chat = chat;
	}
	public List<Chat> getChated() {
		return chated;
	}
	public void setChated(List<Chat> chated) {
		this.chated = chated;
	}
	public List<Chat> getChating() {
		return chating;
	}
	public void setChating(List<Chat> chating) {
		this.chating = chating;
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
	public String getPassworded() {
		return passworded;
	}
	public void setPassworded(String passworded) {
		this.passworded = passworded;
	}
	public String getPasswording() {
		return passwording;
	}
	public void setPasswording(String passwording) {
		this.passwording = passwording;
	}
	public List<Littlephoto> getLittlephotos() {
		return littlephotos;
	}
	public void setLittlephotos(List<Littlephoto> littlephotos) {
		this.littlephotos = littlephotos;
	}


	private LittlephotoManager littlephotoManager;
	
	public Littlephoto getLittlephoto() {
		return littlephoto;
	}
	public void setLittlephoto(Littlephoto littlephoto) {
		this.littlephoto = littlephoto;
	}
	public LittlephotoManager getLittlephotoManager() {
		return littlephotoManager;
	}
	public void setLittlephotoManager(LittlephotoManager littlephotoManager) {
		this.littlephotoManager = littlephotoManager;
	}
	public Travel getTravel() {
		return travel;
	}
	public void setTravel(Travel travel) {
		this.travel = travel;
	}
	public int getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public String getJsp() {
		return jsp;
	}
	public void setJsp(String jsp) {
		this.jsp = jsp;
	}

	public List<Travel> getTravels() {
		return travels;
	}
	public void setTravels(List<Travel> travels) {
		this.travels = travels;
	}
	public UserManager getUserManager() {
		return userManager;
	}
	public void setUserManager(UserManager userManager) {
		this.userManager = userManager;
	}
	public TravelManager getTravelManager() {
		return travelManager;
	}
	public void setTravelManager(TravelManager travelManager) {
		this.travelManager = travelManager;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	private String usernamed;
	private String password;
	private int age;
	private String sex;
	private String phone;
	private String speak;
	private String photo;
	private long oid;
	public long getOid() {
		return oid;
	}
	public void setOid(long oid) {
		this.oid = oid;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getSpeak() {
		return speak;
	}
	public void setSpeak(String speak) {
		this.speak = speak;
	}

	public String getUsernamed() {
		return usernamed;
	}
	public void setUsernamed(String usernamed) {
		this.usernamed = usernamed;
	}	
	// 封装上传文件域的字段
	private File upload;
	
	// 封装上传文件名的字段
	private String uploadFileName;
	
	// 在struts.xml文件中配置上传文件的保存位置的字段
	private String savePath;
	
	
	
	public File getUpload() {
		return upload;
	}


	public void setUpload(File upload) {
		this.upload = upload;
	}


	public String getUploadFileName() {
		return uploadFileName;
	}


	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}


	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	@SuppressWarnings("deprecation")
	public String getSavePath() {
		System.out.println("文件路径："+ServletActionContext.getRequest().getRealPath(savePath));
		return ServletActionContext.getRequest().getRealPath(savePath);
//		return "E://";
	}

	private int num;	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		if(ss!=null){
			user=(Users) ActionContext.getContext().getSession().get("user");
			ss= new String(ss.getBytes("iso-8859-1"),"utf-8");
			travels = travelManager.getSSTravels(ss);	
//			System.out.println(ss);
//			System.out.println("0000000000000");
//			for(int a = 0 ; a<travels.size();a++){
//				System.out.println(travels.get(a).toString());
//			}
			return "ss";
		}
		chating = chatManager.getChating(username);
		num = chating.size();
		recommendTravels = travelManager.getRecommendTravels();
		recommendUsers = userManager.getRecommendUsers();
		goods = goodsManager.getGooduser(goodsid);
		userbuys = new ArrayList<Users>();
		int a=0;
		if(goods!=null){
			for(Goods g:goods){
//				System.out.println(g);
				Users u = userManager.getAdmin(g.getUsername());
				for(Users us :userbuys){
//					System.out.println(us);
					if(us.getUsername().equals(u.getUsername())){
						a=-1;
						break;
					}else{
						a=0;
					}
				}
				if(a==-1){
				}else{
					userbuys.add(userManager.getAdmin(g.getUsername()));
				}
			}
		}
//		System.out.println(userbuys.size());
		if(jsp==null){
			return INPUT;
		}else if(jsp.equals("index")){
			travels = travelManager.getTravels();
			ActionContext.getContext().getSession().clear();
			return jsp;
		}else if(jsp.equals("grxx")||jsp.equals("gwc")||jsp.equals("lyb")||jsp.equals("dd")||jsp.equals("sc")){
			user = userManager.getAdmin(username);
			if(user==null){
				travels = travelManager.getTravels();
				return "index";
			}
//			System.out.println(user);
			chating = chatManager.getChating(username);
			num = chating.size();
			return SUCCESS;
		}else if(jsp.equals("travelone")){
			travel = travelManager.getTravel(goodsid);
			littlephotos = littlephotoManager.getLittlephotos(goodsid);
			user = userManager.getAdmin(username);
			return jsp;
		}//个人信息查看
		else if(jsp.equals("useronexx")){
			user = userManager.getAdmin(username);
			return jsp;
		}//个人信息修改
		else if(jsp.equals("useronexxxg")){
			user = userManager.getAdmin(username);
			return jsp;
		}else if(jsp.equals("userOneChange")){
			if(upload==null){
				user = new Users(username, password, sex, age, phone, 0, photo, speak);
				userManager.getChange(user);
				return jsp;
			}else{
//				System.out.println(uploadFileName.substring(uploadFileName.lastIndexOf('.')));
				String newName = UUID.randomUUID() + uploadFileName.substring(uploadFileName.lastIndexOf("."));
				//以服务器的文件保存地址和随机文件名建立上传文件输出流
//				System.out.println(newName);
				FileOutputStream fos = new FileOutputStream(getSavePath()+ "\\" + newName);
				FileInputStream fis = new FileInputStream(getUpload());
				byte[] buffer = new byte[1024];
				int len = 0;
				while ((len = fis.read(buffer)) > 0){
					fos.write(buffer , 0 , len);
				}
				setUploadFileName(newName);
				fis.close();
				fos.close();
//				System.out.println("111111:"+uploadFileName);
				user = new Users(username, password, sex, age, phone, 0, uploadFileName, speak);
				userManager.ChangeUser(user);
				return jsp;
			}
		}else if(jsp.equals("useronexgmm")){
//			System.out.println(username);
			user = userManager.getAdmin(username);
			return jsp;
		}else if(jsp.equals("changePassword")){
//			System.out.println("进来了");
			user = userManager.getAdmin(username);
			if(passworded==null||password==null||passwording==null){
//				System.out.println(111);
				this.addActionError("输入不能为空！");
				return "return";
			}else if(!password.equals(passwording)){
//				System.out.println(222);
				this.addActionError("两次输入密码不一样！");
				return "return";
			}else if(!user.getPassword().equals(passworded)){
//				System.out.println(333);
				this.addActionError("旧密码输入有误！");
				return "return";
			}else if(passworded.equals(password)){
				this.addActionError("新密码旧密码不能一样！");
				return "return";
			}else{
//				System.out.println(444);
				user.setPassword(password);
				userManager.ChangeUser(user);
				return jsp;
			}
		}else if(jsp.equals("dzh")||jsp.equals("huifu")||jsp.equals("qq")){
			//我要获取当前的日期
	        Date date = new Date();
	        //设置要获取到什么样的时间
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	        //获取String类型的时间
	        String createdate = sdf.format(date);
//	        System.out.println(friendname);
//	        System.out.println(username);
	        travel = travelManager.getTravel(goodsid);
	        chat = new Chat(username, friendname, contentto, createdate, 1);
	        chatManager.saveChat(chat);
	        chated = chatManager.getChated(username);
			chating = chatManager.getChating(username);
	        user = userManager.getAdmin(username);
	        return jsp;
		}else if(jsp.equals("chatF")){
			user = userManager.getAdmin(username);
			chated = chatManager.getChated(username);
			chating = chatManager.getChating(username);
//			for(Chat c:chating){
//				System.out.println(c);
//			}
			num = chating.size();
			return jsp;
		}else if(jsp.equals("chatChage")){
			chatManager.changeChating(oid);
			user = userManager.getAdmin(username);
			chated = chatManager.getChated(username);
			chating = chatManager.getChating(username);
			return jsp;
		}else if(jsp.equals("chatDele")){
//			System.out.println(oid);
			chatManager.deleChating(oid);
			user = userManager.getAdmin(username);
			chated = chatManager.getChated(username);
			chating = chatManager.getChating(username);
			return jsp;
		}
		return super.execute();
	}
}
