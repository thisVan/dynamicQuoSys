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
import com.nfledmedia.dynamicQuoSys.dao.RoleDAO;

@Entity
@Transactional
@Service("roleService")
public class RoleService {
	/**
	 * @author rthtr
	 */
	@ManyToOne
	private RoleDAO roleDAO;
	
	public List getAllRoles(){
		return roleDAO.getAllRoles();
	}
	
	public void setRoleDAO(RoleDAO roleDAO) {
		this.roleDAO = roleDAO;
	}

	
}


