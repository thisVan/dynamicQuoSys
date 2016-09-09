package com.nfledmedia.dynamicQuoSys.entity;

import java.sql.Time;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Led entity. @author MyEclipse Persistence Tools
 */

public class Led implements java.io.Serializable {

	// Fields

	private String ledId;
	private String ledDaima;
	private String ledName;
	private String ledWeizhi;
	private Integer ledBofangshichang;
	private Time ledBofangkaishishijian;
	private Time ledBofangjieshushijian;
	private Integer ledJianxieshichang;
	private Time ledJianxiestart;
	private Time ledJianxieend;
	private Float ledChangdu;
	private Float ledKuangdu;
	private Float ledMianji;
	private String ledFenbianlv;
	private String ledLeixing;
	private Integer ledKanliprice;
	private String ledSuozaiquyu;
	private String ledChengshi;
	private String ledQuxian;
	private String state;
	private Timestamp ledTimestamp;
	private Set yewus = new HashSet(0);

	// Constructors

	/** default constructor */
	public Led() {
	}

	/** minimal constructor */
	public Led(String ledId, String ledName, String ledWeizhi,
			Integer ledBofangshichang, Time ledBofangkaishishijian,
			Time ledBofangjieshushijian, Float ledChangdu, Float ledKuangdu,
			String ledFenbianlv) {
		this.ledId = ledId;
		this.ledName = ledName;
		this.ledWeizhi = ledWeizhi;
		this.ledBofangshichang = ledBofangshichang;
		this.ledBofangkaishishijian = ledBofangkaishishijian;
		this.ledBofangjieshushijian = ledBofangjieshushijian;
		this.ledChangdu = ledChangdu;
		this.ledKuangdu = ledKuangdu;
		this.ledFenbianlv = ledFenbianlv;
	}

	/** full constructor */
	public Led(String ledId, String ledDaima, String ledName,
			String ledWeizhi, Integer ledBofangshichang,
			Time ledBofangkaishishijian, Time ledBofangjieshushijian,
			Integer ledJianxieshichang, Time ledJianxiestart,
			Time ledJianxieend, Float ledChangdu, Float ledKuangdu,
			Float ledMianji, String ledFenbianlv, String ledLeixing,
			Integer ledKanliprice, String ledSuozaiquyu, String ledChengshi,
			String ledQuxian, Timestamp ledTimestamp, Set yewus,String state) {
		this.ledId = ledId;
		this.ledDaima = ledDaima;
		this.ledName = ledName;
		this.ledWeizhi = ledWeizhi;
		this.ledBofangshichang = ledBofangshichang;
		this.ledBofangkaishishijian = ledBofangkaishishijian;
		this.ledBofangjieshushijian = ledBofangjieshushijian;
		this.ledJianxieshichang = ledJianxieshichang;
		this.ledJianxiestart = ledJianxiestart;
		this.ledJianxieend = ledJianxieend;
		this.ledChangdu = ledChangdu;
		this.ledKuangdu = ledKuangdu;
		this.ledMianji = ledMianji;
		this.ledFenbianlv = ledFenbianlv;
		this.ledLeixing = ledLeixing;
		this.ledKanliprice = ledKanliprice;
		this.ledSuozaiquyu = ledSuozaiquyu;
		this.ledChengshi = ledChengshi;
		this.ledQuxian = ledQuxian;
		this.ledTimestamp = ledTimestamp;
		this.yewus = yewus;
		this.state=state;
	}

	// Property accessors

	public String getLedId() {
		return this.ledId;
	}

	public void setLedId(String ledId) {
		this.ledId = ledId;
	}

	public String getLedDaima() {
		return this.ledDaima;
	}

	public void setLedDaima(String ledDaima) {
		this.ledDaima = ledDaima;
	}

	public String getLedName() {
		return this.ledName;
	}

	public void setLedName(String ledName) {
		this.ledName = ledName;
	}

	public String getLedWeizhi() {
		return this.ledWeizhi;
	}

	public void setLedWeizhi(String ledWeizhi) {
		this.ledWeizhi = ledWeizhi;
	}

	public Integer getLedBofangshichang() {
		return this.ledBofangshichang;
	}

	public void setLedBofangshichang(Integer ledBofangshichang) {
		this.ledBofangshichang = ledBofangshichang;
	}

	public Time getLedBofangkaishishijian() {
		return this.ledBofangkaishishijian;
	}

	public void setLedBofangkaishishijian(Time ledBofangkaishishijian) {
		this.ledBofangkaishishijian = ledBofangkaishishijian;
	}

	public Time getLedBofangjieshushijian() {
		return this.ledBofangjieshushijian;
	}

	public void setLedBofangjieshushijian(Time ledBofangjieshushijian) {
		this.ledBofangjieshushijian = ledBofangjieshushijian;
	}

	public Integer getLedJianxieshichang() {
		return this.ledJianxieshichang;
	}

	public void setLedJianxieshichang(Integer ledJianxieshichang) {
		this.ledJianxieshichang = ledJianxieshichang;
	}

	public Time getLedJianxiestart() {
		return this.ledJianxiestart;
	}

	public void setLedJianxiestart(Time ledJianxiestart) {
		this.ledJianxiestart = ledJianxiestart;
	}

	public Time getLedJianxieend() {
		return this.ledJianxieend;
	}

	public void setLedJianxieend(Time ledJianxieend) {
		this.ledJianxieend = ledJianxieend;
	}

	public Float getLedChangdu() {
		return this.ledChangdu;
	}

	public void setLedChangdu(Float ledChangdu) {
		this.ledChangdu = ledChangdu;
	}

	public Float getLedKuangdu() {
		return this.ledKuangdu;
	}

	public void setLedKuangdu(Float ledKuangdu) {
		this.ledKuangdu = ledKuangdu;
	}

	public Float getLedMianji() {
		return this.ledMianji;
	}

	public void setLedMianji(Float ledMianji) {
		this.ledMianji = ledMianji;
	}

	public String getLedFenbianlv() {
		return this.ledFenbianlv;
	}

	public void setLedFenbianlv(String ledFenbianlv) {
		this.ledFenbianlv = ledFenbianlv;
	}

	public String getLedLeixing() {
		return this.ledLeixing;
	}

	public void setLedLeixing(String ledLeixing) {
		this.ledLeixing = ledLeixing;
	}

	public Integer getLedKanliprice() {
		return this.ledKanliprice;
	}

	public void setLedKanliprice(Integer ledKanliprice) {
		this.ledKanliprice = ledKanliprice;
	}

	public String getLedSuozaiquyu() {
		return this.ledSuozaiquyu;
	}

	public void setLedSuozaiquyu(String ledSuozaiquyu) {
		this.ledSuozaiquyu = ledSuozaiquyu;
	}

	public String getLedChengshi() {
		return this.ledChengshi;
	}

	public void setLedChengshi(String ledChengshi) {
		this.ledChengshi = ledChengshi;
	}

	public String getLedQuxian() {
		return this.ledQuxian;
	}

	public void setLedQuxian(String ledQuxian) {
		this.ledQuxian = ledQuxian;
	}

	public Timestamp getLedTimestamp() {
		return this.ledTimestamp;
	}

	public void setLedTimestamp(Timestamp ledTimestamp) {
		this.ledTimestamp = ledTimestamp;
	}

	public Set getYewus() {
		return this.yewus;
	}

	public void setYewus(Set yewus) {
		this.yewus = yewus;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
	

}