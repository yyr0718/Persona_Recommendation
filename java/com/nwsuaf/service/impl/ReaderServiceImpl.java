package com.nwsuaf.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.nwsuaf.entity.BiaoQianEntity;
import com.nwsuaf.entity.Reader;
import com.nwsuaf.entity.TuiJianBook;
import com.nwsuaf.entity.TuiJianLw;
import com.nwsuaf.mapper.ReaderMapper;
import com.nwsuaf.service.ReaderService;

@Service
public class ReaderServiceImpl implements ReaderService{
	@Autowired
	ReaderMapper readerMapper;
	
	public List<BiaoQianEntity> getBQByKind(String kind,String dept){
		return readerMapper.getBQByKind( kind, dept);
	}
	public List<Map<String, String>> getSexInfo(String kind,String dept){
		return readerMapper.getSexInfo( kind, dept);
	}
	public List<Map<String, String>> getOccInfo(String kind,String dept){
		return readerMapper.getOccInfo( kind, dept);
	}	


	public Reader getReaderById(String cert_id) {
		return readerMapper.getReaderById(cert_id);
	}
	
	public List<TuiJianBook> getTuiJianByKind(String kind){
		return readerMapper.getTuiJianByKind(kind);
	}
	public List<TuiJianLw> getTuiJianByKind_Lw(String kind_lw,String author) {
		return readerMapper.getTuiJianByKind_Lw(kind_lw,author);
	}
	public List<TuiJianLw> getTuiJianByInfor_Lw(String dept,String author) {
		return readerMapper.getTuiJianByInfor_Lw(dept,author);
	}	
	public List<TuiJianBook> searchBook(String search){
		return readerMapper.searchBook(search);
	}
	
	public List<TuiJianBook> getTopTuiJian(){
		return readerMapper.getTopTuiJian();
	}
	
	public List<TuiJianBook> getNewTuiJian(){
		return readerMapper.getNewTuiJian();
	}
	
	public BiaoQianEntity getBQ(String cert_id){
		return readerMapper.getBQ(cert_id);
	}
	
	public List<TuiJianBook> getTuiJianByTeacherInfor(String sex, String dept, String occupation){
		return readerMapper.getTuiJianByTeacherInfor( sex,  dept,  occupation);
	}
	
	public List<TuiJianBook> getTuiJianByInfor(String sex, String dept, String id){
		return readerMapper.getTuiJianByInfor( sex,  dept,  id);
	}
	
	public List<TuiJianBook> getTuiJianByBq(String biaoqian, int num){
		return readerMapper.getTuiJianByBq( biaoqian,  num);
	}
	
	public TuiJianBook getBookById(String bookid) {
		return readerMapper.getBookById(bookid);
	}

	@Override
	public String findPasswdByID(String name) {
		// TODO Auto-generated method stub
		return readerMapper.findPasswdByID(name);
	}

	@Override
	public String findnamebyid(String id) {
		// TODO Auto-generated method stub
		return readerMapper.findnamebyid(id);
	}

	@Override
	public void insertKey(String id, String key1, String key2, String key3, String key4, String key5, String key6,
			String key7, String key8, String key9, String key10, String y1, String y2, String y3, String y4, String y5,
			String y6, String y7, String y8, String y9, String y10) {
		// TODO Auto-generated method stub
		readerMapper.insertKey(id, key1, key2, key3, key4, key5, key6, key7, key8, key9, key10
				, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10);
	}

	@Override
	public void updateReader(String usr_passwd, String age, String xy, String sex,String usr_id,String phone) {
		// TODO Auto-generated method stub
		readerMapper.updateReader(usr_passwd, age, xy, sex,usr_id,phone);
		
	}

	@Override
	public String findxyByID(String id) {
		// TODO Auto-generated method stub
		return readerMapper.findxyByID(id);
	}

	@Override
	public ArrayList<Reader> findReader(String id,int num) {
		// TODO Auto-generated method stub
		return readerMapper.findReader(id,num);
	}

	@Override
	public int usercount(String id) {
		// TODO Auto-generated method stub
		return readerMapper.usercount(id);
	}

	@Override
	public ArrayList<TuiJianBook> userjiansuo(String id) {
		// TODO Auto-generated method stub
		return readerMapper.userjiansuo(id);
	}

	@Override
	public void insertReader(String cert_id, String name, String sex, String birthday, String dept, String occupation,
			String password, String usr_state) {
		// TODO Auto-generated method stub
		readerMapper.insertReader(cert_id, name, sex, birthday, dept, occupation, password, usr_state);
	}

