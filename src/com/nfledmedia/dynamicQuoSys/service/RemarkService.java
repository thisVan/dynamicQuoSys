package com.nfledmedia.dynamicQuoSys.service;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nfledmedia.dynamicQuoSys.dao.BumenDAO;
import com.nfledmedia.dynamicQuoSys.dao.RemarkDAO;
import com.nfledmedia.dynamicQuoSys.entity.Remark;

@Entity
@Transactional
@Service("remarkService")
public class RemarkService {
	/**
	 * @author rthtr
	 */
	@ManyToOne
	private RemarkDAO remarkDAO;

	public RemarkDAO getRemarkDAO() {
		return remarkDAO;
	}

	public void setRemarkDAO(RemarkDAO remarkDAO) {
		this.remarkDAO = remarkDAO;
	}
	
	public Remark loadRemarkByID(Integer remarkId){
		Remark remark=null;
		remark=remarkDAO.findById(remarkId);
		return remark;
	}
	
//	public List getAllDeparments(){
//		System.out.println("###############调用BumenService中的getAllDeparments函数");
//		return bumenDAO.getAllDepartments();
//	}
//	
//	public void setBumenDAO(BumenDAO bumenDAO) {
//		this.bumenDAO = bumenDAO;
//	}
	

	
}


