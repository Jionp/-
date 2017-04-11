package com.qixing.action.travel;



import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.UUID;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;
import com.qixing.domain.Travel;
import com.qixing.service.TravelManager;


@Scope("prototype")
@Component
public class TravelChangeAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int goodsid;
	private String name;
	private String address;
	private double price;
	private int buynumber;
	private String jsp;
	
	private String photo;
	
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getJsp() {
		return jsp;
	}
	public void setJsp(String jsp) {
		this.jsp = jsp;
	}
	public int getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getBuynumber() {
		return buynumber;
	}
	public void setBuynumber(int buynumber) {
		this.buynumber = buynumber;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	@Autowired
	private TravelManager traveManager;
	public TravelManager getTraveManager() {
		return traveManager;
	}
	public void setTraveManager(TravelManager traveManager) {
		this.traveManager = traveManager;
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
//			return "E://";
		}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		if(jsp==null){
			return INPUT;
		}else if(jsp.equals("travelchanged")){
			Travel travel = new Travel();
			travel.setAddress(address);
			travel.setBuynumber(buynumber);
			travel.setGoodsid(goodsid);
			travel.setName(name);
			travel.setPrice(price);
//			System.out.println("upload:"+upload);
			if(upload==null){
				travel.setBigphoto(photo);
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
//				System.out.println(111111);
				travel.setBigphoto(uploadFileName);
			}
			traveManager.changeTravel(travel);	
			return jsp;
			
		}else if(jsp.equals("travelRegister")){
			if(upload==null){
				return INPUT;
			}else{
				Travel travel = new Travel();
				travel.setAddress(address);
				travel.setBuynumber(buynumber);
				travel.setGoodsid(goodsid);
				travel.setName(name);
				travel.setPrice(price);
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
				travel.setBigphoto(uploadFileName);
				traveManager.addTravel(travel);
				return jsp;
			}
		}
		
		
		return INPUT;
	}
}
