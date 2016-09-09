package com.nfledmedia.dynamicQuoSys.entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * Message entity. @author MyEclipse Persistence Tools
 */

public class Message implements java.io.Serializable {

	// Fields

	private Long id;
	private Yewuyuan yewuyuan;
	private Timestamp time;
	private Integer hasRead;
	private String content;

	// Constructors

	/** default constructor */
	public Message() {
	}

	/** minimal constructor */
	public Message(Long id,Yewuyuan yewuyuan, Timestamp time, Integer hasRead) {
		this.id = id;
		this.yewuyuan = yewuyuan;
		this.time = time;
		this.hasRead = hasRead;
	}

	/** full constructor */
	public Message(Long id,Yewuyuan yewuyuan, Timestamp time, Integer hasRead,
			String content) {
		this.id = id;
		this.yewuyuan = yewuyuan;
		this.time = time;
		this.hasRead = hasRead;
		this.content = content;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Yewuyuan getYewuyuan() {
		return this.yewuyuan;
	}

	public void setYewuyuan(Yewuyuan yewuyuan) {
		this.yewuyuan = yewuyuan;
	}

	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

	public Integer getHasRead() {
		return this.hasRead;
	}

	public void setHasRead(Integer hasRead) {
		this.hasRead = hasRead;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}