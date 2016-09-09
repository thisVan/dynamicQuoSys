package com.nfledmedia.dynamicQuoSys.entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * Fukuan entity. @author MyEclipse Persistence Tools
 */

public class Fukuan implements java.io.Serializable {

	// Fields

	private Integer id;
	private Renkanshu renkanshu;
	private Integer ywyId;
	private String mingcheng;
	private Double jine;
	private Date fukuanshijian;
	private String fukuanfangshi;
	private String fukuanbeizhu;
	private Timestamp fukuanTimestamp;

	// Constructors

	/** default constructor */
	public Fukuan() {
	}

	/** minimal constructor */
	public Fukuan(Renkanshu renkanshu, Integer ywyId, String mingcheng,
			Double jine, Date fukuanshijian, String fukuanfangshi) {
		this.renkanshu = renkanshu;
		this.ywyId = ywyId;
		this.mingcheng = mingcheng;
		this.jine = jine;
		this.fukuanshijian = fukuanshijian;
		this.fukuanfangshi = fukuanfangshi;
	}

	/** full constructor */
	public Fukuan(Renkanshu renkanshu, Integer ywyId, String mingcheng,
			Double jine, Date fukuanshijian, String fukuanfangshi,
			String fukuanbeizhu, Timestamp fukuanTimestamp) {
		this.renkanshu = renkanshu;
		this.ywyId = ywyId;
		this.mingcheng = mingcheng;
		this.jine = jine;
		this.fukuanshijian = fukuanshijian;
		this.fukuanfangshi = fukuanfangshi;
		this.fukuanbeizhu = fukuanbeizhu;
		this.fukuanTimestamp = fukuanTimestamp;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Renkanshu getRenkanshu() {
		return this.renkanshu;
	}

	public void setRenkanshu(Renkanshu renkanshu) {
		this.renkanshu = renkanshu;
	}

	public Integer getYwyId() {
		return this.ywyId;
	}

	public void setYwyId(Integer ywyId) {
		this.ywyId = ywyId;
	}

	public String getMingcheng() {
		return this.mingcheng;
	}

	public void setMingcheng(String mingcheng) {
		this.mingcheng = mingcheng;
	}

	public Double getJine() {
		return this.jine;
	}

	public void setJine(Double jine) {
		this.jine = jine;
	}

	public Date getFukuanshijian() {
		return this.fukuanshijian;
	}

	public void setFukuanshijian(Date fukuanshijian) {
		this.fukuanshijian = fukuanshijian;
	}

	public String getFukuanfangshi() {
		return this.fukuanfangshi;
	}

	public void setFukuanfangshi(String fukuanfangshi) {
		this.fukuanfangshi = fukuanfangshi;
	}

	public String getFukuanbeizhu() {
		return this.fukuanbeizhu;
	}

	public void setFukuanbeizhu(String fukuanbeizhu) {
		this.fukuanbeizhu = fukuanbeizhu;
	}

	public Timestamp getFukuanTimestamp() {
		return this.fukuanTimestamp;
	}

	public void setFukuanTimestamp(Timestamp fukuanTimestamp) {
		this.fukuanTimestamp = fukuanTimestamp;
	}

}