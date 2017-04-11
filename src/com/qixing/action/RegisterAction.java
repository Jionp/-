package com.qixing.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Calendar;
import java.util.UUID;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import com.opensymphony.xwork2.ActionSupport;
import com.qixing.domain.Users;
import com.qixing.service.UserManager;

@Scope("prototype") //@Scope ָ���Ƿ���  ��Ҫ��������singleto  ����prototype  Ĭ���ǵ���ģʽ
public class RegisterAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private String phone;
	private String date;
	private String sex;
	private String photo;
	private String speak;
	
	private String Jsp;
	
	
	public String getJsp() {
		return Jsp;
	}


	public void setJsp(String jsp) {
		Jsp = jsp;
	}


	@Autowired
	private UserManager userManager;
	
	public UserManager getUserManager() {
		return userManager;
	}


	public void setUserManager(UserManager userManager) {
		this.userManager = userManager;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	public String getSex() {
		return sex;
	}


	public void setSex(String sex) {
		this.sex = sex;
	}


	public String getPhoto() {
		return photo;
	}


	public void setPhoto(String photo) {
		this.photo = photo;
	}


	public String getSpeak() {
		return speak;
	}


	public void setSpeak(String speak) {
		this.speak = speak;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	// ��װ�ϴ��ļ�����ֶ�
	private File upload;
		
	// ��װ�ϴ��ļ������ֶ�
	private String uploadFileName;
	
	// ��struts.xml�ļ��������ϴ��ļ��ı���λ�õ��ֶ�
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
		System.out.println("�ļ�·����"+ServletActionContext.getRequest().getRealPath(savePath));
		return ServletActionContext.getRequest().getRealPath(savePath);
//		return "E://";
	}
	
	@Override
	public String execute() throws Exception {
//		System.out.println(date);
		// TODO Auto-generated method stub
//		System.out.println(111);
		if(!userManager.exists(username)){
			this.addActionError("���û����Ѿ����ڣ�");
			
			return INPUT;
		}else{
//			System.out.println("�ļ�·��"+uploadFileName.substring(uploadFileName.lastIndexOf('.')));
			if(upload==null){
				
			}else{
//				System.out.println(uploadFileName.substring(uploadFileName.lastIndexOf('.')));
				String newName = UUID.randomUUID() + uploadFileName.substring(uploadFileName.lastIndexOf("."));
				//�Է��������ļ������ַ������ļ��������ϴ��ļ������
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
				System.out.println(111111);
			}
			
			if(Jsp==null){
				if(date.equals("")){
					System.out.println(11111);	
					Users users = new Users(username, password, sex, 0, phone, 0, uploadFileName, speak);
					userManager.register(users);
					return SUCCESS;
				}
				else{
					System.out.println(22222);
					String[] split = date.split("/");
					int year =Integer.parseInt(split[split.length-1]);
					Calendar c = Calendar.getInstance();
					int yearing = c.get(Calendar.YEAR); 
					int age = yearing - year;
					Users users = new Users(username, password, sex, age, phone, 0, uploadFileName, speak);
					userManager.register(users);
					return SUCCESS;
				}
			} else if(Jsp.equals("adminRegister")){
				System.out.println(3333);
				if(date.equals("")){
					Users users = new Users(username, password, sex, 0, phone, 1, uploadFileName, speak);
					userManager.register(users);
					return SUCCESS;
				}
				else{
					String[] split = date.split("/");
					int year =Integer.parseInt(split[split.length-1]);
					Calendar c = Calendar.getInstance();
					int yearing = c.get(Calendar.YEAR); 
					int age = yearing - year;
					Users users = new Users(username, password, sex, age, phone, 1, uploadFileName, speak);
					userManager.register(users);
					return SUCCESS;
				}
			}else if(Jsp.equals("userRegister")){
				System.out.println(44444);
				if(date.equals("")){
					Users users = new Users(username, password, sex, 0, phone, 0, uploadFileName, speak);
					userManager.register(users);
					return Jsp;
				}
				else{
					String[] split = date.split("/");
					int year =Integer.parseInt(split[split.length-1]);
					Calendar c = Calendar.getInstance();
					int yearing = c.get(Calendar.YEAR); 
					int age = yearing - year;
					Users users = new Users(username, password, sex, age, phone, 0, uploadFileName, speak);
					userManager.register(users);
					return Jsp;
				}
			}
			
			return INPUT;
		}
		
	}
}


