	@Override
	public void sys_updateReader(String usr_passwd, String age, String xy, String sex, String usr_id, String occupation) {
		// TODO Auto-generated method stub
		readerMapper.sys_updateReader(usr_passwd, age, xy, sex,usr_id,occupation);
	}

	@Override
	public void deleteByID(String id) {
		// TODO Auto-generated method stub
		readerMapper.deleteByID(id);
	}

	@Override
	public void dongjie(String id) {
		// TODO Auto-generated method stub
		readerMapper.dongjie(id);
	}

	@Override
	public void activeReader(String id) {
		// TODO Auto-generated method stub
		readerMapper.activeReader(id);
	}

	@Override
	public String findAge(String id) {
		// TODO Auto-generated method stub
		return readerMapper.findAge(id);
	}

	@Override
	public ArrayList<String> getbooks(String id) {
		// TODO Auto-generated method stub
		return readerMapper.getbooks(id);
	}

	@Override
	public void insertPH(String id, String time, String ip, String zd, String weizhi) {
		// TODO Auto-generated method stub
		readerMapper.insertPH(id, time, ip, zd, weizhi);
	}


	@Override
	public ArrayList<HashMap<String,String>>findSimilar(String BiaoQianEntity, String id) {
		// TODO Auto-generated method stub
		return readerMapper.findSimilar(BiaoQianEntity, id);
	}

	@Override
	public Integer getlendc(String cert_id) {
		// TODO Auto-generated method stub
		return readerMapper.getlendc(cert_id);
	}

	@Override
	public 	ArrayList<HashMap<String, String>> finddongtai(String cert_id) {
		// TODO Auto-generated method stub
		return readerMapper.finddongtai(cert_id);
	}

	@Override
	public void dingup(Integer valueOf) {
		// TODO Auto-generated method stub
		readerMapper.dingup(valueOf);
	}

	@Override
	public void caiup(Integer valueOf) {
		// TODO Auto-generated method stub
		readerMapper.caiup(valueOf);
	}

	@Override
	public void insertDT(String cert_id, String text, String ti) {
		// TODO Auto-generated method stub
		readerMapper.insertDT(cert_id, text, ti);
	}

	@Override
	public ArrayList<HashMap<String, String>> findLY(String valueOf) {
		// TODO Auto-generated method stub
		return readerMapper.findLY(valueOf);
	}

	@Override
	public void insertLY(String cert_id, String text, String usr_id) {
		// TODO Auto-generated method stub
		readerMapper.insertLY(cert_id, text,usr_id);
	}

	@Override
	public Integer findtotlesize(String cert_id) {
		// TODO Auto-generated method stub
		return readerMapper.findtotlesize(cert_id);
	}

	@Override
	public Integer findfabiaoc(String cert_id) {
		// TODO Auto-generated method stub
		return readerMapper.findfabiaoc(cert_id);
	}

	@Override
	public Integer findqushi(String string, String id,String string2) {
		// TODO Auto-generated method stub
		return readerMapper.findqushi(string, id, string2);
	}

	@Override
	public ArrayList<BiaoQianEntity> findBiaoQianEntity(String id) {
		// TODO Auto-generated method stub
		return readerMapper.findBiaoQianEntity(id);
	}

	@Override
	public ArrayList<BiaoQianEntity> findwx_bq(String id) {
		// TODO Auto-generated method stub
		return readerMapper.findwx_bq(id);
	}

	@Override
	public ArrayList<String> findSimilar_wx(String string) {
		// TODO Auto-generated method stub
		return readerMapper.findSimilar_wx(string);
	}
	
	@Override
	public ArrayList<String> findSimilar_lw(String string) {
		// TODO Auto-generated method stub
		return readerMapper.findSimilar_lw(string);
	}

	@Override
	public Reader finduserbyname(String string) {
		// TODO Auto-generated method stub
		return readerMapper.finduserbyname(string);
	}

	@Override
	public ArrayList<String> findxinxi(String xueyuan) {
		// TODO Auto-generated method stub
		return readerMapper.findxinxi(xueyuan);
	}

	@Override
	public String[] findAllid() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public ArrayList<TuiJianBook> findBook(String id,int num) {
		// TODO Auto-generated method stub
		return readerMapper.findBook(id,num);
	}

	@Override
	public int bookcount(String id) {
		// TODO Auto-generated method stub
		return readerMapper.bookcount(id);
	}
	
	public void sys_updateBook(String book_id, String book_name, String book_kind, String author, String publisher,String year,String image) {
		 readerMapper.sys_updateBook( book_id,  book_name,  book_kind,  author,  publisher, year, image);
	}

}
