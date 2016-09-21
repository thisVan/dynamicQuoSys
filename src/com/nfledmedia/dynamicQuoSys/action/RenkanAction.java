package com.nfledmedia.dynamicQuoSys.action;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Service;

import com.nfledmedia.dynamicQuoSys.cons.CommonConstant;
import com.nfledmedia.dynamicQuoSys.entity.Fukuan;
import com.nfledmedia.dynamicQuoSys.entity.Industry;
import com.nfledmedia.dynamicQuoSys.entity.Led;
import com.nfledmedia.dynamicQuoSys.entity.Orderaudit;
import com.nfledmedia.dynamicQuoSys.entity.Remark;
import com.nfledmedia.dynamicQuoSys.entity.Renkanshu;
import com.nfledmedia.dynamicQuoSys.entity.Yewu;
import com.nfledmedia.dynamicQuoSys.entity.Yewuyuan;
import com.nfledmedia.dynamicQuoSys.service.FukuanService;
import com.nfledmedia.dynamicQuoSys.service.RenkanshuService;
import com.nfledmedia.dynamicQuoSys.service.YewuService;
import com.nfledmedia.dynamicQuoSys.service.YewuyuanService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

/**       
 * 项目名称：dynamicQuoSys 
 * 类全名:com.nfledmedia.dynamicQuoSys.action.RenkanshuAction 
 * 类描述：认刊书的action类，对提交的认刊书，业务，付款等表进行存储  
 * 创建人：Van@nfledmedia 
 * 创建时间：2016年6月12日 上午10:48:43 
 * 修改备注： 
 * @version  jdk1.7 
 * 
 * Copyright (c) 2016, bolven@qq.com All Rights Reserved.     
 */
@Service("renkanAction")
public class RenkanAction extends SuperAction {

	private Renkanshu renkanshu;

	private Yewu yewu;

	private Fukuan fukuan;

	private Industry industry;

	private Led led;

	private Yewuyuan yewuyuan;

	public Renkanshu getRenkanshu() {
		return renkanshu;
	}

	public void setRenkanshu(Renkanshu renkanshu) {
		this.renkanshu = renkanshu;
	}

	public Yewu getYewu() {
		return yewu;
	}

	public void setYewu(Yewu yewu) {
		this.yewu = yewu;
	}

	public Fukuan getFukuan() {
		return fukuan;
	}

	public void setFukuan(Fukuan fukuan) {
		this.fukuan = fukuan;
	}

	public Industry getIndustry() {
		return industry;
	}

	public void setIndustry(Industry industry) {
		this.industry = industry;
	}

	public Led getLed() {
		return led;
	}

	public void setLed(Led led) {
		this.led = led;
	}

	public Yewuyuan getYewuyuan() {
		return yewuyuan;
	}

	public void setYewuyuan(Yewuyuan yewuyuan) {
		this.yewuyuan = yewuyuan;
	}

	// 注入renkanshuService
	private RenkanshuService renkanshuService;

	public void setRenkanshuService(RenkanshuService renkanshuService) {
		this.renkanshuService = renkanshuService;
	}

	// 注入yewuService
	private YewuService yewuService;

	public void setYewuService(YewuService yewuService) {
		this.yewuService = yewuService;
	}

	// 注入fukuanService
	private FukuanService fukuanService;

	public void setFukuanService(FukuanService fukuanService) {
		this.fukuanService = fukuanService;
	}

	private YewuyuanService yewuyuanService;

	public void setYewuyuanService(YewuyuanService yewuyuanService) {
		this.yewuyuanService = yewuyuanService;
	}

	// 无法接受的数据使用string接收
	private String kanlizongjia;
	private String zhekou;
	private String fenqi;
	// private String dingjin;

	public String getKanlizongjia() {
		return kanlizongjia;
	}

	public void setKanlizongjia(String kanlizongjia) {
		this.kanlizongjia = kanlizongjia;
	}

	public String getZhekou() {
		return zhekou;
	}

	public void setZhekou(String zhekou) {
		this.zhekou = zhekou;
	}

