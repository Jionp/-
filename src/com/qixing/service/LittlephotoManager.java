package com.qixing.service;

import java.util.List;

import com.qixing.domain.Littlephoto;

public interface LittlephotoManager {
	List<Littlephoto> getPhotos();
	int changePhoto(Littlephoto photo);
	void addPhoto(Littlephoto photo);
	void delePhoto(long oid);
	List<Littlephoto> getLittlephotos(int goodsid);
}
