package com.nfledmedia.dynamicQuoSys.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nfledmedia.dynamicQuoSys.dao.YewuyuanDAO;
import com.nfledmedia.dynamicQuoSys.entity.Yewuyuan;
import com.opensymphony.xwork2.ActionContext;


/**       
 * 项目名称：dynamicQuoSys 
 * 类全名:com.nfledmedia.dynamicQuoSys.service.UserService 
 * 类描述：  
 * 创建人：Van@nfledmedia 
 * 创建时间：2016年6月13日 下午1:11:08 
 * 修改备注： 
 * @version  jdk1.7 
 * 
 * Copyright (c) 2016, bolven@qq.com All Rights Reserved.     
 */
@Entity
@Transactional
@Service("userService")
public class UserService {

	//注入userDao
	@ManyToOne
	private YewuyuanDAO yewuyuanDAO;
	
	public void setYewuyuanDAO(YewuyuanDAO yewuyuanDAO) {
		this.yewuyuanDAO = yewuyuanDAO;
	}

	/**
	 * 
	 * usersLogin: 实现用户的登录验证的具体方法 
	 * TODO (这里描述这个方法适用条件 – 可选). 
	 * @author Wu. Van 
	 * @param user
	 * @return 
	 * @since JDK 1.6
	 */
	@SuppressWarnings("unchecked")
	public boolean usersLogin(Yewuyuan yewuyuan) {
		yewuyuanDAO.getHibernateTemplate();
		List<Yewuyuan> list=new ArrayList<Yewuyuan>();

		try {
			
			//list = userDao.findAll();

			list = yewuyuanDAO.findByUsername(yewuyuan.getUsername());
		} catch (Exception e) {
			e.printStackTrace();

			return false;
		}
		
		if (list.size()>0 && loginCheck(list,yewuyuan)) {
			System.out.println("yes，login successfully");
			return true;
			
		} else {
			System.out.println("no， login failed");
			return false;
		}
		
		
	}
	
	private boolean loginCheck(List<Yewuyuan> list,Yewuyuan yewuyuan){
		
			for(int i =0;i<list.size();i++){
				if(list.get(i).getUsername().equals(yewuyuan.getUsername()) && list.get(i).getPassword().equals(yewuyuan.getPassword())){
					return true;
				}
			}
			return false;
	}
	public int updatePassword(Integer id,String oldPassword,String newPassword,String repeatedNewPassword){
		if(id == null){
			return 1;
		}
		Yewuyuan user = yewuyuanDAO.findById(id);;
		if(!user.getPassword().equals(oldPassword))
			return 2;
		if(!newPassword.equals(repeatedNewPassword))
			return 3;
		user.setPassword(newPassword);
		yewuyuanDAO.save(user);
		return 0;
	}
}


