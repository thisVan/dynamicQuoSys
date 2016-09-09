package com.nfledmedia.dynamicQuoSys.entity;

import java.sql.Timestamp;

/**
 * Remark entity. @author MyEclipse Persistence Tools
 */

public class Remark implements java.io.Serializable {

	// Fields

	@Override
	public String toString() {
		return "Remark [id=" + id + ", yewu=" + yewu + ", operYwyName="
				+ operYwyName + ", operTime=" + operTime + ", operContent="
				+ operContent + ", orderauditId=" + orderauditId
				+ ", auditYwyName=" + auditYwyName + ", auditTime=" + auditTime
				+ ", state=" + state + "]";
	}

	private Integer id;
	private Yewu yewu;
	private String operYwyName;
	private Timestamp operTime;
	private String operContent;
	private Integer orderauditId;
	private String auditYwyName;
	private Timestamp auditTime;
	private String state;

	// Constructors

	/** default constructor */
	public Remark() {
	}

	/** minimal constructor */
	public Remark(Yewu yewu, String operYwyName, Timestamp operTime,
			String operContent, String state) {
		this.yewu = yewu;
		this.operYwyName = operYwyName;
		this.operTime = operTime;
		this.operContent = operContent;
		this.state = state;
	}

	/** full constructor */
	public Remark(Yewu yewu, String operYwyName, Timestamp operTime,
			String operContent, Integer orderauditId, String auditYwyName,
			Timestamp auditTime, String state) {
		this.yewu = yewu;
		this.operYwyName = operYwyName;
		this.operTime = operTime;
		this.operContent = operContent;
		this.orderauditId = orderauditId;
		this.auditYwyName = auditYwyName;
		this.auditTime = auditTime;
		this.state = state;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Yewu getYewu() {
		return this.yewu;
	}

	public void setYewu(Yewu yewu) {
		this.yewu = yewu;
	}

	public String getOperYwyName() {
		return this.operYwyName;
	}

	public void setOperYwyName(String operYwyName) {
		this.operYwyName = operYwyName;
	}

	public Timestamp getOperTime() {
		return this.operTime;
	}

	public void setOperTime(Timestamp operTime) {
		this.operTime = operTime;
	}

	public String getOperContent() {
		return this.operContent;
	}

	public void setOperContent(String operContent) {
		this.operContent = operContent;
	}

	public Integer getOrderauditId() {
		System.out.println("----------------进入Remark,调用getOrderauditId----------------------");
		return this.orderauditId;
	}

	public void setOrderauditId(Integer orderauditId) {
		this.orderauditId = orderauditId;
	}

	public String getAuditYwyName() {
		return this.auditYwyName;
	}

	public void setAuditYwyName(String auditYwyName) {
		this.auditYwyName = auditYwyName;
	}

	public Timestamp getAuditTime() {
		return this.auditTime;
	}

	public void setAuditTime(Timestamp auditTime) {
		this.auditTime = auditTime;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

}