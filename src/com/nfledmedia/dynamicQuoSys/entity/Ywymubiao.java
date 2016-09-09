package com.nfledmedia.dynamicQuoSys.entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * Ywymubiao entity. @author MyEclipse Persistence Tools
 */

public class Ywymubiao implements java.io.Serializable {

	// Fields

	private Integer goalId;
	private Date goalNiandu;
	private Yewuyuan goalYwy;
	private Double goalMubiao;
	private Double goalWanchenglv;
	private Timestamp goalTimestamp;

	// Constructors

	/** default constructor */
	public Ywymubiao() {
	}

	/** minimal constructor */
	public Ywymubiao(Date goalNiandu, Yewuyuan goalYwy, Double goalMubiao) {
		this.goalNiandu = goalNiandu;
		this.goalYwy = goalYwy;
		this.goalMubiao = goalMubiao;
	}

	/** full constructor */
	public Ywymubiao(Date goalNiandu, Yewuyuan goalYwy, Double goalMubiao,
			Double goalWanchenglv, Timestamp goalTimestamp) {
		this.goalNiandu = goalNiandu;
		this.goalYwy = goalYwy;
		this.goalMubiao = goalMubiao;
		this.goalWanchenglv = goalWanchenglv;
		this.goalTimestamp = goalTimestamp;
	}

	// Property accessors

	public Integer getGoalId() {
		return this.goalId;
	}

	public void setGoalId(Integer goalId) {
		this.goalId = goalId;
	}

	public Date getGoalNiandu() {
		return this.goalNiandu;
	}

	public void setGoalNiandu(Date goalNiandu) {
		this.goalNiandu = goalNiandu;
	}

	public Yewuyuan getGoalYwy() {
		return this.goalYwy;
	}

	public void setGoalYwy(Yewuyuan goalYwy) {
		this.goalYwy = goalYwy;
	}

	public Double getGoalMubiao() {
		return this.goalMubiao;
	}

	public void setGoalMubiao(Double goalMubiao) {
		this.goalMubiao = goalMubiao;
	}

	public Double getGoalWanchenglv() {
		return this.goalWanchenglv;
	}

	public void setGoalWanchenglv(Double goalWanchenglv) {
		this.goalWanchenglv = goalWanchenglv;
	}

	public Timestamp getGoalTimestamp() {
		return this.goalTimestamp;
	}

	public void setGoalTimestamp(Timestamp goalTimestamp) {
		this.goalTimestamp = goalTimestamp;
	}

}