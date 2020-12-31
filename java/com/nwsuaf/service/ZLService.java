package com.nwsuaf.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.nwsuaf.entity.ZL;

public interface ZLService {

	void addZL(String cert_id,String name,String sex,String birthday,String dept,String occupation,String password,String usr_state,String x1
			,String x11);
	ArrayList<ZL> ZLInquiry(int pagenum);
	int zlcount1();
	ArrayList<ZL> ZLjiansuo(@Param("valueOf")String valueOf,@Param("pagenum")int pagenum);
	int bookjiancount(String inputname);
	ArrayList<String> getfriend_zl(String findnamebyid);
}
