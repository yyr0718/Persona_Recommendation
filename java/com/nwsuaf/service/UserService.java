package com.nwsuaf.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.json.JSONArray;

import com.nwsuaf.entity.Book;
import com.nwsuaf.entity.Reader;
import com.nwsuaf.entity.User;
import com.nwsuaf.entity.book_bq;
import com.nwsuaf.entity.dongtai;
import com.nwsuaf.entity.ph;

public interface UserService {
	String findPasswdByID(String name);
	String findnamebyid(String id);
	void insertKey(String id,String key1,String key2,String key3,String key4,String key5,
			String key6,String key7,String key8,String key9,String key10,String y1,String y2,String y3,String y4,String y5,
			String y6,String y7,String y8,String y9,String y10);
	void updateUser(String usr_passwd,String age,String xy,String sex,String usr_id);
	String findxyByID(String id);
	ArrayList<User>findUser(String id,int num);
	int usercount(String id);
	void insertUser(String cert_id,String name,String sex,String birthday,String dept,String occupation,String password,String usr_state);
	ArrayList<Book> userjiansuo(String id);
	void sys_updateUser(String usr_passwd,String age,String xy,String sex,String usr_id,String occupation, String phone);
	void deleteByID(String id);
	void dongjie(String id);
	void activeUser(String id);
	String findAge(String id);
	ArrayList<String> getbooks(String id);
	void insertPH(String id, String time, String ip, String zd, String weizhi);
	ph findip(String id);
	ph findtime(String id);
	ph findzd(String id);
	ph findweizhi(String id);
	String [] finAllid();
	ArrayList<HashMap<String,String>> findSimilar(String book_bq, String id);
	Integer getlendc(String cert_id);
	ArrayList<HashMap<String, String>> finddongtai(String cert_id);
	void dingup(Integer valueOf);
	void caiup(Integer valueOf);
	void insertDT(String cert_id, String text, String ti);
	ArrayList<HashMap<String, String>> findLY(String valueOf);
	void insertLY(String cert_id, String text, String usr_id);
	Integer findtotlesize(String cert_id);
	Integer findfabiaoc(String cert_id);
	Integer findqushi(String string, String id, String string2);
	ArrayList<book_bq> findbook_bq(String id);
	ArrayList<book_bq> findwx_bq(String id);
	ArrayList<String>  findSimilar_wx(String string);
	ArrayList<String> findSimilar_lw(String string);
	User finduserbyname(String string);
	ArrayList<String> findxinxi(String xueyuan);
	ArrayList<String> findlendxinxi(String string);
	Reader finduserbyname1(String string);
	
}
