package com.nwsuaf.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nwsuaf.entity.LW;
import com.nwsuaf.entity.book_bq;
import com.nwsuaf.mapper.LWMapper;
import com.nwsuaf.service.LWService;

@Service
public class LWServiceImpl implements LWService{

	@Autowired
	LWMapper lwmapper;
	@Override
	public void addLW(String cert_id, String name, String sex, String birthday, String dept, String occupation,
			String password, String usr_state, String x1, String x11, String x2, String x12, String x13, String x14,
			String x15, String x16, String x17, String x18,int count) {
		// TODO Auto-generated method stub
		lwmapper.addLW(cert_id, name, sex, birthday, dept, occupation, password, usr_state, x1, x11, x2, x12, x13, x14, x15, x16, x17, x18,count);
	}
	@Override
	public int LWcount() {
		// TODO Auto-generated method stub
		return lwmapper.LWcount();
	}
	@Override
	public ArrayList<LW> LWInquiry(int pagenum) {
		// TODO Auto-generated method stub
		return lwmapper.LWInquiry(pagenum);
	}
	@Override
	public ArrayList<LW> LWjiansuo(String valueOf,int pagenum) {
		// TODO Auto-generated method stub
		return lwmapper.LWjiansuo(valueOf,pagenum);
	}
	@Override
	public int LWcount1() {
		// TODO Auto-generated method stub
		return lwmapper.LWcount1();
	}
	@Override
	public int bookjiancount(String inputname) {
		// TODO Auto-generated method stub
		return lwmapper.bookjiancount(inputname);
	}
	@Override
	public void insertKey_lw(String id, String string, String string2, String string3, String string4, String string5,
			String string6, String string7, String string8, String string9, String string10, String string11,
			String string12, String string13, String string14, String string15, String string16, String string17,
			String string18, String string19, String string20) {
		// TODO Auto-generated method stub
		lwmapper.insertKey_lw(id, string, string2, string3, string4, string5, string6, string7, string8, string9, string10, string11, string12, string13, string14, string15, string16, string17, string18, string19, string20);
	}
	@Override
	public ArrayList<String> getlws(String id) {
		// TODO Auto-generated method stub
		return lwmapper.getlws(id);
	}
	@Override
	public book_bq getlw_bq(String valueOf) {
		// TODO Auto-generated method stub
		return lwmapper.getlw_bq(valueOf);
	}
	@Override
	public ArrayList<String> getfriend_lw(String findnamebyid) {
		// TODO Auto-generated method stub
		return lwmapper.getfriend_lw(findnamebyid);
	}
	@Override
	public void addfamilar(String id, String id1, int number, int flag) {
		// TODO Auto-generated method stub
		lwmapper.addfamilar(id, id1, number, flag);
	}
	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		lwmapper.delete(id);
	}
	@Override
	public void addfriend(String id, String id1, int number, int flag) {
		// TODO Auto-generated method stub
		lwmapper.addfriend(id, id1, number, flag);
	}
	@Override
	public void deletefriend(String id) {
		// TODO Auto-generated method stub
		lwmapper.deletefriend(id);
	}
	@Override
	public void delete_bookfamilar(String id) {
		// TODO Auto-generated method stub
		lwmapper.delete_bookfamilar(id);
	}

}
