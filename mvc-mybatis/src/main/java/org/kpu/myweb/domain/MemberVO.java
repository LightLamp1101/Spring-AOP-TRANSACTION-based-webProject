package org.kpu.myweb.domain;

public class MemberVO {

	private String mem_id;
	private String mem_userid;
	private String mem_passwd;
	private String mem_username;
	private String mem_engname;
	private String mem_mobile;
	private String mem_email;
	private String mem_role;

	
	
	public String getMem_userid() {
		return mem_userid;
	}



	public void setMem_userid(String mem_userid) {
		this.mem_userid = mem_userid;
	}



	public String getMem_passwd() {
		return mem_passwd;
	}



	public void setMem_passwd(String mem_passwd) {
		this.mem_passwd = mem_passwd;
	}



	public String getMem_username() {
		return mem_username;
	}



	public void setMem_username(String mem_username) {
		this.mem_username = mem_username;
	}



	public String getMem_engname() {
		return mem_engname;
	}



	public void setMem_engname(String mem_engname) {
		this.mem_engname = mem_engname;
	}



	public String getMem_mobile() {
		return mem_mobile;
	}



	public void setMem_mobile(String mem_mobile) {
		this.mem_mobile = mem_mobile;
	}



	public String getMem_email() {
		return mem_email;
	}



	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}



	public String getMem_role() {
		return mem_role;
	}



	public void setMem_role(String mem_role) {
		this.mem_role = mem_role;
	}
	
	public String getMem_id() {
		return mem_id;
	}


	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}


	@Override
	public String toString() {
		return "MemberVO [mem_id=" + mem_id + ", mem_userid=" + mem_userid + ", mem_passwd=" + mem_passwd + ", mem_username=" + mem_username + ", mem_engname=" + mem_engname + ", mem_mobile="
				+ mem_mobile + ", mem_email=" + mem_email + ", mem_role=" + mem_role + "]";
//		return "MemberVO [mem_userid=" + mem_userid + ", mem_passwd=" + mem_passwd + ", mem_username=" + mem_username + ", mem_engname=" + mem_engname + ", mem_mobile="
//		+ mem_mobile + ", mem_email=" + mem_email + ", mem_role=" + mem_role + "]";
	}




}
