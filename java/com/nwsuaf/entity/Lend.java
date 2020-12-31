package com.nwsuaf.entity;

public class Lend {
	String id;
	String CERT_ID_F;
	String PROP_NO_F;
	String BOOK_TITLE;
	String LEND_DATE;
	String RET_DATE;
	String leixing;
	String MARC_REC_NO_F;
	String RENEW_TIMES;
	

	public String getRENEW_TIMES() {
		return RENEW_TIMES;
	}

	public void setRENEW_TIMES(String rENEW_TIMES) {
		RENEW_TIMES = rENEW_TIMES;
	}

	public String getMARC_REC_NO_F() {
		return MARC_REC_NO_F;
	}

	public void setMARC_REC_NO_F(String mARC_REC_NO_F) {
		MARC_REC_NO_F = mARC_REC_NO_F;
	}

	public String getLeixing() {
		return leixing;
	}

	public void setLeixing(String leixing) {
		this.leixing = leixing;
	}

	public String getCERT_ID_F() {
		return CERT_ID_F;
	}

	public void setCERT_ID_F(String cERT_ID_F) {
		CERT_ID_F = cERT_ID_F;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPROP_NO_F() {
		return PROP_NO_F;
	}

	public void setPROP_NO_F(String cERT_ID_F) {
		PROP_NO_F = cERT_ID_F;
	}

	public String getBOOK_TITLE() {
		return BOOK_TITLE;
	}

	public void setBOOK_TITLE(String bOOK_TITLE) {
		BOOK_TITLE = bOOK_TITLE;
	}

	public String getLEND_DATE() {
		return LEND_DATE;
	}

	public void setLEND_DATE(String lEND_DATE) {
		LEND_DATE = lEND_DATE;
	}

	public String getRET_DATE() {
		return RET_DATE;
	}

	public void setRET_DATE(String rET_DATE) {
		RET_DATE = rET_DATE;
	}

	@Override
	public String toString() {
		return "Lend [PROP_NO_F=" + PROP_NO_F + ", BOOK_TITLE=" + BOOK_TITLE + ", LEND_DATE=" + LEND_DATE
				+ ", RET_DATE=" + RET_DATE + "]";
	}

}
