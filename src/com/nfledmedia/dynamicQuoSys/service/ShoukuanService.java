package com.nfledmedia.dynamicQuoSys.service;

import java.util.List;

import javax.persistence.Entity;

import org.springframework.stereotype.Service;

import com.nfledmedia.dynamicQuoSys.dao.FukuanDAO;
import com.nfledmedia.dynamicQuoSys.dao.ShoukuanDAO;
import com.nfledmedia.dynamicQuoSys.entity.Fukuan;
import com.nfledmedia.dynamicQuoSys.entity.Shoukuan;

/**       
 * 项目名称：dynamicQuoSys 
 * 类全名:com.nfledmedia.dynamicQuoSys.service.ShoukuanService 
 * 类描述：  
 * 创建人：Van@nfledmedia 
 * 创建时间：2016年7月8日 下午3:59:41 
 * 修改备注： 
 * @version  jdk1.7 
 * 
 * Copyright (c) 2016, bolven@qq.com All Rights Reserved.     
 */
@Entity
@Service("shoukuanService")
public class ShoukuanService {
	//注入ShoukuanDAO
	private ShoukuanDAO shoukuanDAO;
	public void setShoukuanDAO(ShoukuanDAO shoukuanDAO) {
		this.shoukuanDAO = shoukuanDAO;
	}



	/**
	 * 
	 * saveShoukuan: 保存收款内容 
	 * TODO (这里描述这个方法适用条件 – 可选). 
	 * @author Wu. Van 
	 * @param shoukuan 
	 * @return 
	 * @since JDK 1.6
	 */
	public boolean saveShoukuan(Shoukuan shoukuan) {
		
		try {
			shoukuanDAO.save(shoukuan);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}
		
	}
}