	public String getFenqi() {
		return fenqi;
	}

	public void setFenqi(String fenqi) {
		this.fenqi = fenqi;
	}

	/*
	 * public String getDingjin() { return dingjin; }
	 * 
	 * public void setDingjin(String dingjin) { this.dingjin = dingjin; }
	 */

	// 获取数据
	private String[] shanghuadianweiledtable;

	private String[] guanggaoleixingledtable;

	private String[] starttimeledtable;

	private String[] endtimeledtable;

	private String[] guanggaoshuliangledtable;

	private String[] pinciledtable;

	private String[] shichangledtable;

	private String[] kanlijialedtable;

	private String[] kanlijiaxiaojiledtable;

	public String[] getShanghuadianweiledtable() {
		return shanghuadianweiledtable;
	}

	public void setShanghuadianweiledtable(String[] shanghuadianweiledtable) {
		this.shanghuadianweiledtable = shanghuadianweiledtable;
	}

	public String[] getGuanggaoleixingledtable() {
		return guanggaoleixingledtable;
	}

	public void setGuanggaoleixingledtable(String[] guanggaoleixingledtable) {
		this.guanggaoleixingledtable = guanggaoleixingledtable;
	}

	public String[] getStarttimeledtable() {
		return starttimeledtable;
	}

	public void setStarttimeledtable(String[] starttimeledtable) {
		this.starttimeledtable = starttimeledtable;
	}

	public String[] getEndtimeledtable() {
		return endtimeledtable;
	}

	public void setEndtimeledtable(String[] endtimeledtable) {
		this.endtimeledtable = endtimeledtable;
	}

	public String[] getGuanggaoshuliangledtable() {
		return guanggaoshuliangledtable;
	}

	public void setGuanggaoshuliangledtable(String[] guanggaoshuliangledtable) {
		this.guanggaoshuliangledtable = guanggaoshuliangledtable;
	}

	public String[] getPinciledtable() {
		return pinciledtable;
	}

	public void setPinciledtable(String[] pinciledtable) {
		this.pinciledtable = pinciledtable;
	}

	public String[] getShichangledtable() {
		return shichangledtable;
	}

	public void setShichangledtable(String[] shichangledtable) {
		this.shichangledtable = shichangledtable;
	}

	public String[] getKanlijialedtable() {
		return kanlijialedtable;
	}

	public void setKanlijialedtable(String[] kanlijialedtable) {
		this.kanlijialedtable = kanlijialedtable;
	}

	public String[] getKanlijiaxiaojiledtable() {
		return kanlijiaxiaojiledtable;
	}

	public void setKanlijiaxiaojiledtable(String[] kanlijiaxiaojiledtable) {
		this.kanlijiaxiaojiledtable = kanlijiaxiaojiledtable;
	}

	// 付款信息保存
	private String[] fenqimingcheng;

	private String[] fenqijine;

	private String[] fenqifukuanshijian;

	private String[] fukuanfangshi;

	private String[] fukuanbeizhu;

	public void setFenqimingcheng(String[] fenqimingcheng) {
		this.fenqimingcheng = fenqimingcheng;
	}

	public void setFenqijine(String[] fenqijine) {
		this.fenqijine = fenqijine;
	}

	public void setFenqifukuanshijian(String[] fenqifukuanshijian) {
		this.fenqifukuanshijian = fenqifukuanshijian;
	}

	public void setFukuanfangshi(String[] fukuanfangshi) {
		this.fukuanfangshi = fukuanfangshi;
	}

	public void setFukuanbeizhu(String[] fukuanbeizhu) {
		this.fukuanbeizhu = fukuanbeizhu;
	}

	// 多对多关系保存
	// List<Yewu> yewuList = new ArrayList<Yewu>();
	List<Orderaudit> orderauditList = new ArrayList<Orderaudit>();
	List<Remark> remarkList = new ArrayList<Remark>();
	List<Led> ledList = new ArrayList<Led>();
	List<Fukuan> fukuanList = new ArrayList<Fukuan>();

