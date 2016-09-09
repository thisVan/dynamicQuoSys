package com.nfledmedia.dynamicQuoSys.entity;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Hangye entity. @author MyEclipse Persistence Tools
 */

public class Hangye implements java.io.Serializable {

	// Fields

	private String hangyename;
	private String hangyenameen;
	private String hangyeguishu;
	private Timestamp hangyeTimestamp;
	private Set renkanshus = new HashSet(0);

	// Constructors

	/** default constructor */
	public Hangye() {
	}

	/** minimal constructor */
	public Hangye(String hangyename) {
		this.hangyename = hangyename;
	}

	/** full constructor */
	public Hangye(String hangyename, String hangyenameen, String hangyeguishu,
			Timestamp hangyeTimestamp, Set renkanshus) {
		this.hangyename = hangyename;
		this.hangyenameen = hangyenameen;
		this.hangyeguishu = hangyeguishu;
		this.hangyeTimestamp = hangyeTimestamp;
		this.renkanshus = renkanshus;
	}

	// Property accessors

	public String getHangyename() {
		return this.hangyename;
	}

	public void setHangyename(String hangyename) {
		this.hangyename = hangyename;
	}

	public String getHangyenameen() {
		return this.hangyenameen;
	}

	public void setHangyenameen(String hangyenameen) {
		this.hangyenameen = hangyenameen;
	}

	public String getHangyeguishu() {
		return this.hangyeguishu;
	}

	public void setHangyeguishu(String hangyeguishu) {
		this.hangyeguishu = hangyeguishu;
	}

	public Timestamp getHangyeTimestamp() {
		return this.hangyeTimestamp;
	}

	public void setHangyeTimestamp(Timestamp hangyeTimestamp) {
		this.hangyeTimestamp = hangyeTimestamp;
	}

	public Set getRenkanshus() {
		return this.renkanshus;
	}

	public void setRenkanshus(Set renkanshus) {
		this.renkanshus = renkanshus;
	}

}