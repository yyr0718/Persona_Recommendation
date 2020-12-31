package com.nwsuaf.entity;

public class Book {
	String MARC_REC_NO;
	String CREATE_DATE;
	String BOOK_TITLE;
	String BOOK_AUTHOR;
	String BOOK_PUBLISHER;
	String BOOK_PUB_YEAR;
	String BOOK_CALL_NO;
	String MARC_USE_FLAG;
	String OPAC_FLAG;
	
	
	public String getOPAC_FLAG() {
		return OPAC_FLAG;
	}
	public void setOPAC_FLAG(String oPAC_FLAG) {
		OPAC_FLAG = oPAC_FLAG;
	}
	public String getMARC_REC_NO() {
		return MARC_REC_NO;
	}
	public void setMARC_REC_NO(String mARC_REC_NO) {
		MARC_REC_NO = mARC_REC_NO;
	}
	public String getCREATE_DATE() {
		return CREATE_DATE;
	}
	public void setCREATE_DATE(String cREATE_DATE) {
		CREATE_DATE = cREATE_DATE;
	}
	public String getBOOK_TITLE() {
		return BOOK_TITLE;
	}
	public void setBOOK_TITLE(String bOOK_TITLE) {
		BOOK_TITLE = bOOK_TITLE;
	}
	public String getBOOK_AUTHOR() {
		return BOOK_AUTHOR;
	}
	public void setBOOK_AUTHOR(String bOOK_AUTHOR) {
		BOOK_AUTHOR = bOOK_AUTHOR;
	}
	public String getBOOK_PUBLISHER() {
		return BOOK_PUBLISHER;
	}
	public void setBOOK_PUBLISHER(String bOOK_PUBLISHER) {
		BOOK_PUBLISHER = bOOK_PUBLISHER;
	}
	public String getBOOK_PUB_YEAR() {
		return BOOK_PUB_YEAR;
	}
	public void setBOOK_PUB_YEAR(String bOOK_PUB_YEAR) {
		BOOK_PUB_YEAR = bOOK_PUB_YEAR;
	}
	public String getBOOK_CALL_NO() {
		return BOOK_CALL_NO;
	}
	public void setBOOK_CALL_NO(String bOOK_CALL_NO) {
		BOOK_CALL_NO = bOOK_CALL_NO;
	}
	public String getMARC_USE_FLAG() {
		return MARC_USE_FLAG;
	}
	public void setMARC_USE_FLAG(String mARC_USE_FLAG) {
		MARC_USE_FLAG = mARC_USE_FLAG;
	}
	@Override
	public String toString() {
		return "Book [MARC_REC_NO=" + MARC_REC_NO + ", CREATE_DATE=" + CREATE_DATE + ", BOOK_TITLE=" + BOOK_TITLE
				+ ", BOOK_AUTHOR=" + BOOK_AUTHOR + ", BOOK_PUBLISHER=" + BOOK_PUBLISHER + ", BOOK_PUB_YEAR="
				+ BOOK_PUB_YEAR + ", BOOK_CALL_NO=" + BOOK_CALL_NO + ", MARC_USE_FLAG=" + MARC_USE_FLAG + "]";
	}
	
	
}
