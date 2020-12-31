package com.nwsuaf.entity;

public class liuyan {
	String cert_id;
	String id;
	String text;
	String lyid;
	
	public String getLyid() {
		return lyid;
	}
	public void setLyid(String lyid) {
		this.lyid = lyid;
	}
	public String getCert_id() {
		return cert_id;
	}
	public void setCert_id(String cert_id) {
		this.cert_id = cert_id;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	@Override
	public String toString() {
		return "liuyan [cert_id=" + cert_id + ", id=" + id + ", text=" + text + "]";
	}
	
}
