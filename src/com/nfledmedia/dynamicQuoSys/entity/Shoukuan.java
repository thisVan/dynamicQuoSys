package com.nfledmedia.dynamicQuoSys.entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * Shoukuan entity. @author MyEclipse Persistence Tools
 */

public class Shoukuan implements java.io.Serializable {

	// Fields

	private Integer skId;
	private String skRenkanbianhao;
	private Integer skYwyid;
	private String skMingcheng;
	private Double skShoukuanjine;
	private Date skShoukuanshijian;
	private String skShoukuanfangshi;
	private String skShoukuanbeizhu;
	private String skShenheren;
	private Timestamp skTimestamp;

	// Constructors

	/** default constructor */
	public Shoukuan() {
	}

	/** minimal constructor */
	public Shoukuan(String skRenkanbianhao, Integer skYwyid,
			String skMingcheng, Double skShoukuanjine, Date skShoukuanshijian,
			String skShoukuanfangshi) {
		this.skRenkanbianhao = skRenkanbianhao;
		this.skYwyid = skYwyid;
		this.skMingcheng = skMingcheng;
		this.skShoukuanjine = skShoukuanjine;
		this.skShoukuanshijian = skShoukuanshijian;
		this.skShoukuanfangshi = skShoukuanfangshi;
	}

	/** full constructor */
	public Shoukuan(String skRenkanbianhao, Integer skYwyid,
			String skMingcheng, Double skShoukuanjine, Date skShoukuanshijian,
			String skShoukuanfangshi, String skShoukuanbeizhu,
			String skShenheren, Timestamp skTimestamp) {
		this.skRenkanbianhao = skRenkanbianhao;
		this.skYwyid = skYwyid;
		this.skMingcheng = skMingcheng;
		this.skShoukuanjine = skShoukuanjine;
		this.skShoukuanshijian = skShoukuanshijian;
		this.skShoukuanfangshi = skShoukuanfangshi;
		this.skShoukuanbeizhu = skShoukuanbeizhu;
		this.skShenheren = skShenheren;
		this.skTimestamp = skTimestamp;
	}

	// Property accessors

	public Integer getSkId() {
		return this.skId;
	}

	public void setSkId(Integer skId) {
		this.skId = skId;
	}

	public String getSkRenkanbianhao() {
		return this.skRenkanbianhao;
	}

	public void setSkRenkanbianhao(String skRenkanbianhao) {
		this.skRenkanbianhao = skRenkanbianhao;
	}

	public Integer getSkYwyid() {
		return this.skYwyid;
	}

	public void setSkYwyid(Integer skYwyid) {
		this.skYwyid = skYwyid;
	}

	public String getSkMingcheng() {
		return this.skMingcheng;
	}

	public void setSkMingcheng(String skMingcheng) {
		this.skMingcheng = skMingcheng;
	}

	public Double getSkShoukuanjine() {
		return this.skShoukuanjine;
	}

	public void setSkShoukuanjine(Double skShoukuanjine) {
		this.skShoukuanjine = skShoukuanjine;
	}

	public Date getSkShoukuanshijian() {
		return this.skShoukuanshijian;
	}

	public void setSkShoukuanshijian(Date skShoukuanshijian) {
		this.skShoukuanshijian = skShoukuanshijian;
	}

	public String getSkShoukuanfangshi() {
		return this.skShoukuanfangshi;
	}

	public void setSkShoukuanfangshi(String skShoukuanfangshi) {
		this.skShoukuanfangshi = skShoukuanfangshi;
	}

	public String getSkShoukuanbeizhu() {
		return this.skShoukuanbeizhu;
	}

	public void setSkShoukuanbeizhu(String skShoukuanbeizhu) {
		this.skShoukuanbeizhu = skShoukuanbeizhu;
	}

	public String getSkShenheren() {
		return this.skShenheren;
	}

	public void setSkShenheren(String skShenheren) {
		this.skShenheren = skShenheren;
	}

	public Timestamp getSkTimestamp() {
		return this.skTimestamp;
	}

	public void setSkTimestamp(Timestamp skTimestamp) {
		this.skTimestamp = skTimestamp;
	}

}