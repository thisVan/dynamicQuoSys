package com.nfledmedia.dynamicQuoSys.entity;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Yewu entity. @author MyEclipse Persistence Tools
 */

public class Yewu implements java.io.Serializable {

	// Fields

	private Integer yewuId;
	private Yewuyuan yewuyuanByAuditYwyId;
	private Yewuyuan yewuyuanByCreateYwyId;
	private Yewuyuan yewuyuanByAlterYwyId;
	private Renkanshu renkanshu;
	private Yewuyuan yewuyuan;
	private Led led;
	private String kanhu;
	private String guanggaoneirong;
	private Industry industry;
	private String leixing;
	private Integer shichang;
	private Integer pinci;
	private Date kaishishijian;
	private Date jieshushijian;
	private Integer shuliang;
	private Double kanlijiaxiaoji;
	private String shiduan;
	private Date yewuTimestamp;
	private Date createTimestamp;
	private Date alterTimestamp;
	private Date auditTimestamp;
	private String state;

	// Constructors

	/** default constructor */
	public Yewu() {
	}

	/** minimal constructor */
	public Yewu(Renkanshu renkanshu, Yewuyuan yewuyuan, Led led,
			String kanhu,String guanggaoneirong,Industry industry, String leixing, Integer shichang, Integer pinci,
			Date kaishishijian, Date jieshushijian, Integer shuliang,
			String state) {
		this.renkanshu = renkanshu;
		this.yewuyuan = yewuyuan;
		this.led = led;
		this.kanhu = kanhu;
		this.guanggaoneirong=guanggaoneirong;
		this.industry=industry;
		this.leixing = leixing;
		this.shichang = shichang;
		this.pinci = pinci;
		this.kaishishijian = kaishishijian;
		this.jieshushijian = jieshushijian;
		this.shuliang = shuliang;
		this.state = state;
	}

	/** full constructor */
	public Yewu(Yewuyuan yewuyuanByAuditYwyId, Yewuyuan yewuyuanByCreateYwyId,
			Yewuyuan yewuyuanByAlterYwyId, Renkanshu renkanshu,
			Yewuyuan yewuyuan, Led led, String kanhu, String guanggaoneirong,Industry industry,
			String leixing,Integer shichang, Integer pinci, Date kaishishijian,
			Date jieshushijian, Integer shuliang, Double kanlijiaxiaoji,
			String shiduan, Date yewuTimestamp, Date createTimestamp,
			Date alterTimestamp, Date auditTimestamp, String state) {
		this.yewuyuanByAuditYwyId = yewuyuanByAuditYwyId;
		this.yewuyuanByCreateYwyId = yewuyuanByCreateYwyId;
		this.yewuyuanByAlterYwyId = yewuyuanByAlterYwyId;
		this.renkanshu = renkanshu;
		this.yewuyuan = yewuyuan;
		this.led = led;
		this.kanhu = kanhu;
		this.guanggaoneirong=guanggaoneirong;
		this.industry=industry;
		this.leixing = leixing;
		this.shichang = shichang;
		this.pinci = pinci;
		this.kaishishijian = kaishishijian;
		this.jieshushijian = jieshushijian;
		this.shuliang = shuliang;
		this.kanlijiaxiaoji = kanlijiaxiaoji;
		this.shiduan = shiduan;
		this.yewuTimestamp = yewuTimestamp;
		this.createTimestamp = createTimestamp;
		this.alterTimestamp = alterTimestamp;
		this.auditTimestamp = auditTimestamp;
		this.state = state;
	}

	// Property accessors

	public Integer getYewuId() {
		return this.yewuId;
	}

	public void setYewuId(Integer yewuId) {
		this.yewuId = yewuId;
	}

	public Yewuyuan getYewuyuanByAuditYwyId() {
		return this.yewuyuanByAuditYwyId;
	}

	public void setYewuyuanByAuditYwyId(Yewuyuan yewuyuanByAuditYwyId) {
		this.yewuyuanByAuditYwyId = yewuyuanByAuditYwyId;
	}

	public Yewuyuan getYewuyuanByCreateYwyId() {
		return this.yewuyuanByCreateYwyId;
	}

	public void setYewuyuanByCreateYwyId(Yewuyuan yewuyuanByCreateYwyId) {
		this.yewuyuanByCreateYwyId = yewuyuanByCreateYwyId;
	}

	public Yewuyuan getYewuyuanByAlterYwyId() {
		return this.yewuyuanByAlterYwyId;
	}

