package com.nfledmedia.dynamicQuoSys.service;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nfledmedia.dynamicQuoSys.dao.OrderauditDAO;
import com.nfledmedia.dynamicQuoSys.entity.Orderaudit;

@Entity
@Transactional
@Service("orderauditService")
public class OrderauditService {
	/**
	 * @author rthtr
	 */
	@ManyToOne
	private OrderauditDAO orderauditDAO;


	public Orderaudit loadOrderauditByID(Integer orderauditId){
		Orderaudit orderaudit=null;
		System.out.println("----------------进入OrderauditService,调用loadOrderauditByID----------------------");
		try{
			orderaudit=orderauditDAO.findById(orderauditId);
		}catch(Exception e){
			e.printStackTrace();
		}
		System.out.println("OrderauditService获取orderaudit："+orderaudit.getId());
		return orderaudit;
	}
	
	public List getOrderIdByRenkanbianhao(String renkanbianhao){
		List list=null;
		System.out.println("----------------进入OrderauditService,调用loadOrderauditByID----------------------");
		try{
			list=orderauditDAO.getOrderIdByRenkanbianhao(renkanbianhao);
		}catch(Exception e){
			e.printStackTrace();
		}
		System.out.println("OrderauditService获取list.size："+list.size());
		return list;
	}
	
	public List getRenkanshubianhaoForAudit(){
		List list=null;
		System.out.println("----------------进入OrderauditService,调用getRenkanshubianhaoForAudit----------------------");
		try{
			list=orderauditDAO.getRenkanshubianhaoForAudit();
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}



	public OrderauditDAO getOrderauditDAO() {
		return orderauditDAO;
	}


	public void setOrderauditDAO(OrderauditDAO orderauditDAO) {
		this.orderauditDAO = orderauditDAO;
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


