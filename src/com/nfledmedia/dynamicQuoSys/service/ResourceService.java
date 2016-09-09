package com.nfledmedia.dynamicQuoSys.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nfledmedia.dynamicQuoSys.dao.BumenDAO;
import com.nfledmedia.dynamicQuoSys.dao.ResourceDAO;
import com.nfledmedia.dynamicQuoSys.dao.RoleDAO;

@Entity
@Transactional
@Service("resourceService")
public class ResourceService {
	/**
	 * @author rthtr
	 */
	@ManyToOne
	private ResourceDAO resourceDAO;
	
	public List getAllResource(){
		return resourceDAO.findAll();
	}

	public ResourceDAO getResourceDAO() {
		return resourceDAO;
	}

	public void setResourceDAO(ResourceDAO resourceDAO) {
		this.resourceDAO = resourceDAO;
	}
	
	
	
}


