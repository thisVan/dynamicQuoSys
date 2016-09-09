package com.nfledmedia.dynamicQuoSys.service;

import java.util.List;

import javax.persistence.Entity;

import org.springframework.stereotype.Service;

import com.nfledmedia.dynamicQuoSys.dao.FukuanDAO;
import com.nfledmedia.dynamicQuoSys.dao.YewuDAO;
import com.nfledmedia.dynamicQuoSys.entity.Fukuan;
import com.nfledmedia.dynamicQuoSys.entity.Yewu;

/**       
 * 项目名称：dynamicQuoSys 
 * 类全名:com.nfledmedia.dynamicQuoSys.service.FukuanService 
 * 类描述：  
 * 创建人：Van@nfledmedia 
 * 创建时间：2016年6月22日 上午10:10:28 
 * 修改备注： 
 * @version  jdk1.7 
 * 
 * Copyright (c) 2016, bolven@qq.com All Rights Reserved.     
 */
@Entity
@Service("fukuanService")
public class FukuanService {
		
		//注入userDao
		private FukuanDAO fukuanDAO;
	
		public void setFukuanDAO(FukuanDAO fukuanDAO) {
			this.fukuanDAO = fukuanDAO;
		}



		// 添加记录（保存屏幕选择项目）
		/**
		 * 
		 * saveYewu: 添加记录（保存屏幕选择项目）
		 * TODO (这里描述这个方法适用条件 – 可选). 
		 * @author Wu. Van 
		 * @param yewu 
		 * @since JDK 1.6
		 */
		public void saveFukuan(List<Fukuan> fukuanList) {
			for (int i = 0; i < fukuanList.size(); i++) {
				fukuanDAO.save(fukuanList.get(i));
			}
	
		}
}


