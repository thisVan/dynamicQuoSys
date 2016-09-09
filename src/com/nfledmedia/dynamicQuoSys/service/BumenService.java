package com.nfledmedia.dynamicQuoSys.service;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nfledmedia.dynamicQuoSys.dao.BumenDAO;
import com.nfledmedia.dynamicQuoSys.entity.Bumen;

@Entity
@Transactional
@Service("bumenService")
public class BumenService {
	/**
	 * @author rthtr
	 */
	@ManyToOne
	private BumenDAO bumenDAO;
	
	public List getAllDeparments(){
		System.out.println("###############调用BumenService中的getAllDeparments函数");
		return bumenDAO.getAllDepartments();
	}
	public List getAvailableDepts() {
		System.out.println("列出所有可选部门:"+bumenDAO.getAvailableDepartments().size());
		return bumenDAO.getAvailableDepartments();
		
	}
	
	/**
	 * 
	 * findBumenById: 根据id获得bumen 
	 * TODO 填充业务员二级选择列表
	 * @author 广渊 
	 * @param id
	 * @return 
	 * @since JDK 1.6
	 */
	public Bumen findBumenById(Integer id) {
		
		return bumenDAO.findById(id);
		
	}
	public void setBumenDAO(BumenDAO bumenDAO) {
		this.bumenDAO = bumenDAO;
	}
	
}


