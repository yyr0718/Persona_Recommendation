package com.nwsuaf.entity;

public class User {
	private String cert_id;
	private String name;
	private String birthday;
	private String sex;
	private String password;
	private String occupation;;
	private String dept;
	private String usr_state;
	private String phone;
	
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getUsr_state() {
		return usr_state;
	}

	public void setUsr_state(String usr_state) {
		this.usr_state = usr_state;
	}

	public String getCert_id() {
		return cert_id;
	}

	public void setCert_id(String cert_id) {
		this.cert_id = cert_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	@Override
	public String toString() {
		return "User [cert_id=" + cert_id + ", name=" + name + ", birthday=" + birthday + ", sex=" + sex + ", password="
				+ password + ", occupation=" + occupation + ", dept=" + dept + ", usr_state=" + usr_state + "]";
	}

}
