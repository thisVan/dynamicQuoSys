package com.nfledmedia.dynamicQuoSys.entity;

import java.sql.Timestamp;

/**
 * Dingdanshoukuaninfo entity. @author MyEclipse Persistence Tools
 */

public class Dingdanshoukuaninfo implements java.io.Serializable {

	// Fields

	private Integer skinfoId;
	private String skinfoRenkanbianhao;
	private Double skinfoYfzongjine;
	private Double skinfoYidaokuan;
	private Double skinfoWeifukuan;
	private Short skinfoIsfuqing;
	private Timestamp skinfoTimestamp;

	// Constructors

	/** default constructor */
	public Dingdanshoukuaninfo() {
	}

	/** minimal constructor */
	public Dingdanshoukuaninfo(String skinfoRenkanbianhao,
			Double skinfoYfzongjine, Double skinfoYidaokuan,
			Double skinfoWeifukuan, Short skinfoIsfuqing) {
		this.skinfoRenkanbianhao = skinfoRenkanbianhao;
		this.skinfoYfzongjine = skinfoYfzongjine;
		this.skinfoYidaokuan = skinfoYidaokuan;
		this.skinfoWeifukuan = skinfoWeifukuan;
		this.skinfoIsfuqing = skinfoIsfuqing;
	}

	/** full constructor */
	public Dingdanshoukuaninfo(String skinfoRenkanbianhao,
			Double skinfoYfzongjine, Double skinfoYidaokuan,
			Double skinfoWeifukuan, Short skinfoIsfuqing,
			Timestamp skinfoTimestamp) {
		this.skinfoRenkanbianhao = skinfoRenkanbianhao;
		this.skinfoYfzongjine = skinfoYfzongjine;
		this.skinfoYidaokuan = skinfoYidaokuan;
		this.skinfoWeifukuan = skinfoWeifukuan;
		this.skinfoIsfuqing = skinfoIsfuqing;
		this.skinfoTimestamp = skinfoTimestamp;
	}

	// Property accessors

	public Integer getSkinfoId() {
		return this.skinfoId;
	}

	public void setSkinfoId(Integer skinfoId) {
		this.skinfoId = skinfoId;
	}

	public String getSkinfoRenkanbianhao() {
		return this.skinfoRenkanbianhao;
	}

	public void setSkinfoRenkanbianhao(String skinfoRenkanbianhao) {
		this.skinfoRenkanbianhao = skinfoRenkanbianhao;
	}

	public Double getSkinfoYfzongjine() {
		return this.skinfoYfzongjine;
	}

	public void setSkinfoYfzongjine(Double skinfoYfzongjine) {
		this.skinfoYfzongjine = skinfoYfzongjine;
	}

	public Double getSkinfoYidaokuan() {
		return this.skinfoYidaokuan;
	}

	public void setSkinfoYidaokuan(Double skinfoYidaokuan) {
		this.skinfoYidaokuan = skinfoYidaokuan;
	}

	public Double getSkinfoWeifukuan() {
		return this.skinfoWeifukuan;
	}

	public void setSkinfoWeifukuan(Double skinfoWeifukuan) {
		this.skinfoWeifukuan = skinfoWeifukuan;
	}

	public Short getSkinfoIsfuqing() {
		return this.skinfoIsfuqing;
	}

	public void setSkinfoIsfuqing(Short skinfoIsfuqing) {
		this.skinfoIsfuqing = skinfoIsfuqing;
	}

	public Timestamp getSkinfoTimestamp() {
		return this.skinfoTimestamp;
	}

	public void setSkinfoTimestamp(Timestamp skinfoTimestamp) {
		this.skinfoTimestamp = skinfoTimestamp;
	}

	@Override
	public String toString() {
		return "Dingdanshoukuaninfo [skinfoId=" + skinfoId
				+ ", skinfoRenkanbianhao=" + skinfoRenkanbianhao
				+ ", skinfoYfzongjine=" + skinfoYfzongjine
				+ ", skinfoYidaokuan=" + skinfoYidaokuan + ", skinfoWeifukuan="
				+ skinfoWeifukuan + ", skinfoIsfuqing=" + skinfoIsfuqing
				+ ", skinfoTimestamp=" + skinfoTimestamp + "]";
	}
	
	
}