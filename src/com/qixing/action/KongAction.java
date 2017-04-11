package com.qixing.action;

import org.springframework.context.annotation.Scope;

import com.opensymphony.xwork2.ActionSupport;

@Scope("prototype")
public class KongAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String jsp;
	
	public String getJsp() {
		return jsp;
	}

	public void setJsp(String jsp) {
		this.jsp = jsp;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		if(jsp!=null){
			if(jsp.equals("adminAdd")){
				return "adminadd";
			}else if(jsp.equals("adminAddSucc")){
				return "adminaddSucc";
			}else if(jsp.equals("userAdd")){
				return jsp;
			}else if(jsp.equals("travelAdd")){
				return jsp;
			}else if(jsp.equals("littlephotoAdd")){
				return jsp;
			}
			else{
				return INPUT;
			}
		}
		return INPUT;
	}
}
