package com.qixing.action.littlephoto;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.List;
import java.util.UUID;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import com.opensymphony.xwork2.ActionSupport;
import com.qixing.domain.Littlephoto;
import com.qixing.domain.Travel;
import com.qixing.service.LittlephotoManager;
import com.qixing.service.TravelManager;

@Scope("prototype")
public class LittlephotoAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<Littlephoto> littlephotos;
	private String jsp;
	private long oid;
	private Littlephoto littlephoto;
	private int goodsid;
	private String photoaddress;
	private String photospeak;
	
	public int getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}
	public String getPhotoaddress() {
		return photoaddress;
	}
	public void setPhotoaddress(String photoaddress) {
		this.photoaddress = photoaddress;
	}
	public String getPhotospeak() {
		return photospeak;
	}
	public void setPhotospeak(String photospeak) {
		this.photospeak = photospeak;
	}
	public Littlephoto getLittlephoto() {
		return littlephoto;
	}
	public void setLittlephoto(Littlephoto littlephoto) {
		this.littlephoto = littlephoto;
	}
	public long getOid() {
		return oid;
	}
	public void setOid(long oid) {
		this.oid = oid;
	}
	public String getJsp() {
		return jsp;
	}
	public void setJsp(String jsp) {
		this.jsp = jsp;
	}
	public List<Littlephoto> getLittlephotos() {
		return littlephotos;
	}
	public void setLittlephotos(List<Littlephoto> littlephotos) {
		this.littlephotos = littlephotos;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	} 
	@Autowired
	private LittlephotoManager littlephotoManager;
	public LittlephotoManager getLittlephotoManager() {
		return littlephotoManager;
	}
	public void setLittlephotoManager(LittlephotoManager littlephotoManager) {
		this.littlephotoManager = littlephotoManager;
	}
	
	@Autowired
	private TravelManager travelManager;
	
	public TravelManager getTravelManager() {
		return travelManager;
	}
	public void setTravelManager(TravelManager travelManager) {
		this.travelManager = travelManager;
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
//				return "E://";
			}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		if(jsp==null){
			return INPUT;
		}else if(jsp.equals("littlephotos")){
			littlephotos=littlephotoManager.getPhotos();
			return jsp;
		}else if(jsp.equals("littlephotochange")){
			littlephotos=littlephotoManager.getPhotos();
			return jsp;
		}else if(jsp.equals("littlephotoChangeing")){
			littlephoto = new Littlephoto(goodsid, photoaddress, photospeak);
			littlephoto.setOid(oid);
			return jsp;
		}else if(jsp.equals("photochanged")||jsp.equals("photoadd")){
			Littlephoto photo = new Littlephoto();
			Travel travel = travelManager.getTravel(goodsid);
			if(travel==null){
				return INPUT;
			}
			photo.setGoodsid(goodsid);	
			photo.setPhotospeak(photospeak);
//			System.out.println("upload:"+upload);
			if(jsp.equals("photochanged")&&upload==null){
				photo.setPhotoaddress(photoaddress);
			}else if(jsp.equals("photoadd")&&upload==null){
				return INPUT;
			}
			else{
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
				photo.setPhotoaddress(uploadFileName);
			}
			if(jsp.equals("photochanged")){
				littlephotoManager.changePhoto(photo);	
				return jsp;
			}else{
				littlephotoManager.addPhoto(photo);
				return jsp;
			}
		}else if(jsp.equals("littlephotodele")){
			littlephotos=littlephotoManager.getPhotos();
			return jsp;
		}else if(jsp.equals("littlephotoDele")){
			littlephotoManager.delePhoto(oid);
			return jsp;
		}
		return super.execute();
	}
}
