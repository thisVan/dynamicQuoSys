package com.nfledmedia.dynamicQuoSys.entity;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Role entity. @author MyEclipse Persistence Tools
 */

public class Role implements java.io.Serializable {

	// Fields

	private Short id;
	private Long competence;
	private String name;
	private List resources = new ArrayList(0);

	// Constructors

	/** default constructor */
	public Role() {
	}

	/** minimal constructor */
	public Role(Long competence, String name) {
		this.competence = competence;
		this.name = name;
	}
	
	/** full constructor */
    public Role(long competence, String name, List resources) {
        this.competence = competence;
        this.name = name;
        this.resources = resources;
    }
	// Property accessors

	public Short getId() {
		return this.id;
	}

	public void setId(Short id) {
		this.id = id;
	}

	public Long getCompetence() {
		return this.competence;
	}

	public void setCompetence(Long competence) {
		this.competence = competence;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List getResources() {
        return this.resources;
    }
    
    public void setResources(List resources) {
        this.resources = resources;
    }

}