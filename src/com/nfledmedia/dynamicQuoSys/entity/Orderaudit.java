package com.nfledmedia.dynamicQuoSys.entity;

import java.util.Date;

import com.nfledmedia.dynamicQuoSys.cons.OrderAuditOperType;

/**
 * Orderaudit entity. @author MyEclipse Persistence Tools
 */

public class Orderaudit implements java.io.Serializable {

	// Fields

	private Integer id;
	private Yewuyuan yewuyuanByOperYwyId;
	private Yewuyuan yewuyuanByYwyId;
	private String renkanbianhao;
	private Led led;
	private Integer yewuId;
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
	private Date operTimestamp;
	private String operType;
	private String orderState;
	private String operReason;

	// Constructors

	/** default constructor */
	public Orderaudit() {
	}

	/** minimal constructor */
	public Orderaudit(Integer id, Yewuyuan yewuyuanByOperYwyId,
			Date operTimestamp, String operType) {
		this.id = id;
		this.yewuyuanByOperYwyId = yewuyuanByOperYwyId;
		this.operTimestamp = operTimestamp;
		this.operType = operType;
	}

	/** full constructor */
	public Orderaudit(Integer id, Yewuyuan yewuyuanByOperYwyId,String renkanbianhao,
			Yewuyuan yewuyuanByYwyId, Led led, Integer yewuId, String kanhu,
			String guanggaoneirong,Industry industry,String leixing, Integer shichang, Integer pinci,
			Date kaishishijian, Date jieshushijian, Integer shuliang,
			Double kanlijiaxiaoji, String shiduan, Date operTimestamp,
			String operType,String orderState,String operReason) {
		this.id = id;
		this.yewuyuanByOperYwyId = yewuyuanByOperYwyId;
		this.yewuyuanByYwyId = yewuyuanByYwyId;
		this.renkanbianhao=renkanbianhao;
		this.led = led;
		this.yewuId = yewuId;
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
		this.operTimestamp = operTimestamp;
		this.operType = operType;
		this.orderState=orderState;
		this.operReason=operReason;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Yewuyuan getYewuyuanByOperYwyId() {
		return this.yewuyuanByOperYwyId;
	}

	public void setYewuyuanByOperYwyId(Yewuyuan yewuyuanByOperYwyId) {
		this.yewuyuanByOperYwyId = yewuyuanByOperYwyId;
	}

	public Yewuyuan getYewuyuanByYwyId() {
		return this.yewuyuanByYwyId;
	}

	public void setYewuyuanByYwyId(Yewuyuan yewuyuanByYwyId) {
		this.yewuyuanByYwyId = yewuyuanByYwyId;
	}

	public Led getLed() {
		return this.led;
	}

	public void setLed(Led led) {
		this.led = led;
	}

	public Integer getYewuId() {
		return this.yewuId;
	}

	public void setYewuId(Integer yewuId) {
		this.yewuId = yewuId;
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

	public Date getOperTimestamp() {
		return this.operTimestamp;
	}

	public void setOperTimestamp(Date operTimestamp) {
		this.operTimestamp = operTimestamp;
	}

	public String getOperType() {
		return this.operType;
	}

	public void setOperType(String operType) {
		this.operType = operType;
	}

	public String getRenkanbianhao() {
		return renkanbianhao;
	}

	public void setRenkanbianhao(String renkanbianhao) {
		this.renkanbianhao = renkanbianhao;
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

	public String getOrderState() {
		return orderState;
	}

	public void setOrderState(String orderState) {
		this.orderState = orderState;
	}

	public String getOperReason() {
		return operReason;
	}

	public void setOperReason(String operReason) {
		this.operReason = operReason;
	}
	
	
	
}