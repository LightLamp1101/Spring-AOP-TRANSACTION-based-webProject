package org.kpu.myweb.domain;

public class CountVO {

	private String role;
	private int count;

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "CountVO [role=" + role + ", count=" + count + "]";
//		return "MemberVO [mem_userid=" + mem_userid + ", mem_passwd=" + mem_passwd + ", mem_username=" + mem_username + ", mem_engname=" + mem_engname + ", mem_mobile="
//		+ mem_mobile + ", mem_email=" + mem_email + ", mem_role=" + mem_role + "]";
	}

}
