package com.nfledmedia.dynamicQuoSys.entity;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import com.nfledmedia.dynamicQuoSys.cons.UserState;

/**
 * Yewuyuan entity. @author MyEclipse Persistence Tools
 */

public class Yewuyuan implements java.io.Serializable {

	// Fields

	private Integer ywyId;
	private Bumen bumen;
	private Role role;
	private String username;
	private String password;
	private String ywyXingming;
	private Date ywyRuzhishijian;
	private Timestamp ywyTimestamp;
	private UserState state;

	// Constructors

	/** default constructor */
	public Yewuyuan() {
	}

	/** minimal constructor */
	public Yewuyuan(Integer ywyId, Role role, String username, String password,
			String ywyXingming, UserState state) {
		this.ywyId = ywyId;
		this.role = role;
		this.username = username;
		this.password = password;
		this.ywyXingming = ywyXingming;
		this.state = state;
	}

	/** full constructor */
	public Yewuyuan(Integer ywyId, Bumen bumen, Role role, String username,
			String password, String ywyXingming, Date ywyRuzhishijian,
			Timestamp ywyTimestamp, UserState state) {
		this.ywyId = ywyId;
		this.bumen = bumen;
		this.role = role;
		this.username = username;
		this.password = password;
		this.ywyXingming = ywyXingming;
		this.ywyRuzhishijian = ywyRuzhishijian;
		this.ywyTimestamp = ywyTimestamp;
		this.state = state;
	}

	// Property accessors

	public Integer getYwyId() {
		return this.ywyId;
	}

	public void setYwyId(Integer ywyId) {
		this.ywyId = ywyId;
	}

	public Bumen getBumen() {
		return this.bumen;
	}

	public void setBumen(Bumen bumen) {
		this.bumen = bumen;
	}

	public Role getRole() {
		return this.role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getYwyXingming() {
		return this.ywyXingming;
	}

	public void setYwyXingming(String ywyXingming) {
		this.ywyXingming = ywyXingming;
	}

	public Date getYwyRuzhishijian() {
		return this.ywyRuzhishijian;
	}

	public void setYwyRuzhishijian(Date ywyRuzhishijian) {
		this.ywyRuzhishijian = ywyRuzhishijian;
	}

	public Timestamp getYwyTimestamp() {
		return this.ywyTimestamp;
	}

	public void setYwyTimestamp(Timestamp ywyTimestamp) {
		this.ywyTimestamp = ywyTimestamp;
	}

	public UserState getState() {
		return this.state;
	}

	public void setState(UserState state) {
		this.state = state;
	}
}