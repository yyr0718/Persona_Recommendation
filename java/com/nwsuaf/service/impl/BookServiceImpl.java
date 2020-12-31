package com.nwsuaf.service.impl;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nwsuaf.entity.Book;
import com.nwsuaf.entity.Lend;
import com.nwsuaf.entity.book_bq;
import com.nwsuaf.mapper.BookMapper;
import com.nwsuaf.service.BookService;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	BookMapper bookmapper;

	@Override
	public ArrayList<Lend> lendInquiry(String id) {
		// TODO Auto-generated method stub
		
		return bookmapper.lendInquiry(id);
	}
	public ArrayList<Book> bookInquiry(int pagenum) {
		// TODO Auto-generated method stub
		
		return bookmapper.bookInquiry(pagenum);
	}
	@Override
	public int bookcount() {
		// TODO Auto-generated method stub
		return bookmapper.bookcount();
	}
	@Override
	public ArrayList<Book> bookjiansuo(String name,int pagenum) {
		// TODO Auto-generated method stub
		return bookmapper.bookjiansuo(name,pagenum);
	}
	@Override
	public void booklend(String CERT_ID, String PROP_NO_F, String LEND_DATE, String RET_DATE, String MARC_REC_NO_F) {
		// TODO Auto-generated method stub
		bookmapper.booklend(CERT_ID, PROP_NO_F, LEND_DATE, RET_DATE, MARC_REC_NO_F);
	}
	@Override
	public String findbooknobyname(String bookname) {
		// TODO Auto-generated method stub
		return bookmapper.findbooknobyname(bookname);
	}
	@Override
	public void updateflag(String flag, String bookid) {
		// TODO Auto-generated method stub
		bookmapper.updateflag(flag, bookid);
	}
	@Override
	public void addBook(String cert_id, String name, String sex, String birthday, String dept, String occupation,
			String password, String usr_state) {
		// TODO Auto-generated method stub
		bookmapper.addBook(cert_id, name, sex, birthday, dept, occupation, password, usr_state);
	}
	@Override
	public ArrayList<Lend> sysLendInquiry(int pagenum) {
		// TODO Auto-generated method stub
		return bookmapper.sysLendInquiry(pagenum);
	}
	@Override
	public int syscount() {
		// TODO Auto-generated method stub
		return bookmapper.syscount();
	}
	@Override
	public void deleteLend(String parameter) {
		// TODO Auto-generated method stub
		bookmapper.deleteLend(parameter);
	}
	@Override
	public int bookjiancount(String name) {
		// TODO Auto-generated method stub
		return bookmapper.bookjiancount(name);
	}
	@Override
	public book_bq getbook_bq(String valueOf) {
		// TODO Auto-generated method stub
		return bookmapper.getbook_bq(valueOf);
	}
	@Override
	public String findsuo(String marc_REC_NO_F) {
		// TODO Auto-generated method stub
		return bookmapper.findsuo(marc_REC_NO_F);
	}
	@Override
	public String findlei(String s1) {
		// TODO Auto-generated method stub
		return bookmapper.findlei(s1);
	}
	@Override
	public void setleixing(String id,String leixing) {
		// TODO Auto-generated method stub
		bookmapper.setleixing(id,leixing);
	}
	@Override
	public ArrayList<HashMap<String, String>> findleixing(String id) {
		// TODO Auto-generated method stub
		return bookmapper.findleixing(id);
	}
	@Override
	public ArrayList<Book> booktuijian(String x) {
		// TODO Auto-generated method stub
		return bookmapper.booktuijian(x);
	}
	@Override
	public void addlend(String cert_ID_F, String prop_NO_F, String lend_DATE, String ret_DATE, String renew_TIMES,
			String marc_REC_NO_F) {
		// TODO Auto-generated method stub
		bookmapper.addlend(cert_ID_F, prop_NO_F, lend_DATE, ret_DATE, renew_TIMES, marc_REC_NO_F);
	}
	public void deleteBookByID(String id) {
		bookmapper.deleteBookByID( id);
	}
	public void dongjieBook(String id) {
		bookmapper.dongjieBook( id);
	}
	public void activeBook(String id) {
		bookmapper.activeBook( id);
	}
	
}