	public void setYewuyuanByAlterYwyId(Yewuyuan yewuyuanByAlterYwyId) {
		this.yewuyuanByAlterYwyId = yewuyuanByAlterYwyId;
	}

	public Renkanshu getRenkanshu() {
		return this.renkanshu;
	}

	public void setRenkanshu(Renkanshu renkanshu) {
		this.renkanshu = renkanshu;
	}

	public Yewuyuan getYewuyuan() {
		return this.yewuyuan;
	}

	public void setYewuyuan(Yewuyuan yewuyuan) {
		this.yewuyuan = yewuyuan;
	}

	public Led getLed() {
		return this.led;
	}

	public void setLed(Led led) {
		this.led = led;
	}

	public String getKanhu() {
		return this.kanhu;
	}

	public void setKanhu(String kanhu) {
		this.kanhu = kanhu;
	}

	public String getLeixing() {
		return this.leixing;
	}

	public void setLeixing(String leixing) {
		this.leixing = leixing;
	}

	public Integer getShichang() {
		return this.shichang;
	}

	public void setShichang(Integer shichang) {
		this.shichang = shichang;
	}

	public Integer getPinci() {
		return this.pinci;
	}

	public void setPinci(Integer pinci) {
		this.pinci = pinci;
	}

	public Date getKaishishijian() {
		return this.kaishishijian;
	}

	public void setKaishishijian(Date kaishishijian) {
		this.kaishishijian = kaishishijian;
	}

	public Date getJieshushijian() {
		return this.jieshushijian;
	}

	public void setJieshushijian(Date jieshushijian) {
		this.jieshushijian = jieshushijian;
	}

	public Integer getShuliang() {
		return this.shuliang;
	}

	public void setShuliang(Integer shuliang) {
		this.shuliang = shuliang;
	}

	public Double getKanlijiaxiaoji() {
		return this.kanlijiaxiaoji;
	}

	public void setKanlijiaxiaoji(Double kanlijiaxiaoji) {
		this.kanlijiaxiaoji = kanlijiaxiaoji;
	}

	public String getShiduan() {
		return this.shiduan;
	}

	public void setShiduan(String shiduan) {
		this.shiduan = shiduan;
	}

	public Date getYewuTimestamp() {
		return this.yewuTimestamp;
	}

	public void setYewuTimestamp(Date yewuTimestamp) {
		this.yewuTimestamp = yewuTimestamp;
	}

	public Date getCreateTimestamp() {
		return this.createTimestamp;
	}

	public void setCreateTimestamp(Date createTimestamp) {
		this.createTimestamp = createTimestamp;
	}

	public Date getAlterTimestamp() {
		return this.alterTimestamp;
	}

	public void setAlterTimestamp(Date alterTimestamp) {
		this.alterTimestamp = alterTimestamp;
	}

	public Date getAuditTimestamp() {
		return this.auditTimestamp;
	}

	public void setAuditTimestamp(Date auditTimestamp) {
		this.auditTimestamp = auditTimestamp;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getGuanggaoneirong() {
		return guanggaoneirong;
	}

	public void setGuanggaoneirong(String guanggaoneirong) {
		this.guanggaoneirong = guanggaoneirong;
	}

	public Industry getIndustry() {
		return industry;
	}

	public void setIndustry(Industry industry) {
		this.industry = industry;
	}

	@Override
	public String toString() {
		return "Yewu [yewuId=" + yewuId + ", yewuyuanByAuditYwyId="
				+ yewuyuanByAuditYwyId + ", yewuyuanByCreateYwyId="
				+ yewuyuanByCreateYwyId + ", yewuyuanByAlterYwyId="
				+ yewuyuanByAlterYwyId + ", renkanshu=" + renkanshu
				+ ", yewuyuan=" + yewuyuan + ", led=" + led + ", kanhu="
				+ kanhu + ", guanggaoneirong=" + guanggaoneirong
				+ ", industry=" + industry + ", leixing=" + leixing
				+ ", shichang=" + shichang + ", pinci=" + pinci
				+ ", kaishishijian=" + kaishishijian + ", jieshushijian="
				+ jieshushijian + ", shuliang=" + shuliang
				+ ", kanlijiaxiaoji=" + kanlijiaxiaoji + ", shiduan=" + shiduan
				+ ", yewuTimestamp=" + yewuTimestamp + ", createTimestamp="
				+ createTimestamp + ", alterTimestamp=" + alterTimestamp
				+ ", auditTimestamp=" + auditTimestamp + ", state=" + state
				+ "]";
	}
	
	
}