package com.nwsuaf.entity;

public class dongtai {

	String cert_id;
	String id;
	String text;
	String time;
	String ding;
	String cai;
	
	public String getDing() {
		return ding;
	}
	public void setDing(String ding) {
		this.ding = ding;
	}
	public String getCai() {
		return cai;
	}
	public void setCai(String cai) {
		this.cai = cai;
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
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "dongtai [cert_id=" + cert_id + ", id=" + id + ", text=" + text + ", time=" + time + "]";
	}
	
}
