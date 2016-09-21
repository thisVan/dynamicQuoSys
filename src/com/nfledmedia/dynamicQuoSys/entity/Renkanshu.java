package com.nfledmedia.dynamicQuoSys.entity;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Renkanshu entity. @author MyEclipse Persistence Tools
 */

public class Renkanshu implements java.io.Serializable {

	// Fields

	private String renkanbianhao;
	private Industry industry;
	private Date qiandingriqi;
	private Integer ywyId;
	private String hetongbianhao;
	private String baogaobianhao;
	private String guangaokanhu;
	private String guanggaodailigongsi;
	private String pinpai;
	private String guanggaoneirong;
	private String gaojianlaiyuan;
	private String gaojianleibie;
	private Double kanlizongjia;
	private Double zhekou;
	private Double dingjin;
	private Integer fenqi;
	private Timestamp rksTimestamp;
	private String renkanshubeizhu;
	private String state;
	private Set fukuans = new HashSet(0);
	private Set yewus = new HashSet(0);

	// Constructors

	/** default constructor */
	public Renkanshu() {
	}

	/** minimal constructor */
	public Renkanshu(String renkanbianhao, Industry industry, Date qiandingriqi,
			Integer ywyId, String guanggaoneirong, String gaojianlaiyuan,
			String gaojianleibie, Double kanlizongjia, Double zhekou,
			Integer fenqi) {
		this.renkanbianhao = renkanbianhao;
		this.industry = industry;
		this.qiandingriqi = qiandingriqi;
		this.ywyId = ywyId;
		this.guanggaoneirong = guanggaoneirong;
		this.gaojianlaiyuan = gaojianlaiyuan;
		this.gaojianleibie = gaojianleibie;
		this.kanlizongjia = kanlizongjia;
		this.zhekou = zhekou;
		this.fenqi = fenqi;
	}

	/** full constructor */
	public Renkanshu(String renkanbianhao, Industry industry, Date qiandingriqi,
			Integer ywyId, String hetongbianhao, String baogaobianhao,
			String guangaokanhu, String guanggaodailigongsi, String pinpai,
			String guanggaoneirong, String gaojianlaiyuan,
			String gaojianleibie, Double kanlizongjia, Double zhekou,
			Double dingjin, Integer fenqi, Timestamp rksTimestamp, Set fukuans,
			Set yewus) {
		this.renkanbianhao = renkanbianhao;
		this.industry = industry;
		this.qiandingriqi = qiandingriqi;
		this.ywyId = ywyId;
		this.hetongbianhao = hetongbianhao;
		this.baogaobianhao = baogaobianhao;
		this.guangaokanhu = guangaokanhu;
		this.guanggaodailigongsi = guanggaodailigongsi;
		this.pinpai = pinpai;
		this.guanggaoneirong = guanggaoneirong;
		this.gaojianlaiyuan = gaojianlaiyuan;
		this.gaojianleibie = gaojianleibie;
		this.kanlizongjia = kanlizongjia;
		this.zhekou = zhekou;
		this.dingjin = dingjin;
		this.fenqi = fenqi;
		this.rksTimestamp = rksTimestamp;
		this.renkanshubeizhu = renkanshubeizhu;
		this.fukuans = fukuans;
		this.yewus = yewus;
	}

	// Property accessors

	public String getRenkanbianhao() {
		return this.renkanbianhao;
	}

	public void setRenkanbianhao(String renkanbianhao) {
		this.renkanbianhao = renkanbianhao;
	}

	public Industry getIndustry() {
		return this.industry;
	}

	public void setIndustry(Industry industry) {
		try{
			this.industry = industry;
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}

	public Date getQiandingriqi() {
		return this.qiandingriqi;
	}

	public void setQiandingriqi(Date qiandingriqi) {
		this.qiandingriqi = qiandingriqi;
	}

	public Integer getYwyId() {
		return this.ywyId;
	}

	public void setYwyId(Integer ywyId) {
		this.ywyId = ywyId;
	}

	public String getHetongbianhao() {
		return this.hetongbianhao;
	}

	public void setHetongbianhao(String hetongbianhao) {
		this.hetongbianhao = hetongbianhao;
	}

	public String getBaogaobianhao() {
		return this.baogaobianhao;
	}

	public void setBaogaobianhao(String baogaobianhao) {
		this.baogaobianhao = baogaobianhao;
	}

	public String getGuangaokanhu() {
		return this.guangaokanhu;
	}

	public void setGuangaokanhu(String guangaokanhu) {
		this.guangaokanhu = guangaokanhu;
	}

	public String getGuanggaodailigongsi() {
		return this.guanggaodailigongsi;
	}

	public void setGuanggaodailigongsi(String guanggaodailigongsi) {
		this.guanggaodailigongsi = guanggaodailigongsi;
	}

	public String getPinpai() {
		return this.pinpai;
	}

	public void setPinpai(String pinpai) {
		this.pinpai = pinpai;
	}

	public String getGuanggaoneirong() {
		return this.guanggaoneirong;
	}

	public void setGuanggaoneirong(String guanggaoneirong) {
		this.guanggaoneirong = guanggaoneirong;
	}

	public String getGaojianlaiyuan() {
		return this.gaojianlaiyuan;
	}

	public void setGaojianlaiyuan(String gaojianlaiyuan) {
		this.gaojianlaiyuan = gaojianlaiyuan;
	}

	public String getGaojianleibie() {
		return this.gaojianleibie;
	}

	public void setGaojianleibie(String gaojianleibie) {
		this.gaojianleibie = gaojianleibie;
	}

	public Double getKanlizongjia() {
		return this.kanlizongjia;
	}

	public void setKanlizongjia(Double kanlizongjia) {
		this.kanlizongjia = kanlizongjia;
	}

	public Double getZhekou() {
		return this.zhekou;
	}

	public void setZhekou(Double zhekou) {
		this.zhekou = zhekou;
	}

	public Double getDingjin() {
		return this.dingjin;
	}

	public void setDingjin(Double dingjin) {
		this.dingjin = dingjin;
	}

	public Integer getFenqi() {
		return this.fenqi;
	}

	public void setFenqi(Integer fenqi) {
		this.fenqi = fenqi;
	}

	public Timestamp getRksTimestamp() {
		return this.rksTimestamp;
	}

	public void setRksTimestamp(Timestamp rksTimestamp) {
		this.rksTimestamp = rksTimestamp;
	}
	
	

	public String getRenkanshubeizhu() {
		return renkanshubeizhu;
	}

	public void setRenkanshubeizhu(String renkanshubeizhu) {
		this.renkanshubeizhu = renkanshubeizhu;
	}

	public Set getFukuans() {
		return this.fukuans;
	}

	public void setFukuans(Set fukuans) {
		this.fukuans = fukuans;
	}

	public Set getYewus() {
		return this.yewus;
	}

	public void setYewus(Set yewus) {
		this.yewus = yewus;
	}
	
	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

}
