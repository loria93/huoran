package org.huoran.main.util;


public class RequestBean{
	/**
	 * 用户名
	 */
	private String userName;
	/**
	 * 用户唯一标识
	 */
	private String userId;
	/**
	 * 用户密码
	 */
	private String password;
	
	public String getUserName() {
		return userName;
	}
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getUserId() {
		return userId;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
}