package com.nfledmedia.dynamicQuoSys.entity;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Bumen entity. @author MyEclipse Persistence Tools
 */

public class Bumen implements java.io.Serializable {

	// Fields

	private Integer bmId;
	private String bmMingcheng;
	private String bmZhuguan;
	private String bmFenguanlingdao;
	private String bmBangongshi;
	private Timestamp bmTimestamp;
	private Set yewuyuans = new HashSet(0);

	// Constructors

	/** default constructor */
	public Bumen() {
	}

	/** minimal constructor */
	public Bumen(Integer bmId, String bmMingcheng, String bmZhuguan) {
		this.bmId = bmId;
		this.bmMingcheng = bmMingcheng;
		this.bmZhuguan = bmZhuguan;
	}

	/** full constructor */
	public Bumen(Integer bmId, String bmMingcheng, String bmZhuguan,
			String bmFenguanlingdao, String bmBangongshi,
			Timestamp bmTimestamp, Set yewuyuans) {
		this.bmId = bmId;
		this.bmMingcheng = bmMingcheng;
		this.bmZhuguan = bmZhuguan;
		this.bmFenguanlingdao = bmFenguanlingdao;
		this.bmBangongshi = bmBangongshi;
		this.bmTimestamp = bmTimestamp;
		this.yewuyuans = yewuyuans;
	}

	// Property accessors

	public Integer getBmId() {
		return this.bmId;
	}

	public void setBmId(Integer bmId) {
		this.bmId = bmId;
	}

	public String getBmMingcheng() {
		return this.bmMingcheng;
	}

	public void setBmMingcheng(String bmMingcheng) {
		this.bmMingcheng = bmMingcheng;
	}

	public String getBmZhuguan() {
		return this.bmZhuguan;
	}

	public void setBmZhuguan(String bmZhuguan) {
		this.bmZhuguan = bmZhuguan;
	}

	public String getBmFenguanlingdao() {
		return this.bmFenguanlingdao;
	}

	public void setBmFenguanlingdao(String bmFenguanlingdao) {
		this.bmFenguanlingdao = bmFenguanlingdao;
	}

	public String getBmBangongshi() {
		return this.bmBangongshi;
	}

	public void setBmBangongshi(String bmBangongshi) {
		this.bmBangongshi = bmBangongshi;
	}

	public Timestamp getBmTimestamp() {
		return this.bmTimestamp;
	}

	public void setBmTimestamp(Timestamp bmTimestamp) {
		this.bmTimestamp = bmTimestamp;
	}

	public Set getYewuyuans() {
		return this.yewuyuans;
	}

	public void setYewuyuans(Set yewuyuans) {
		this.yewuyuans = yewuyuans;
	}

}