package com.nfledmedia.dynamicQuoSys.service;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nfledmedia.dynamicQuoSys.cons.CommonConstant;
import com.nfledmedia.dynamicQuoSys.cons.UserState;
import com.nfledmedia.dynamicQuoSys.dao.BumenDAO;
import com.nfledmedia.dynamicQuoSys.dao.RoleDAO;
import com.nfledmedia.dynamicQuoSys.dao.YewuyuanDAO;
import com.nfledmedia.dynamicQuoSys.dao.YwymubiaoDAO;
import com.nfledmedia.dynamicQuoSys.entity.Bumen;
import com.nfledmedia.dynamicQuoSys.entity.Role;
import com.nfledmedia.dynamicQuoSys.entity.Yewuyuan;
import com.nfledmedia.dynamicQuoSys.util.Page;

/**       
 * 项目名称：dynamicQuoSys 
 * 类全名:com.nfledmedia.dynamicQuoSys.service.YewuyuanService 
 * 类描述：  
 * 创建人：Van@nfledmedia 
 * 创建时间：2016年6月22日 上午10:09:25 
 * 修改备注： 
 * @version  jdk1.7 
 * 
 * Copyright (c) 2016, bolven@qq.com All Rights Reserved.     
 */
@Entity
@Transactional
@Service("yewuyuanService")
public class YewuyuanService {
	//注入userDao
	@ManyToOne
	private YewuyuanDAO yewuyuanDAO;
	@ManyToOne
	private RoleDAO roleDAO;
	@ManyToOne
	private BumenDAO bumenDAO;
	
	public void setRoleDAO(RoleDAO roleDAO) {
		this.roleDAO = roleDAO;
	}

	public void setBumenDAO(BumenDAO bumenDAO) {
		this.bumenDAO = bumenDAO;
	}

	public void setYewuyuanDAO(YewuyuanDAO yewuyuanDAO) {
		this.yewuyuanDAO = yewuyuanDAO;
	}

	public Yewuyuan loadUserByID(Integer userID) {
		System.out.println("###########  yewuyuanServiceUserId:"+userID);
		Yewuyuan user=yewuyuanDAO.findById(userID);
		return user;
	}

	public Yewuyuan loadUserByUsername(String name) {
		Yewuyuan user= yewuyuanDAO.getYewuyuanByAccount(name);
		return (Yewuyuan) user;
	}
	
	/**
	 * 
	 * loadYewuyuanByBumenid: 根据部门加载业务员
	 * TODO (业务员的二级联动). 
	 * @author Wu. Van 
	 * @param name
	 * @return 
	 * @since JDK 1.6
	 */
	public List<Yewuyuan> loadYewuyuanByBumenid(Integer bumenid) {
		List<Yewuyuan> sureyewuyuanList = new ArrayList<Yewuyuan>();
		List<?> lst = yewuyuanDAO.findAll();
		for (Iterator<?> iterator = lst.iterator(); iterator.hasNext();) {
			Yewuyuan yewuyuan = (Yewuyuan) iterator.next();
			if(bumenid.equals(yewuyuan.getBumen())){
				sureyewuyuanList.add((Yewuyuan) iterator.next());
			}
		}
		return sureyewuyuanList;
	}
	
	public void addUserInfo(Yewuyuan yewuyuan){		
		yewuyuan.setPassword(CommonConstant.INITIAL_PASSWORD);	
		if(yewuyuan.getRole().getId() == null){
			yewuyuan.setRole(null);
		}
		else{
			Role role = roleDAO.findById(yewuyuan.getRole().getId());
			yewuyuan.setRole(role);
		}
		if(yewuyuan.getBumen().getBmId() == null){
			yewuyuan.setBumen(null);
		}
		else{
			Bumen bumen = bumenDAO.findById(yewuyuan.getBumen().getBmId());
			yewuyuan.setBumen(bumen);
		}
		Timestamp timestamp = new Timestamp(System.currentTimeMillis()); 
		yewuyuan.setYwyTimestamp(timestamp);
		yewuyuan.setState(UserState.NORMAL);
		System.out.println("$$$$$$$$$$$$$$$$$$$$$$$调用YewuyuanService中的addUserInfo--setState");
		yewuyuanDAO.save(yewuyuan);
	}
	
	public void updateUserInfo(Yewuyuan yewuyuan){		
		Yewuyuan ywyOld=yewuyuanDAO.findById(yewuyuan.getYwyId());
		
		System.out.println("------------------进入YewuyuanService的updateUserInfo--------------");
		
		if(yewuyuan.getRole().getId() == null){
			ywyOld.setRole(null);
		}
		else{
			Role role = roleDAO.findById(yewuyuan.getRole().getId());
			ywyOld.setRole(role);
		}
		if(yewuyuan.getBumen().getBmId() == null){
			ywyOld.setBumen(null);
		}
		else{
			Bumen bumen = bumenDAO.findById(yewuyuan.getBumen().getBmId());
			ywyOld.setBumen(bumen);
		}
		System.out.println("调用YewuyuanService中的updateUserInfo,调用yewuyuanDAO.merge(yewuyuan)前");
		yewuyuanDAO.merge(ywyOld);
		System.out.println("调用YewuyuanService中的updateUserInfo，调用yewuyuanDAO.merge(yewuyuan)后");
	}
	
	 public Page getYewuyuanList(String sidx,String sord,int pageNo,int pageSize){
	    	System.out.println("???????????yewuService:getYewuList:sidx:"+sidx);
			return yewuyuanDAO.getYewuyuanList(sidx, sord, pageNo, pageSize);
	}
	public Page getYewuyuanListByKeyword(String keyword,String sidx,String sord,int pageNo,int pageSize){
			return yewuyuanDAO.getYewuyuanListByKeyword(keyword, sidx, sord, pageNo, pageSize);
	}
	
	public List getAllDepartment(){
		return bumenDAO.getAllDepartments();
	}
    public List getAllRole(){
		return roleDAO.getAllRoles();
	}

}


