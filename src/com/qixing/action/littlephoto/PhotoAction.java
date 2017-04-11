package com.qixing.action.littlephoto;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import com.opensymphony.xwork2.ActionSupport;
import com.qixing.service.LittlephotoManager;

@Scope("prototype")
public class PhotoAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String photoaddress;
	private String jsp;
	@Autowired
	private LittlephotoManager littlephotoManager;
	public String getPhotoaddress() {
		return photoaddress;
	}
	public void setPhotoaddress(String photoaddress) {
		this.photoaddress = photoaddress;
	}
	public String getJsp() {
		return jsp;
	}
	public void setJsp(String jsp) {
		this.jsp = jsp;
	}
	public LittlephotoManager getLittlephotoManager() {
		return littlephotoManager;
	}
	public void setLittlephotoManager(LittlephotoManager littlephotoManager) {
		this.littlephotoManager = littlephotoManager;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
//		System.out.println(photoaddress+"000"+jsp);
		if(jsp==null){
			return INPUT;
		}else if(jsp.equals("photo")){
			
			return jsp;
		}
		return INPUT;
	}
}
