package com.nwsuaf.service.impl;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nwsuaf.entity.Book;
import com.nwsuaf.entity.Reader;
import com.nwsuaf.entity.User;
import com.nwsuaf.entity.book_bq;
import com.nwsuaf.entity.dongtai;
import com.nwsuaf.entity.ph;
import com.nwsuaf.mapper.LWMapper;
import com.nwsuaf.mapper.UserMapper;
import com.nwsuaf.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserMapper usermapper;
	@Autowired
	LWMapper lwmapper;

	@Override
	public String findPasswdByID(String name) {
		// TODO Auto-generated method stub
		return usermapper.findPasswdByID(name);
	}

	@Override
	public String findnamebyid(String id) {
		// TODO Auto-generated method stub
		return usermapper.findnamebyid(id);
	}

	@Override
	public void insertKey(String id, String key1, String key2, String key3, String key4, String key5, String key6,
			String key7, String key8, String key9, String key10, String y1, String y2, String y3, String y4, String y5,
			String y6, String y7, String y8, String y9, String y10) {
		// TODO Auto-generated method stub
		usermapper.insertKey(id, key1, key2, key3, key4, key5, key6, key7, key8, key9, key10
				, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10);
	}

	@Override
	public void updateUser(String usr_passwd, String age, String xy, String sex,String usr_id) {
		// TODO Auto-generated method stub
		usermapper.updateUser(usr_passwd, age, xy, sex,usr_id);
		
	}

	@Override
	public String findxyByID(String id) {
		// TODO Auto-generated method stub
		return usermapper.findxyByID(id);
	}

	@Override
	public ArrayList<User> findUser(String id,int num) {
		// TODO Auto-generated method stub
		return usermapper.findUser(id,num);
	}

	@Override
	public int usercount(String id) {
		// TODO Auto-generated method stub
		return usermapper.usercount(id);
	}

	@Override
	public ArrayList<Book> userjiansuo(String id) {
		// TODO Auto-generated method stub
		return usermapper.userjiansuo(id);
	}

	@Override
	public void insertUser(String cert_id, String name, String sex, String birthday, String dept, String occupation,
			String password, String usr_state) {
		// TODO Auto-generated method stub
		usermapper.insertUser(cert_id, name, sex, birthday, dept, occupation, password, usr_state);
	}

	@Override
	public void sys_updateUser(String usr_passwd, String age, String xy, String sex, String usr_id, String occupation,String phone) {
		// TODO Auto-generated method stub
		usermapper.sys_updateUser(usr_passwd, age, xy, sex,usr_id,occupation,phone);
	}

	@Override
	public void deleteByID(String id) {
		// TODO Auto-generated method stub
		usermapper.deleteByID(id);
	}

	@Override
	public void dongjie(String id) {
		// TODO Auto-generated method stub
		usermapper.dongjie(id);
	}

	@Override
	public void activeUser(String id) {
		// TODO Auto-generated method stub
		usermapper.activeUser(id);
	}

	@Override
	public String findAge(String id) {
		// TODO Auto-generated method stub
		return usermapper.findAge(id);
	}

	@Override
	public ArrayList<String> getbooks(String id) {
		// TODO Auto-generated method stub
		return usermapper.getbooks(id);
	}

	@Override
	public void insertPH(String id, String time, String ip, String zd, String weizhi) {
		// TODO Auto-generated method stub
		usermapper.insertPH(id, time, ip, zd, weizhi);
	}

	@Override
	public ph findip(String id) {
		// TODO Auto-generated method stub
		return usermapper.findip(id);
	}

	@Override
	public ph findtime(String id) {
		// TODO Auto-generated method stub
		return usermapper.findtime(id);
	}

	@Override
	public ph findzd(String id) {
		// TODO Auto-generated method stub
		return usermapper.findzd(id);
	}

	@Override
	public ph findweizhi(String id) {
		// TODO Auto-generated method stub
		return usermapper.findweizhi(id);
	}

	@Override
	public String[] finAllid() {
		return usermapper.findAllid();
	}

	@Override
	public ArrayList<HashMap<String,String>>findSimilar(String book_bq, String id) {
		// TODO Auto-generated method stub
		return usermapper.findSimilar(book_bq, id);
	}

	@Override
	public Integer getlendc(String cert_id) {
		// TODO Auto-generated method stub
		return usermapper.getlendc(cert_id);
	}

	@Override
	public 	ArrayList<HashMap<String, String>> finddongtai(String cert_id) {
		// TODO Auto-generated method stub
		return usermapper.finddongtai(cert_id);
	}

	@Override
	public void dingup(Integer valueOf) {
		// TODO Auto-generated method stub
		usermapper.dingup(valueOf);
	}

	@Override
	public void caiup(Integer valueOf) {
		// TODO Auto-generated method stub
		usermapper.caiup(valueOf);
	}

	@Override
	public void insertDT(String cert_id, String text, String ti) {
		// TODO Auto-generated method stub
		usermapper.insertDT(cert_id, text, ti);
	}

	@Override
	public ArrayList<HashMap<String, String>> findLY(String valueOf) {
		// TODO Auto-generated method stub
		return usermapper.findLY(valueOf);
	}

	@Override
	public void insertLY(String cert_id, String text, String usr_id) {
		// TODO Auto-generated method stub
		usermapper.insertLY(cert_id, text,usr_id);
	}

	@Override
	public Integer findtotlesize(String cert_id) {
		// TODO Auto-generated method stub
		return usermapper.findtotlesize(cert_id);
	}

	@Override
	public Integer findfabiaoc(String cert_id) {
		// TODO Auto-generated method stub
		return usermapper.findfabiaoc(cert_id);
	}

	@Override
	public Integer findqushi(String string, String id,String string2) {
		// TODO Auto-generated method stub
		return usermapper.findqushi(string, id, string2);
	}

	@Override
	public ArrayList<book_bq> findbook_bq(String id) {
		// TODO Auto-generated method stub
		return usermapper.findbook_bq(id);
	}

	@Override
	public ArrayList<book_bq> findwx_bq(String id) {
		// TODO Auto-generated method stub
		return usermapper.findwx_bq(id);
	}

	@Override
	public ArrayList<String> findSimilar_wx(String string) {
		// TODO Auto-generated method stub
		return usermapper.findSimilar_wx(string);
	}
	
	@Override
	public ArrayList<String> findSimilar_lw(String string) {
		// TODO Auto-generated method stub
		return usermapper.findSimilar_lw(string);
	}

	@Override
	public User finduserbyname(String string) {
		// TODO Auto-generated method stub
		return usermapper.finduserbyname(string);
	}

	@Override
	public ArrayList<String> findxinxi(String xueyuan) {
		// TODO Auto-generated method stub
		return usermapper.findxinxi(xueyuan);
	}

	@Override
	public ArrayList<String> findlendxinxi(String string) {
		// TODO Auto-generated method stub
		return usermapper.findlendxinxi(string);
	}

	@Override
	public Reader finduserbyname1(String string) {
		// TODO Auto-generated method stub
		return usermapper.finduserbyname1(string);
	}


}
