package com.nwsuaf.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nwsuaf.entity.ZL;
import com.nwsuaf.mapper.ZLMapper;
import com.nwsuaf.service.ZLService;

@Service
public class ZLServiceImpl implements ZLService{

	@Autowired
	ZLMapper zlmapper;
	@Override
	public void addZL(String cert_id, String name, String sex, String birthday, String dept, String occupation,
			String password, String usr_state, String x1, String x11) {
		// TODO Auto-generated method stub
		zlmapper.addZL(cert_id, name, sex, birthday, dept, occupation, password, usr_state, x1, x11);
	}
	@Override
	public ArrayList<ZL> ZLInquiry(int pagenum) {
		// TODO Auto-generated method stub
		return zlmapper.ZLInquiry(pagenum);
	}
	@Override
	public int zlcount1() {
		// TODO Auto-generated method stub
		return zlmapper.zlcount1();
	}
	@Override
	public ArrayList<ZL> ZLjiansuo(String valueOf, int pagenum) {
		// TODO Auto-generated method stub
		return zlmapper.ZLjiansuo(valueOf, pagenum);
	}
	@Override
	public int bookjiancount(String inputname) {
		// TODO Auto-generated method stub
		return zlmapper.bookjiancount(inputname);
	}
	@Override
	public ArrayList<String> getfriend_zl(String findnamebyid) {
		// TODO Auto-generated method stub
		return zlmapper.getfriend_zl(findnamebyid);
	}

}
