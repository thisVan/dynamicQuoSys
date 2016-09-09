package com.nfledmedia.dynamicQuoSys.entity;

/**
 * Industry entity. @author MyEclipse Persistence Tools
 */

public class Industry implements java.io.Serializable {

	// Fields

	private Short industryId;
	private Industryclassify industryclassify;
	private String industryDesc;
	

	// Constructors

	/** default constructor */
	public Industry() {
	}

	/** minimal constructor */
	public Industry(Industryclassify industryclassify) {
		this.industryclassify = industryclassify;
	}

	/** full constructor */
	public Industry(Industryclassify industryclassify, String industryDesc) {
		this.industryclassify = industryclassify;
		this.industryDesc = industryDesc;
	
	}

	// Property accessors

	public Short getIndustryId() {
		return this.industryId;
	}

	public void setIndustryId(Short industryId) {
		this.industryId = industryId;
	}

	public Industryclassify getIndustryclassify() {
		return this.industryclassify;
	}

	public void setIndustryclassify(Industryclassify industryclassify) {
		this.industryclassify = industryclassify;
	}

	public String getIndustryDesc() {
		return this.industryDesc;
	}

	public void setIndustryDesc(String industryDesc) {
		this.industryDesc = industryDesc;
	}

}