	public String saverenkan() {
		if (trySave()) {
			String successmessage = "您填写的信息已经提交成功，请等待审核！";
			ServletActionContext.getRequest().getSession()
					.setAttribute("successmessage", successmessage);
			ServletActionContext.getRequest().getSession()
					.setAttribute("erromessage", "");
			return "success";
		} else {
			String erromessage = (String) ServletActionContext.getRequest()
					.getSession().getAttribute("erromessage");
			if (erromessage == null || erromessage == "") {
				erromessage = "提交失败，请检查输入的数据是否符合要求，然后重试！";
				ServletActionContext.getRequest().getSession()
						.setAttribute("erromessage", erromessage);
			}

			return "failed";
		}

	}

	public boolean trySave() {

		try {
			// 公共工具类
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String dateStr = "";
			Date datenow = new Date();
			// format的格式可以任意
			DateFormat sdf2TS = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			dateStr = sdf2TS.format(datenow);

			Industry industryin = yewuService
					.getIndustryByIndustryDesc(industry.getIndustryDesc());

			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>renkanAction:Industry:"
					+ industry + "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<");
			System.out.println("renkanAction:Industry.getIndustryId"
					+ industry.getIndustryId());
			System.out.println("renkanAction:Industry.getIndustryDesc"
					+ industry.getIndustryDesc());
			Timestamp ts = new Timestamp(System.currentTimeMillis());
			String tsStr = dateStr;
			ts = Timestamp.valueOf(tsStr);

			// 处理认刊书数据
			renkanshu.setKanlizongjia(Double.parseDouble(kanlizongjia));
			renkanshu.setZhekou((Double.parseDouble(zhekou)) / 100);
			// renkanshu.setFenqi(Integer.parseInt(fenqi));
			renkanshu.setIndustry(industryin);
			renkanshu.setRksTimestamp(ts);
			renkanshu.setState("A");

			System.out.println(renkanshu.toString());
			// 业务员信息处理，包装
			yewuyuan.setYwyId(renkanshu.getYwyId());

			Map session = ActionContext.getContext().getSession();
			Integer OperId = (Integer) session.get(CommonConstant.SESSION_ID);
			Yewuyuan OperYewuyuan = yewuyuanService.loadUserByID(OperId);

			// led信息包装

			// 处理yewu数据，主要是保存选择屏幕信息
			for (int i = 0; i < shanghuadianweiledtable.length; i++) {
				Led led = new Led();
				led.setLedId(shanghuadianweiledtable[i]);
				System.out.println(led.getLedId()+"led name"+led.getLedName());
				ledList.add(led);

				System.out.println(ledList.size());
				Date dateend = sdf.parse(endtimeledtable[i]);
				Date datestart = sdf.parse(starttimeledtable[i]);

				Orderaudit orderaudit = new Orderaudit();
				orderaudit.setRenkanbianhao(renkanshu.getRenkanbianhao());
				orderaudit.setKanhu(renkanshu.getGuangaokanhu());
				orderaudit.setGuanggaoneirong(renkanshu.getGuanggaoneirong());
				orderaudit.setIndustry(renkanshu.getIndustry());
				orderaudit.setLeixing(guanggaoleixingledtable[i]);
				orderaudit.setLed(led);
				orderaudit.setShichang(Integer.parseInt(shichangledtable[i]));
				orderaudit.setPinci(Integer.parseInt(pinciledtable[i]));
				orderaudit.setKaishishijian(datestart);
				orderaudit.setJieshushijian(dateend);
				orderaudit.setShuliang(Integer
						.parseInt(guanggaoshuliangledtable[i]));
				orderaudit.setKanlijiaxiaoji(Double
						.parseDouble(kanlijiaxiaojiledtable[i]));
				orderaudit.setOperTimestamp(new Date());
				orderaudit.setOperType("A");
				orderaudit.setYewuyuanByOperYwyId(OperYewuyuan);
				orderauditList.add(orderaudit);

				String remarkContent = "" + ts + " "
						+ OperYewuyuan.getYwyXingming() + " 增加订单———认刊书编号："
						+ renkanshu.getRenkanbianhao() + " 广告客户："
						+ renkanshu.getGuangaokanhu() + " 广告内容："
						+ renkanshu.getGuanggaoneirong() + " 行业："
						+ renkanshu.getIndustry().getIndustryDesc() + " 广告类型："
						+ guanggaoleixingledtable[i] + " 屏幕："
						+ orderaudit.getLed().getLedName() + " 时长：" + shichangledtable[i]
						+ " 频次：" + pinciledtable[i] + " 开始时间：" + sdf.format(datestart)
						+ " 结束时间：" + sdf.format(dateend) + " 数量："
						+ guanggaoshuliangledtable[i];
				Remark remark = new Remark();
				remark.setOperTime(ts);
				remark.setOperYwyName(OperYewuyuan.getYwyXingming());
				remark.setYewu(yewu);
				remark.setOperContent(remarkContent);
				remark.setState("T");//添加订单
				remarkList.add(remark);

				// Yewu yewu = new Yewu();
				// yewu.setYewuyuan(yewuyuan);
				// yewu.setKanhu(renkanshu.getGuangaokanhu());
				// yewu.setRenkanshu(renkanshu);
				// yewu.setLeixing(guanggaoleixingledtable[i]);
				// yewu.setLed(led);
				// yewu.setShichang(Integer.parseInt(shichangledtable[i]));
				// yewu.setPinci(Integer.parseInt(pinciledtable[i]));
				// yewu.setKaishishijian(datestart);
				// yewu.setJieshushijian(dateend);
				// yewu.setShuliang(Integer.parseInt(guanggaoshuliangledtable[i]));
				// yewu.setKanlijiaxiaoji(Double
				// .parseDouble(kanlijiaxiaojiledtable[i]));
				// yewu.setYewuTimestamp(ts);
				// System.out.println(yewu.toString());
				// yewuList.add(yewu);

			}

			// 处理付款数据
			/*
			 * for (int i = 0; i < fenqimingcheng.length; i++) { Fukuan fukuan =
			 * new Fukuan(); Date datefukuan = sdf.parse(fenqifukuanshijian[i]);
			 * 
			 * fukuan.setRenkanshu(renkanshu);
			 * fukuan.setFukuanshijian(datefukuan);
			 * fukuan.setMingcheng(fenqimingcheng[i]);
			 * fukuan.setJine(Double.parseDouble(fenqijine[i]));
			 * fukuan.setYwyId(renkanshu.getYwyId());
			 * fukuan.setFukuanfangshi(fukuanfangshi[i]);
			 * fukuan.setFukuanbeizhu(fukuanbeizhu[i]);
			 * fukuan.setFukuanTimestamp(ts);
			 * 
			 * System.out.println(fukuan); fukuanList.add(fukuan); }
			 */

			if (renkanshuService.validateRenkanshu(renkanshu)) {
				renkanshuService.saveRenkanshu(renkanshu);
				yewuService.saveOrderAuditList(orderauditList);
			} else {
				return false;
			}
			for (int i = 0; i < orderauditList.size(); i++) {
				remarkList.get(i)
						.setOrderauditId(orderauditList.get(i).getId());
			}
			//上面认刊书已经保存，这里validateRenkanshu肯定会有值160824 15:40
//			if (renkanshuService.validateRenkanshu(renkanshu)) {
			System.out.println(remarkList.size());
			for(int i=0;i<remarkList.size();i++){
				System.out.println(remarkList.get(i).toString());
			}
				yewuService.saveRemarkList(remarkList);
//			} else {
//				return false;
//			}
			// renkanshuService.saveRenkanshu(renkanshu);
			// yewuService.saveOrderAuditList(orderauditList);
			// yewuService.saveYewu(yewuList);
			// 付款页面屏蔽，不需要此方法
			/* fukuanService.saveFukuan(fukuanList); */
			ServletActionContext.getRequest().getSession()
					.setAttribute("renkanshu", renkanshu);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			return false;

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			return false;
		}

		return true;

	}
}
