package com.nfledmedia.dynamicQuoSys.service;

import javax.persistence.Entity;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Service;

import com.nfledmedia.dynamicQuoSys.dao.RenkanshuDAO;
import com.nfledmedia.dynamicQuoSys.entity.Orderaudit;
import com.nfledmedia.dynamicQuoSys.entity.Renkanshu;

/**       
 * 项目名称：dynamicQuoSys 
 * 类全名:com.nfledmedia.dynamicQuoSys.service.RenkanshuService 
 * 类描述：  
 * 创建人：Van@nfledmedia 
 * 创建时间：2016年6月12日 上午10:40:29 
 * 修改备注： 
 * @version  jdk1.7 
 * 
 * Copyright (c) 2016, bolven@qq.com All Rights Reserved.     
 */
@Entity
@Service("renkanshuService")
public class RenkanshuService {

	//注入renkanshuDAO	
	private RenkanshuDAO renkanshuDAO;
	

	public void setRenkanshuDAO(RenkanshuDAO renkanshuDAO) {
		this.renkanshuDAO = renkanshuDAO;
	}

	//添加记录（保存项目）
    public void saveRenkanshu(Renkanshu renkanshu){
    	renkanshuDAO.save(renkanshu);
    }
    
    /**
	 * 
	 * validateRenkanshu: 校验认刊书编号. <br/> 
	 * TODO(这里描述这个方法适用条件 – 可选).<br/> 
	 * @author 广渊 
	 * @param renkanshu
	 * @return 
	 * @since JDK 1.6
	 */
	public boolean validateRenkanshu(Renkanshu renkanshu) {
		int resultsize = renkanshuDAO.findByRenkanbianhao(renkanshu.getRenkanbianhao()).size();
		System.out.println("11111111校验认刊书");
    	if(resultsize > 0 ){
    		String erromessage = "提交失败，认刊书编号重复，请修改后重新提交！";
			ServletActionContext.getRequest().getSession()
					.setAttribute("erromessage", erromessage);
			System.out.println("校验认刊书："+erromessage);
    		return false;
    	}
    	return true;
	}
	
	public Renkanshu loadRenkanshuByID(String renkanshuId){
		Renkanshu renkanshu=null;
		renkanshu=renkanshuDAO.findById(renkanshuId);
		return renkanshu;
	}
    
}


