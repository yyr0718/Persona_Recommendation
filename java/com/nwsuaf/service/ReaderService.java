package com.nwsuaf.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.nwsuaf.entity.BiaoQianEntity;
import com.nwsuaf.entity.Reader;
import com.nwsuaf.entity.TuiJianBook;
import com.nwsuaf.entity.TuiJianLw;


public interface ReaderService {
	
	Reader getReaderById(String cert_id);
	
	List<TuiJianBook> getTuiJianByKind(String kind);
	List<TuiJianLw>   getTuiJianByKind_Lw(String kind_lw,String author );
	List<TuiJianLw>   getTuiJianByInfor_Lw(String dept,String author );	
	List<TuiJianBook> getTopTuiJian();	
	List<TuiJianBook> getNewTuiJian();
	
	BiaoQianEntity getBQ(String cert_id);
	
	List<TuiJianBook> getTuiJianByTeacherInfor(String sex, String dept, String occupation);
	
	List<TuiJianBook> getTuiJianByInfor(String sex, String dept, String id);
	
	List<TuiJianBook> getTuiJianByBq(String biaoqian, int num);
	
	List<TuiJianBook> searchBook(String search);
	
	TuiJianBook getBookById(String bookid);
	
	List<BiaoQianEntity> getBQByKind(String kind,String dept);
	List<Map<String, String>> getSexInfo(String kind,String dept);
	List<Map<String, String>> getOccInfo(String kind,String dept);
	
	String findPasswdByID(String name);
	String findnamebyid(String id);
	void insertKey(String id,String key1,String key2,String key3,String key4,String key5,
			String key6,String key7,String key8,String key9,String key10,String y1,String y2,String y3,String y4,String y5,
			String y6,String y7,String y8,String y9,String y10);
	void updateReader(String usr_passwd,String age,String xy,String sex,String usr_id, String phone);
	void sys_updateReader(String usr_passwd,String age,String xy,String sex,String usr_id,String occupation);
	String findxyByID(String id);
	ArrayList<Reader>findReader(@Param("id")String id,@Param("num")int num);
	int usercount(String id);
	ArrayList<TuiJianBook> userjiansuo(String id);
	void insertReader(String cert_id,String name,String sex,String birthday,String dept,String occupation,String password,String usr_state);
	void deleteByID(String id);
	void dongjie(String id);
	void activeReader(String id);
	String findAge(String id);
	ArrayList<String> getbooks(String id);
	void insertPH(String id, String time, String ip, String zd, String weizhi);

	String [] findAllid();
	ArrayList<HashMap<String,String>> findSimilar(@Param("BiaoQianEntity")String BiaoQianEntity, @Param("id")String id);
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
	ArrayList<BiaoQianEntity> findBiaoQianEntity(String id);
	ArrayList<BiaoQianEntity> findwx_bq(String id);
	ArrayList<String> findSimilar_wx(String string);
	ArrayList<String> findSimilar_lw(String string);
	Reader finduserbyname(String string);
	ArrayList<String> findxinxi(String xueyuan);
	
	ArrayList<TuiJianBook>findBook(@Param("id")String id,@Param("num")int num);
	int bookcount(String id);
	
	void sys_updateBook(String book_id, String book_name, String book_kind, String author, String publisher,String year,String image);

}
