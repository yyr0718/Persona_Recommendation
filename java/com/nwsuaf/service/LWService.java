package com.nwsuaf.service;

import java.util.ArrayList;

import com.nwsuaf.entity.LW;
import com.nwsuaf.entity.book_bq;

public interface LWService {

	void addLW(String cert_id,String name,String sex,String birthday,String dept,String occupation,String password,String usr_state,String x1
			,String x11,String x2,String x12,String x13,String x14,String x15,String x16,String x17,String x18,int count);
	int LWcount();
	ArrayList<LW> LWInquiry(int pagenum);
	ArrayList<LW> LWjiansuo(String valueOf,int pagenum);
	int LWcount1();
	int bookjiancount(String inputname);
	void insertKey_lw(String id, String string, String string2, String string3, String string4, String string5,
			String string6, String string7, String string8, String string9, String string10, String string11,
			String string12, String string13, String string14, String string15, String string16, String string17,
			String string18, String string19, String string20);
	ArrayList<String> getlws(String id);
	book_bq getlw_bq(String valueOf);
	ArrayList<String> getfriend_lw(String findnamebyid);
	void addfamilar(String id, String id1, int number, int flag);
	void delete(String id);
	void addfriend(String id, String id1, int number, int flag);
	void deletefriend(String id);
	void delete_bookfamilar(String id);
}
