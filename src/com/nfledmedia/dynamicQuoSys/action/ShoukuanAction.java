package com.nfledmedia.dynamicQuoSys.action;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.ManyToOne;

import org.apache.struts2.ServletActionContext;

import com.nfledmedia.dynamicQuoSys.entity.Shoukuan;
import com.nfledmedia.dynamicQuoSys.entity.Yewuyuan;
import com.nfledmedia.dynamicQuoSys.service.DingdanstateService;
import com.nfledmedia.dynamicQuoSys.service.ShoukuanService;
import com.nfledmedia.dynamicQuoSys.service.UserService;
import com.opensymphony.xwork2.ModelDriven;

/**       
 * 项目名称：dynamicQuoSys 
 * 类全名:com.nfledmedia.dynamicQuoSys.action.ShoukuanAction 
 * 类描述：  
 * 创建人：Van@nfledmedia 
 * 创建时间：2016年7月8日 下午3:57:21 
 * 修改备注： 
 * @version  jdk1.7 
 * 
 * Copyright (c) 2016, bolven@qq.com All Rights Reserved.     
 */
public class ShoukuanAction extends SuperAction
		implements
			ModelDriven<Shoukuan> {
	private static final long serialVersionUID = 1L;

	private Shoukuan shoukuan;

	@Override
	public Shoukuan getModel() {
		// TODO Auto-generated method stub
		if (shoukuan == null) {
			shoukuan = new Shoukuan();
		}
		return shoukuan;
	}

	// 注入shoukuanService
	@ManyToOne
	private ShoukuanService shoukuanService;
	public void setShoukuanService(ShoukuanService shoukuanService) {
		this.shoukuanService = shoukuanService;
	}

	private String shoukuanywyid;
	private String shoukuanjine;
	private String shoukuanshijian;

	public void setShoukuanywyid(String shoukuanywyid) {
		this.shoukuanywyid = shoukuanywyid;
	}

	public void setShoukuanjine(String shoukuanjine) {
		this.shoukuanjine = shoukuanjine;
	}

	public void setShoukuanshijian(String shoukuanshijian) {
		this.shoukuanshijian = shoukuanshijian;
	}

	public void createShoukuan() {
		shoukuan.setSkYwyid(Integer.parseInt(shoukuanywyid));
		shoukuan.setSkShoukuanjine(Double.parseDouble(shoukuanjine));
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date shoukuansj = null;
		try {
			shoukuansj = sdf.parse(shoukuanshijian);
		} catch (ParseException e) {
			// TODO Auto-generated catch block

		}
		shoukuan.setSkShoukuanshijian(shoukuansj);

		//创建时间戳
		DateFormat sdf2TS = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		ts = Timestamp.valueOf(sdf2TS.format(new Date()));
		shoukuan.setSkTimestamp(ts);
	}

	
	private DingdanstateService dingdanstateService;
	public void setDingdanstateService(DingdanstateService dingdanstateService) {
		this.dingdanstateService = dingdanstateService;
	}

	public String save() {

		createShoukuan();
		//修改订单状态
		dingdanstateService.updateDingdanstate(shoukuan.getSkRenkanbianhao());
		
		//对前台传来的收款名称进行处理，接收的是数组
		String[] strarr = shoukuan.getSkMingcheng().split(",");
		if(strarr.length >1){
			shoukuan.setSkMingcheng(null);
			if("all-not".equals(strarr[0])){
				if(strarr[1].startsWith(" ")){
					strarr[1] = strarr[1].substring(1);
				}
					shoukuan.setSkMingcheng(strarr[1]);
			}else {
					shoukuan.setSkMingcheng(strarr[0]);
			}
		}
		
		System.out.println("shoukuan实体类："+shoukuan.toString());

		if (shoukuanService.saveShoukuan(shoukuan)) {
			String successmessage = "您填写的信息已经提交成功！";
			ServletActionContext.getRequest().getSession()
					.setAttribute("successmessage", successmessage);
			return "shoukuansave_success";

		} else {
			String erromessage = "提交失败，请稍后再试！";
			ServletActionContext.getRequest().getSession()
					.setAttribute("erromessage", erromessage);
			return "shoukuansave_failure";
		}

	}

}
