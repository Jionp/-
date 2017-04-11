package com.qixing.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.qixing.dao.LittlephotoDAO;
import com.qixing.domain.Littlephoto;
import com.qixing.service.LittlephotoManager;

@Component("littlephotoManager")
public class LittlephotoManagerImpl implements LittlephotoManager{
	@Autowired
	private LittlephotoDAO littlephotoDAO;
	
	public LittlephotoDAO getLittlephotoDAO() {
		return littlephotoDAO;
	}

	public void setLittlephotoDAO(LittlephotoDAO littlephotoDAO) {
		this.littlephotoDAO = littlephotoDAO;
	}

	@Override
	public List<Littlephoto> getPhotos() {
		// TODO Auto-generated method stub
		return littlephotoDAO.getPhotos();
	}

	@Override
	public int changePhoto(Littlephoto photo) {
		// TODO Auto-generated method stub
		return littlephotoDAO.changePhoto(photo);
	}

	@Override
	public void addPhoto(Littlephoto photo) {
		// TODO Auto-generated method stub
		littlephotoDAO.addPhoto(photo);
	}

	@Override
	public void delePhoto(long oid) {
		// TODO Auto-generated method stub
		littlephotoDAO.delePhoto(oid);
		
	}

	@Override
	public List<Littlephoto> getLittlephotos(int goodsid) {
		// TODO Auto-generated method stub
		return littlephotoDAO.getLittlephotos(goodsid);
	}

}
