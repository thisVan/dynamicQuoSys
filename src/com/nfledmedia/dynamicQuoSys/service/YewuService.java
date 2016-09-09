package com.nfledmedia.dynamicQuoSys.service;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.OnDelete;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nfledmedia.dynamicQuoSys.cons.OrderAuditOperType;
import com.nfledmedia.dynamicQuoSys.dao.IndustryDAO;
import com.nfledmedia.dynamicQuoSys.dao.IndustryclassifyDAO;
import com.nfledmedia.dynamicQuoSys.dao.LedDAO;
import com.nfledmedia.dynamicQuoSys.dao.MessageDAO;
import com.nfledmedia.dynamicQuoSys.dao.OrderauditDAO;
import com.nfledmedia.dynamicQuoSys.dao.RemarkDAO;
import com.nfledmedia.dynamicQuoSys.dao.RenkanshuDAO;
import com.nfledmedia.dynamicQuoSys.dao.ShoukuanDAO;
import com.nfledmedia.dynamicQuoSys.dao.YewuDAO;
import com.nfledmedia.dynamicQuoSys.dao.YewuyuanDAO;
import com.nfledmedia.dynamicQuoSys.dao.YwymubiaoDAO;
import com.nfledmedia.dynamicQuoSys.entity.Industry;
import com.nfledmedia.dynamicQuoSys.entity.Led;
import com.nfledmedia.dynamicQuoSys.entity.Message;
import com.nfledmedia.dynamicQuoSys.entity.Orderaudit;
import com.nfledmedia.dynamicQuoSys.entity.Remark;
import com.nfledmedia.dynamicQuoSys.entity.Renkanshu;
import com.nfledmedia.dynamicQuoSys.entity.Yewu;
import com.nfledmedia.dynamicQuoSys.entity.Yewuyuan;
import com.nfledmedia.dynamicQuoSys.util.Page;
import com.opensymphony.xwork2.ActionContext;

/**       
 * 项目名称：dynamicQuoSys 
 * 类全名:com.nfledmedia.dynamicQuoSys.service.YewuService 
 * 类描述：  
 * 创建人：Van@nfledmedia 
 * 创建时间：2016年6月22日 上午10:07:59 
 * 修改备注： 
 * @version  jdk1.7 
 * 
 * Copyright (c) 2016, bolven@qq.com All Rights Reserved.     
 */
@Entity
@Transactional
@Service("yewuService")
public class YewuService {

	@ManyToOne
	private YewuDAO yewuDAO;
	@ManyToOne
	private LedDAO ledDAO;
	@ManyToOne
	private IndustryDAO industryDAO;
	@ManyToOne
	private YwymubiaoDAO ywymubiaoDAO;
	@ManyToOne
	private ShoukuanDAO shoukuanDAO;
	@ManyToOne
	private OrderauditDAO orderauditDAO;
	@ManyToOne
	private YewuyuanDAO yewuyuanDAO;
	@ManyToOne
	private RenkanshuDAO renkanshuDAO;
	@ManyToOne
	private MessageDAO messageDAO;
	@ManyToOne
	private RemarkDAO remarkDAO;
	@ManyToOne
	private IndustryclassifyDAO industryclassifyDAO;

	public void setIndustryclassifyDAO(IndustryclassifyDAO industryclassifyDAO) {
		this.industryclassifyDAO = industryclassifyDAO;
	}

	public void setYewuDAO(YewuDAO yewuDAO) {
		this.yewuDAO = yewuDAO;
	}

	public void setLedDAO(LedDAO ledDAO) {
		this.ledDAO = ledDAO;
	}

	public void setIndustryDAO(IndustryDAO industryDAO) {
		this.industryDAO = industryDAO;
	}

	public void setYwymubiaoDAO(YwymubiaoDAO ywymubiaoDAO) {
		this.ywymubiaoDAO = ywymubiaoDAO;
	}

	public void setShoukuanDAO(ShoukuanDAO shoukuanDAO) {
		this.shoukuanDAO = shoukuanDAO;
	}

	public void setOrderauditDAO(OrderauditDAO orderauditDAO) {
		this.orderauditDAO = orderauditDAO;
	}

	public void setYewuyuanDAO(YewuyuanDAO yewuyuanDAO) {
		this.yewuyuanDAO = yewuyuanDAO;
	}

	public void setRenkanshuDAO(RenkanshuDAO renkanshuDAO) {
		this.renkanshuDAO = renkanshuDAO;
	}

	public void setMessageDAO(MessageDAO messageDAO) {
		this.messageDAO = messageDAO;
	}

	public void setRemarkDAO(RemarkDAO remarkDAO) {
		this.remarkDAO = remarkDAO;
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
	public void saveYewu(List<Yewu> yewuList) {
		for (int i = 0; i < yewuList.size(); i++) {
			yewuDAO.save(yewuList.get(i));
		}
	}
	public void saveOrderAuditList(List<Orderaudit> orderauditList) {
		for (int i = 0; i < orderauditList.size(); i++) {
			orderauditDAO.save(orderauditList.get(i));
		}
	}
	public void saveRemarkList(List<Remark> remarkList) {
		for (int i = 0; i < remarkList.size(); i++) {
			remarkDAO.save(remarkList.get(i));
		}
	}
	/**
	 * @author rthtr
	 * @param sidx
	 * @param sord
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public Renkanshu getRenkanshuByRenkanbianhao(String renkanbianhao) {
		return renkanshuDAO.findById(renkanbianhao);
	}
	public Page getYewuList(String sidx, String sord, int pageNo, int pageSize) {
		System.out.println("???????????yewuService:getYewuList:sidx:" + sidx);
		return yewuDAO.getYewuList(sidx, sord, pageNo, pageSize);
	}
	public Page getYewuListByKeyword(String keyword, String sidx, String sord,
			int pageNo, int pageSize) {
		return yewuDAO.getYewuListByKeyword(keyword, sidx, sord, pageNo,
				pageSize);
	}

	public Page getDingdanguanliList(String sidx, String sord, int pageNo,
			int pageSize) {
		System.out.println("???????????yewuService:getYewuList:sidx:" + sidx);
		return yewuDAO.getDingdanguanliList(sidx, sord, pageNo, pageSize);
	}
	public Page getDingdanguanliListByKeyword(String keyword, String sidx,
			String sord, int pageNo, int pageSize) {
		return yewuDAO.getDingdanguanliListByKeyword(keyword, sidx, sord,
				pageNo, pageSize);
	}

	public Page getOrderAuditList(String sidx, String sord, int pageNo,
			int pageSize) {
		System.out
				.println("^^^^^^^^^^^^^^^^^^^^^^^^^yewuService:getOrderAuditList:sidx:"
						+ sidx);
		return remarkDAO.getOrderAuditList(sidx, sord, pageNo, pageSize);
	}
	public Page getOrderAuditListByKeyword(String keyword, String sidx,
			String sord, int pageNo, int pageSize) {
		return remarkDAO.getOrderAuditListByKeyword(keyword, sidx, sord,
				pageNo, pageSize);
	}

	public Page getMyOrderAuditList(String sidx, String sord, int pageNo,
			int pageSize, Integer operYwyId) {
		System.out
				.println("^^^^^^^^^^^^^^^^^^^^^^^^^yewuService:getMyOrderAuditList:sidx:"
						+ sidx);
		return orderauditDAO.getMyOrderAuditList(sidx, sord, pageNo, pageSize,
				operYwyId);
	}
	public Page getMyOrderAuditListByKeyword(String keyword, String sidx,
			String sord, int pageNo, int pageSize, Integer operYwyId) {
		return orderauditDAO.getMyOrderAuditListByKeyword(keyword, sidx, sord,
				pageNo, pageSize, operYwyId);
	}

	public List getAllLed() {
		System.out.println("调用???????????yewuService：getAllLed");
		return ledDAO.getAllLed();
	}
	public List getAllIndustry() {
		System.out.println("调用???????????yewuService：getAllLed");
		return industryDAO.getAllIndustry();
	}

	public List getAllClient() {
		System.out.println("调用???????????yewuService：getAllLed");
		return yewuDAO.getAllClient();
	}

	public List getPieData(String startTime, String endTime, String led) {
		System.out.println("调用???????????yewuService：getPieData");
		List list = yewuDAO.getPieData(startTime, endTime, led);

		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).toString());
		}
		return list;
	}

	public List getPieDataAllLed(String startTime, String endTime) {
		System.out.println("调用???????????yewuService：getPieData");
		List list = yewuDAO.getPieDataAllLed(startTime, endTime);

		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).toString());
		}
		return list;
	}

	// public List getPieData() {
	// System.out.println("调用???????????yewuService：getPieData");
	// List list = yewuDAO.getPieData();
	//
	// for (int i = 0; i < list.size(); i++) {
	// System.out.println(list.get(i).toString());
	// }
	// return list;
	// }

	public List getAllRenkanbianhao() {
		System.out.println("调用???????????yewuService：getAllLed");
		return yewuDAO.getAllRenkanbianhao();
	}

	public List getRemarks(Integer yewuId) {
		System.out.println("调用???????????yewuService：getAllLed");
		return remarkDAO.getRemarks(yewuId);
	}

	public Page getYwyyejilist(String sidx, String sord, int pageNo,
			int pageSize) {
		System.out.println("???????????yewuService:getYewuList:sidx:" + sidx);
		return yewuDAO.getYwyyejilist(sidx, sord, pageNo, pageSize);
	}
	public Page getYwyyejilistByKeyword(String keyword, String sidx,
			String sord, int pageNo, int pageSize) {
		return yewuDAO.getYwyyejilistByKeyword(keyword, sidx, sord, pageNo,
				pageSize);
	}

	public Double getMonthAchievement(String month, int id) {
		Double MonthAchievement = 0.0;
		List result = shoukuanDAO.getMonthAchievement(month, id);
		if (result.size() == 0) {
			return 0.0;
		} else {
			for (int i = 0; i < result.size(); i++) {
				MonthAchievement += Double
						.parseDouble(result.get(i).toString());
			}
			return MonthAchievement;
		}
	}

	public Yewu loadYewuByID(Integer yewuId) {
		System.out.println("###########  yewuServiceyewuId:" + yewuId);
		Yewu yewu = yewuDAO.findById(yewuId);
		return yewu;
	}
	public Industry getIndustryByIndustryDesc(String industryDesc) {
		System.out.println("###########  industryDesc:" + industryDesc);
		List industry = industryDAO.findByIndustryDesc(industryDesc);
		return (Industry) industry.get(0);
	}

	public void AuditOrders(String ids, boolean auditResult,
			String auditReason, Integer auditID) {
		System.out
				.println(".....................进入YewuService中的batchAuditOrders方法....................");
		String[] idss = ids.split(",");
		for (int i = 0, size = idss.length; i < size; i++) {
			Integer id = new Integer(idss[i]);
			// Remark remark = remarkDAO.findById(id);
			// Integer orderAuditid = remark.getOrderauditId();
			auditOrder(id, auditResult, auditReason, auditID);
		}
	}

	public void batchAuditOrders(String ids, boolean auditResult,
			String auditReason, Integer auditID) {
		System.out
				.println(".....................进入YewuService中的batchAuditOrders方法....................");
		String[] idss = ids.split(",");
		for (int i = 0, size = idss.length; i < size; i++) {
			Integer id = new Integer(idss[i]);
			Remark remark = remarkDAO.findById(id);
			Integer orderAuditid = remark.getOrderauditId();
			auditOrder(orderAuditid, auditResult, auditReason, auditID);
		}
	}

	/**
	 * 审核订单方法
	 * @author rthtr
	 * @param id
	 * @param auditResult
	 * @param auditReason
	 * @param auditID
	 */
	public void auditOrder(Integer id, boolean auditResult, String auditReason,
			Integer auditID) {
		System.out
				.println(".....................进入YewuService中的auditOrder方法....................");
		Orderaudit orderAudit = orderauditDAO.findById(id);
		Renkanshu renkanshu = renkanshuDAO.findById(orderAudit
				.getRenkanbianhao());
		Yewuyuan auditYwy = yewuyuanDAO.findById(auditID);
		String operType = orderAudit.getOperType();
		System.out.println(operType);
		String content = null;

		Date datenow = new Date();
		DateFormat sdf2TS = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateStr = sdf2TS.format(datenow);
		Timestamp timeStamp = new Timestamp(System.currentTimeMillis());
		String tsStr = dateStr;
		timeStamp = Timestamp.valueOf(tsStr);

		if (auditResult) { // 审核通过
			if (operType.equals("A")) { // 新增操作
				Yewu yewu = new Yewu();
				yewu.setYewuyuan(yewuyuanDAO.findById(renkanshu.getYwyId()));
				yewu.setKanhu(renkanshu.getGuangaokanhu());
				yewu.setRenkanshu(renkanshu);
				yewu.setGuanggaoneirong(orderAudit.getGuanggaoneirong());
				yewu.setIndustry(orderAudit.getIndustry());
				yewu.setLeixing(orderAudit.getLeixing());
				yewu.setLed(orderAudit.getLed());
				yewu.setShichang(orderAudit.getShichang());
				yewu.setPinci(orderAudit.getPinci());
				yewu.setKaishishijian(orderAudit.getKaishishijian());
				yewu.setJieshushijian(orderAudit.getJieshushijian());
				yewu.setShuliang(orderAudit.getShuliang());
				yewu.setKanlijiaxiaoji(orderAudit.getKanlijiaxiaoji());
				yewu.setYewuTimestamp(orderAudit.getOperTimestamp());
				yewu.setCreateTimestamp(orderAudit.getOperTimestamp());
				yewu.setAuditTimestamp(new Date());
				yewu.setYewuyuanByCreateYwyId(orderAudit
						.getYewuyuanByOperYwyId());
				yewu.setYewuyuanByAuditYwyId(auditYwy);
				yewu.setState("N");
				yewuDAO.save(yewu);

				Remark remark = (Remark) remarkDAO.findByOrderauditId(
						orderAudit.getId()).get(0);
				String remarkContent = remark.getOperContent();
				remarkContent += "  审核人：" + auditYwy.getYwyXingming()
						+ ", 审核时间：" + timeStamp + ", 审核结果：通过！" + ",审核理由："
						+ auditReason;
				remark.setOperContent(remarkContent);
				remark.setAuditTime(timeStamp);
				remark.setAuditYwyName(auditYwy.getYwyXingming());
				remark.setState("N");
				remarkDAO.merge(remark);

				// 审核通过
				content = "添加订单--认刊书编号："
						+ yewu.getRenkanshu().getRenkanbianhao() + " 广告客户："
						+ yewu.getKanhu() + "的信息已通过审核，审核人："
						+ auditYwy.getYwyXingming() + " 审核理由：" + auditReason;
				// Map session = ActionContext.getContext().getSession();
				// Integer loginid=(Integer) session.get("id");
				// content=yewuyuanDAO.findById(loginid).getYwyXingming()+"审核订单——认刊书编号："+yewu.getRenkanshu().getBaogaobianhao()+" 广告客户："+yewu.getKanhu()+"通过";

			} else if (operType.equals("L")) { // 修改操作
				Yewu yewu = yewuDAO.findById(orderAudit.getYewuId());

				// Remark remark=remarkDAO.

				yewu.setGuanggaoneirong(orderAudit.getGuanggaoneirong());
				yewu.setIndustry(orderAudit.getIndustry());
				yewu.setLed(orderAudit.getLed());
				yewu.setShichang(orderAudit.getShichang());
				yewu.setPinci(orderAudit.getPinci());
				yewu.setKaishishijian(orderAudit.getKaishishijian());
				yewu.setJieshushijian(orderAudit.getJieshushijian());
				yewu.setShuliang(orderAudit.getShuliang());
				yewu.setState(orderAudit.getOrderState());
				yewu.setAlterTimestamp(orderAudit.getOperTimestamp());
				yewu.setAuditTimestamp(new Date());
				yewu.setYewuyuanByAlterYwyId(orderAudit
						.getYewuyuanByOperYwyId());
				yewu.setYewuyuanByAuditYwyId(auditYwy);
				yewuDAO.merge(yewu);
				// 修改品牌
				content = "修改订单--认刊书编号："
						+ yewu.getRenkanshu().getRenkanbianhao() + " 广告客户："
						+ yewu.getKanhu() + "的信息已通过审核，审核人："
						+ auditYwy.getYwyXingming() + " 审核理由：" + auditReason;
				System.out.println(content);

				Remark remark = (Remark) remarkDAO.findByOrderauditId(
						orderAudit.getId()).get(0);
				String remarkContent = remark.getOperContent();
				remarkContent += "  审核人：" + auditYwy.getYwyXingming()
						+ ", 审核时间：" + timeStamp + ", 审核结果：通过！" + ", 审核理由："
						+ auditReason;
				remark.setOperContent(remarkContent);
				remark.setAuditTime(timeStamp);
				remark.setAuditYwyName(auditYwy.getYwyXingming());
				remark.setState("N");
				remarkDAO.merge(remark);

			} else if (operType.equals("D")) { // 删除操作
				Yewu yewu = yewuDAO.findById(orderAudit.getYewuId());
				String renkanshubianhaoDelete = orderAudit.getRenkanbianhao();
				List yewulist = yewuDAO
						.getAllYewuByRenkanshubianhao(renkanshubianhaoDelete);
				List orderAuditlist = orderauditDAO
						.getAllOrderAuditByRenkanshubianhao(renkanshubianhaoDelete);
				yewu.setYewuyuanByAlterYwyId(orderAudit
						.getYewuyuanByOperYwyId());
				yewu.setAlterTimestamp(orderAudit.getOperTimestamp());
				yewu.setState("D");
				System.out
						.println("~~~~~~~~~~~~~~~~~~~~~~~~~订单删除前~yewulist.size():~~~~~~~~~~~~~~~~~~~~~~"
								+ yewulist.size());
				// yewuDAO.delete(yewu);
				// 当某个认刊书的所有订单均删除时，同时删除该订单
				System.out.println("renkanshubianhaoDelete:"
						+ renkanshubianhaoDelete);
				System.out
						.println("~~~~~~~~~~~~~~~~~~~~~~~~~订单删除前~orderAuditlist.size():~~~~~~~~~~~~~~~~~~~~~~"
								+ orderAuditlist.size());
				if (yewulist.size() == 1 && orderAuditlist.size() == 1) {
					renkanshu.setState("D");
					// renkanshuDAO.delete(renkanshu);
				}

				Remark remark = (Remark) remarkDAO.findByOrderauditId(
						orderAudit.getId()).get(0);
				String remarkContent = remark.getOperContent();
				remarkContent += "  审核人：" + auditYwy.getYwyXingming()
						+ ", 审核时间：" + timeStamp + ", 审核结果：通过！" + ", 审核理由："
						+ auditReason;
				remark.setOperContent(remarkContent);
				remark.setAuditTime(timeStamp);
				remark.setAuditYwyName(auditYwy.getYwyXingming());
				remark.setState("N");
				remarkDAO.merge(remark);

				// 删除品牌通过
				content = "删除订单--认刊书编号："
						+ yewu.getRenkanshu().getRenkanbianhao() + " 广告客户："
						+ yewu.getKanhu() + "的信息已通过审核，审核人："
						+ auditYwy.getYwyXingming() + " 审核理由：" + auditReason;
			} else if (operType.equals("U")) { // 下画操作
				Yewu yewu = yewuDAO.findById(orderAudit.getYewuId());
				String renkanshubianhaoDelete = orderAudit.getRenkanbianhao();
				List yewulist = yewuDAO
						.getAllYewuByRenkanshubianhao(renkanshubianhaoDelete);
				List orderAuditlist = orderauditDAO
						.getAllOrderAuditByRenkanshubianhao(renkanshubianhaoDelete);
				yewu.setYewuyuanByAlterYwyId(orderAudit
						.getYewuyuanByOperYwyId());
				yewu.setAlterTimestamp(orderAudit.getOperTimestamp());
				yewu.setState("U");
				Remark remark = (Remark) remarkDAO.findByOrderauditId(
						orderAudit.getId()).get(0);
				String remarkContent = remark.getOperContent();
				remarkContent += "  审核人：" + auditYwy.getYwyXingming()
						+ ", 审核时间：" + timeStamp + ", 审核结果：通过！" + ", 审核理由："
						+ auditReason;
				remark.setOperContent(remarkContent);
				remark.setAuditTime(timeStamp);
				remark.setAuditYwyName(auditYwy.getYwyXingming());
				remark.setState("N");
				remarkDAO.merge(remark);

				// 删除品牌通过
				content = "下画--认刊书编号：" + yewu.getRenkanshu().getRenkanbianhao()
						+ " 广告客户：" + yewu.getKanhu() + "的信息已通过审核，审核人："
						+ auditYwy.getYwyXingming() + " 审核理由：" + auditReason;
			}

			// 审核通过，则删除orderaudit，修改时间20160906 16:47
			orderauditDAO.delete(orderAudit);
		} else {// 不通过
			if (operType.equals("L")) { // 修改操作
				Yewu yewu = yewuDAO.findById(orderAudit.getYewuId());

				Remark remark = (Remark) remarkDAO.findByOrderauditId(
						orderAudit.getId()).get(0);
				String remarkContent = remark.getOperContent();
				remarkContent += "  审核人：" + auditYwy.getYwyXingming()
						+ ", 审核时间：" + timeStamp + ", 审核结果：不通过" + ", 审核理由："
						+ auditReason;
				remark.setOperContent(remarkContent);
				remark.setAuditTime(timeStamp);
				remark.setAuditYwyName(auditYwy.getYwyXingming());
				remark.setState("N");
				remarkDAO.merge(remark);

				// 修改审核品牌
				content = "修改订单--认刊书编号："
						+ yewu.getRenkanshu().getRenkanbianhao() + " 广告客户："
						+ yewu.getKanhu() + "的信息《不》通过审核，审核人："
						+ auditYwy.getYwyXingming() + " 审核理由：" + auditReason;
				System.out.println(content);

			} else if (operType.equals("D")) { // 删除操作
				Yewu yewu = yewuDAO.findById(orderAudit.getYewuId());

				Remark remark = (Remark) remarkDAO.findByOrderauditId(
						orderAudit.getId()).get(0);
				System.out
						.println("--------------------------------------------------------------------------");
				String remarkContent = remark.getOperContent();
				remarkContent += "  审核人：" + auditYwy.getYwyXingming()
						+ ", 审核时间：" + timeStamp + ", 审核结果：不通过" + ", 审核理由："
						+ auditReason;
				System.out.println(remarkContent);
				remark.setOperContent(remarkContent);
				remark.setAuditTime(timeStamp);
				remark.setAuditYwyName(auditYwy.getYwyXingming());
				remark.setState("N");
				remarkDAO.merge(remark);

				// 删除品牌通过
				content = "删除订单--认刊书编号："
						+ yewu.getRenkanshu().getRenkanbianhao() + " 广告客户："
						+ yewu.getKanhu() + "的信息《不》通过审核，审核人："
						+ auditYwy.getYwyXingming() + " 审核理由：" + auditReason;
			} else if (operType.equals("U")) { // 下画操作
				Yewu yewu = yewuDAO.findById(orderAudit.getYewuId());

				Remark remark = (Remark) remarkDAO.findByOrderauditId(
						orderAudit.getId()).get(0);
				System.out
						.println("--------------------------------------------------------------------------");
				String remarkContent = remark.getOperContent();
				remarkContent += "  审核人：" + auditYwy.getYwyXingming()
						+ ", 审核时间：" + timeStamp + ", 审核结果：不通过" + ", 审核理由："
						+ auditReason;
				System.out.println(remarkContent);
				remark.setOperContent(remarkContent);
				remark.setAuditTime(timeStamp);
				remark.setAuditYwyName(auditYwy.getYwyXingming());
				remark.setState("N");
				remarkDAO.merge(remark);

				// 删除品牌通过
				content = "下画订单--认刊书编号："
						+ yewu.getRenkanshu().getRenkanbianhao() + " 广告客户："
						+ yewu.getKanhu() + "的信息《不》通过审核，审核人："
						+ auditYwy.getYwyXingming() + " 审核理由：" + auditReason;
			} else if (operType.equals("A")) {// 添加操作
				// 当添加订单不成功时，查询是否还有该认刊书的订单，如果只有一条（其本身），则删除已生成的认刊书
				String renkanshubianhaoDelete = orderAudit.getRenkanbianhao();
				List yewulist = yewuDAO
						.getAllYewuByRenkanshubianhao(renkanshubianhaoDelete);
				List orderAuditlist = orderauditDAO
						.getAllOrderAuditByRenkanshubianhao(renkanshubianhaoDelete);
				System.out
						.println("~~~~~~~~~~~~~~~~~~~~~~~~~~orderAuditlist.size():~~~~~~~~~~~~~~~~~~~~~~"
								+ orderAuditlist.size());
				System.out
						.println("~~~~~~~~~~~~~~~~~~~~~~~~~~yewulist.size():~~~~~~~~~~~~~~~~~~~~~~"
								+ yewulist.size());
				// 两个都为0时才删除
				if (yewulist.size() == 0 && orderAuditlist.size() == 0) {
					renkanshuDAO.delete(renkanshu);
				}

				Remark remark = (Remark) remarkDAO.findByOrderauditId(
						orderAudit.getId()).get(0);
				String remarkContent = remark.getOperContent();
				remarkContent += "  审核人：" + auditYwy.getYwyXingming()
						+ ", 审核时间：" + timeStamp + ", 审核结果：不通过" + ", 审核理由："
						+ auditReason;
				remark.setOperContent(remarkContent);
				remark.setAuditTime(timeStamp);
				remark.setAuditYwyName(auditYwy.getYwyXingming());
				remark.setState("N");
				remarkDAO.merge(remark);

				content = "添加订单--认刊书编号：" + orderAudit.getRenkanbianhao()
						+ " 广告客户：" + orderAudit.getKanhu() + "的信息《不》通过审核，审核人："
						+ auditYwy.getYwyXingming() + " 审核理由：" + auditReason;
			}
		}

		// Date datenow = new Date();
		// // format的格式可以任意
		// DateFormat sdf2TS = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		// String dateStr = sdf2TS.format(datenow);
		// Timestamp timeStamp = new Timestamp(System.currentTimeMillis());
		// String tsStr = dateStr;
		// timeStamp = Timestamp.valueOf(tsStr);
		// 生成消息
		Message message = new Message();
		message.setContent(content);
		message.setYewuyuan(orderAudit.getYewuyuanByOperYwyId());
		message.setTime(timeStamp);
		message.setHasRead(0);
		messageDAO.save(message);

	}

	public void update(Integer userID, Integer id, String guanggaoneirong,
			Short industryId, String ledId, Integer shichang, Integer pinci,
			Date kaishishijian, Date jieshushijian, Integer shuliang,
			String updateReason, Double kanlizongjia, Double kanlixiaoji) {
		System.out
				.println("…………………………………………进入yewuService.update………………………………………………");
		Yewuyuan operUser = yewuyuanDAO.findById(userID);
		System.out.println("operUser:" + operUser);
		Led led = ledDAO.findById(ledId);
		Industry industry = industryDAO.findById(industryId);
		System.out.println("operUser:" + operUser + "   led:" + led);
		
		Yewu yewu = yewuDAO.findById(id);
		
		Renkanshu renkanshu = yewu.getRenkanshu();
		// format的格式可以任意
		Date datenow = new Date();
		DateFormat sdf2TS = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String dateStr = sdf2TS.format(datenow);
		Timestamp timeStamp = new Timestamp(System.currentTimeMillis());
		String tsStr = dateStr;
		timeStamp = Timestamp.valueOf(tsStr);

		String remarkContent = "" + timeStamp + " " + operUser.getYwyXingming()
				+ " 修改订单———认刊书编号：" + yewu.getRenkanshu().getRenkanbianhao()
				+ " 广告客户：" + yewu.getRenkanshu().getGuangaokanhu() + " 将";
		if (!guanggaoneirong.equals(yewu.getGuanggaoneirong())) {
			remarkContent += "广告内容：" + yewu.getGuanggaoneirong() + " 修改为 "
					+ guanggaoneirong + "; ";
		}
		if (!industryId.equals(yewu.getIndustry().getIndustryId())) {
			remarkContent += "行业：" + yewu.getIndustry().getIndustryDesc()
					+ " 修改为 " + industry.getIndustryDesc() + "; ";
		}
		if (!ledId.equals(yewu.getLed().getLedId())) {
			remarkContent += "屏幕：" + yewu.getLed().getLedName() + " 更换为 "
					+ led.getLedName() + "; ";
		}
		if (!shichang.equals(yewu.getShichang())) {
			remarkContent += "时长：" + yewu.getShichang() + "秒 修改为 " + shichang
					+ "秒; ";
		}
		if (!pinci.equals(yewu.getPinci())) {
			remarkContent += "频次：" + yewu.getPinci() + "次 修改为 " + pinci + "次; ";
		}
		if (!kaishishijian.equals(yewu.getKaishishijian())) {
			remarkContent += "开始时间：" + sdf.format(yewu.getKaishishijian())
					+ " 修改为 " + sdf.format(kaishishijian) + "; ";

		}
		if (!jieshushijian.equals(yewu.getJieshushijian())) {
			remarkContent += "结束时间：" + sdf.format(yewu.getJieshushijian())
					+ " 修改为 " + sdf.format(jieshushijian) + "; ";
		}
		if (!shuliang.equals(yewu.getShuliang())) {
			remarkContent += "数量：" + yewu.getShuliang() + "周 修改为 " + shuliang
					+ "周; ";
		}
		remarkContent += "<br>" + "修改理由：" + updateReason;
		// if (!state.equals(yewu.getState())) {
		// if (yewu.getState().equals("N"))
		// remarkContent += "订单状态：上画 修改为 下画";
		// if (yewu.getState().equals("U"))
		// remarkContent += "订单状态：下画 修改为 上画";
		//
		// }

		Orderaudit orderAudit = new Orderaudit();
		orderAudit.setYewuId(id);
		orderAudit.setRenkanbianhao(yewu.getRenkanshu().getRenkanbianhao());
		orderAudit.setYewuyuanByOperYwyId(operUser);
		orderAudit.setKanhu(yewu.getKanhu());
		orderAudit.setGuanggaoneirong(guanggaoneirong);
		orderAudit.setLeixing(yewu.getLeixing());
		orderAudit.setIndustry(industry);
		orderAudit.setLed(led);
		orderAudit.setShichang(shichang);
		orderAudit.setPinci(pinci);
		orderAudit.setKaishishijian(kaishishijian);
		orderAudit.setJieshushijian(jieshushijian);
		orderAudit.setShuliang(shuliang);
		orderAudit.setKanlijiaxiaoji(kanlixiaoji);
		orderAudit.setOperReason(updateReason);
		// orderAudit.setOrderState(state);
		orderAudit.setOperTimestamp(new Date());
		orderAudit.setOperType("L");
		orderauditDAO.save(orderAudit);
		
		renkanshu.setKanlizongjia(kanlizongjia);
		renkanshuDAO.merge(renkanshu);

		Remark remark = new Remark();
		remark.setOperTime(timeStamp);
		remark.setOperYwyName(operUser.getYwyXingming());
		remark.setYewu(yewu);
		remark.setOperContent(remarkContent);
		remark.setOrderauditId(orderAudit.getId());
		remark.setState("A");
		remarkDAO.save(remark);

		System.out.println("-------------------------orderAudit.getId:"
				+ orderAudit.getId());

		// 修改品牌信息
		// Map session = ActionContext.getContext().getSession();
		// String username=(String) session.get("loginName");
		// String
		// content=operUser.getYwyXingming()+"修改了认刊书编号为："+yewubefore.getRenkanshu().getRenkanbianhao()+",广告客户为："+yewubefore.getKanhu()+"的订单信息，请审核！";
		// Message message = new Message(new Date(), 0, content, orderAudit.);
		// messageDao.save(message);
	}

	/**
	 * 
	 * updatemyAuidtOrder: 待审核订单修改
	 * TODO 用户主动查错修改，或者审核未通过，进行修改
	 * @author Wu. Van 
	 * @param kanhu
	 * @param yewuyuan
	 * @param leixing
	 * @param qiandingriqi
	 * @param userID
	 * @param id
	 * @param guanggaoneirong
	 * @param industryId
	 * @param kanlizongjia
	 * @param zhekou
	 * @param kanlixiaoji
	 * @param ledId
	 * @param shichang
	 * @param pinci
	 * @param kaishishijian
	 * @param jieshushijian
	 * @param shuliang
	 * @param updateReason 
	 * @since JDK 1.6
	 */
	public void updatemyAuidtOrder(String kanhu, Integer yewuyuan,
			String leixing, Date qiandingriqi, Integer userID, Integer id,
			String guanggaoneirong, Short industryId, Double kanlizongjia,
			Double zhekou, Double kanlixiaoji, String ledId, Integer shichang,
			Integer pinci, Date kaishishijian, Date jieshushijian,
			Integer shuliang, String updateReason) {
		System.out.println("………………进入yewuService.updatemyAuidtOrder………………");
		Yewuyuan operUser = yewuyuanDAO.findById(userID);
		System.out.println("operUser:" + operUser);
		Led led = ledDAO.findById(ledId);
		Industry industry = industryDAO.findById(industryId);
		System.out.println("operUser:" + operUser + "   led:" + led);

		Orderaudit orderaudit = orderauditDAO.findById(id);
		// format的格式可以任意
		Date datenow = new Date();
		DateFormat sdf2TS = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String dateStr = sdf2TS.format(datenow);
		Timestamp timeStamp = new Timestamp(System.currentTimeMillis());
		String tsStr = dateStr;
		timeStamp = Timestamp.valueOf(tsStr);
		

		// 修改认刊书里的刊户，行业
		String myrenkanbianhao = orderaudit.getRenkanbianhao();
		
		String messageTmp = "";

		Renkanshu renkanshuinstance = (Renkanshu) renkanshuDAO
				.findByRenkanbianhao(myrenkanbianhao).get(0);
		// 后台验证认刊书内容修改了才进行数据库端操作
		if (renkanshuinstance.getGuangaokanhu().equals(kanhu)) {
		} else {
			messageTmp += "将广告刊户 " + renkanshuinstance.getGuangaokanhu()
					+ " 修改为 " + kanhu + " ";
			renkanshuinstance.setGuangaokanhu(kanhu);
			
			orderaudit.setKanhu(kanhu);
		}
		if (renkanshuinstance.getYwyId() == yewuyuan) {
		} else {
			messageTmp += "将业务员 "
					+ yewuyuanDAO.findById(renkanshuinstance.getYwyId())
							.getYwyXingming() + " 修改为 "
					+ yewuyuanDAO.findById(yewuyuan).getYwyXingming() + " ";
			renkanshuinstance.setYwyId(yewuyuan);
			
			orderaudit.setYewuyuanByYwyId(yewuyuanDAO.findById(yewuyuan));;
		}
		if (renkanshuinstance.getKanlizongjia() == kanlizongjia) {
		} else {
			messageTmp += "将合计实付 " + renkanshuinstance.getKanlizongjia()
					+ " 修改为 " + kanlizongjia + " ";
			renkanshuinstance.setKanlizongjia(kanlizongjia);
		}
		if (renkanshuinstance.getZhekou() == zhekou) {
		} else {
			messageTmp += "将折扣 " + renkanshuinstance.getZhekou() + " 修改为 "
					+ zhekou + " ";
			renkanshuinstance.setZhekou(zhekou);
		}
		if(renkanshuinstance.getIndustry().getIndustryId() == industryId){
			
		}else {
			messageTmp += "将广告所属行业 " + renkanshuinstance.getIndustry().getIndustryDesc() + " 修改为 "
					+ industry.getIndustryDesc() + " ";
			renkanshuinstance.setIndustry(industry);
			
			orderaudit.setIndustry(industry);
		}
		if(renkanshuinstance.getGuanggaoneirong().equals(guanggaoneirong)){
		}else {
			messageTmp += "将广告内容 " + renkanshuinstance.getGuanggaoneirong() + " 修改为 "
					+ guanggaoneirong + " ";
			renkanshuinstance.setGuanggaoneirong(guanggaoneirong);
			
			orderaudit.setGuanggaoneirong(guanggaoneirong);
		}
		if("".equals(messageTmp)){
			messageTmp += " 用户修改了上画点位信息";
		}
		renkanshuDAO.merge(renkanshuinstance);

		/**
		 * 增加刊户和类型可以修改 160902 16:03
		 */
		
		orderaudit.setLeixing(leixing);
		orderaudit.setKanlijiaxiaoji(kanlixiaoji);

		// orderaudit.setYewuId(id);
		orderaudit.setYewuyuanByOperYwyId(operUser);
		orderaudit.setGuanggaoneirong(guanggaoneirong);
		orderaudit.setIndustry(industry);
		orderaudit.setLed(led);
		orderaudit.setShichang(shichang);
		orderaudit.setPinci(pinci);
		orderaudit.setKaishishijian(kaishishijian);
		orderaudit.setJieshushijian(jieshushijian);
		orderaudit.setShuliang(shuliang);
		orderaudit.setOperReason(updateReason);
		// orderAudit.setOrderState(state);
		orderaudit.setOperTimestamp(new Date());
		orderaudit.setOperType("A");
		orderauditDAO.merge(orderaudit);
		
		
		// 添加remark记录，以显示在业务审核页面
		// 删除之前的remark记录
		Remark remark = (Remark) remarkDAO.findByOrderauditId(
				orderaudit.getId()).get(0);
		String remarkContent = "用户主动修改：" + timeStamp + " "
				+ operUser.getYwyXingming() + " 认刊书编号："
				+ orderaudit.getRenkanbianhao() + messageTmp;
		if (updateReason != null && updateReason != "") {
			remarkContent += "<br>" + "修改理由：" + updateReason;
		}

		remark.setOperTime(timeStamp);
		remark.setOperYwyName(operUser.getYwyXingming());
		remark.setOperContent(remarkContent);
		remark.setState("A");

		remarkDAO.merge(remark);
		System.out.println("-------------------------orderAudit.getId:"
				+ orderaudit.getId());
	}

	public void upOrder(Integer userID, Integer id, String guanggaoneirong,
			Short industryId, String ledId, Integer shichang, Integer pinci,
			Date kaishishijian, Date jieshushijian, Integer shuliang,
			String addReason) {
		System.out
				.println("…………………………………………进入yewuService.update………………………………………………");
		Yewuyuan operUser = yewuyuanDAO.findById(userID);
		System.out.println("operUser:" + operUser);
		Led led = ledDAO.findById(ledId);
		Industry industry = industryDAO.findById(industryId);
		System.out.println("operUser:" + operUser + "   led:" + led);

		Yewu yewu = yewuDAO.findById(id);
		// format的格式可以任意
		Date datenow = new Date();
		DateFormat sdf2TS = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateStr = sdf2TS.format(datenow);
		Timestamp timeStamp = new Timestamp(System.currentTimeMillis());
		String tsStr = dateStr;
		timeStamp = Timestamp.valueOf(tsStr);

		String remarkContent = "" + timeStamp + " " + operUser.getYwyXingming()
				+ " 添加订单（上画）———认刊书编号：" + yewu.getRenkanshu().getRenkanbianhao()
				+ " 广告客户：" + yewu.getRenkanshu().getGuangaokanhu() + "<br>"
				+ " 上画理由：" + addReason;

		System.out.println(remarkContent);
		Orderaudit orderAudit = new Orderaudit();
		// orderAudit.setYewuId(id);
		orderAudit.setRenkanbianhao(yewu.getRenkanshu().getRenkanbianhao());
		orderAudit.setYewuyuanByOperYwyId(operUser);
		orderAudit.setKanhu(yewu.getKanhu());
		orderAudit.setGuanggaoneirong(guanggaoneirong);
		orderAudit.setLeixing(yewu.getLeixing());
		orderAudit.setIndustry(industry);
		orderAudit.setLed(led);
		orderAudit.setShichang(shichang);
		orderAudit.setPinci(pinci);
		orderAudit.setKaishishijian(kaishishijian);
		orderAudit.setJieshushijian(jieshushijian);
		orderAudit.setShuliang(shuliang);
		orderAudit.setOperTimestamp(new Date());
		orderAudit.setOperReason(addReason);
		orderAudit.setOperType("A");
		orderauditDAO.save(orderAudit);

		Remark remark = new Remark();
		remark.setOperTime(timeStamp);
		remark.setOperYwyName(operUser.getYwyXingming());
		remark.setYewu(yewu);
		remark.setOperContent(remarkContent);
		remark.setOrderauditId(orderAudit.getId());
		remark.setState("A");
		remarkDAO.save(remark);

		System.out.println("-------------------------orderAudit.getId:"
				+ orderAudit.getId());

		// 修改品牌信息
		// Map session = ActionContext.getContext().getSession();
		// String username=(String) session.get("loginName");
		// String
		// content=operUser.getYwyXingming()+"修改了认刊书编号为："+yewubefore.getRenkanshu().getRenkanbianhao()+",广告客户为："+yewubefore.getKanhu()+"的订单信息，请审核！";
		// Message message = new Message(new Date(), 0, content, orderAudit.);
		// messageDao.save(message);
	}

	public void deleteOderByID(Integer yewuyuanId, Integer idInteger) {
		Yewuyuan operYewuyuan = yewuyuanDAO.findById(yewuyuanId);
		Yewu yewu = yewuDAO.findById(idInteger);
		Orderaudit orderAudit = new Orderaudit();
		orderAudit.setYewuId(idInteger);
		orderAudit.setRenkanbianhao(yewu.getRenkanshu().getRenkanbianhao());
		orderAudit.setYewuyuanByOperYwyId(operYewuyuan);
		orderAudit.setGuanggaoneirong(yewu.getGuanggaoneirong());
		orderAudit.setIndustry(yewu.getIndustry());
		orderAudit.setLed(yewu.getLed());
		orderAudit.setShichang(yewu.getShichang());
		orderAudit.setPinci(yewu.getPinci());
		orderAudit.setKaishishijian(yewu.getKaishishijian());
		orderAudit.setJieshushijian(yewu.getJieshushijian());
		orderAudit.setShuliang(yewu.getShuliang());
		orderAudit.setOperTimestamp(new Date());
		orderAudit.setOperType("D");
		orderauditDAO.save(orderAudit);

		// format的格式可以任意
		Date datenow = new Date();
		DateFormat sdf2TS = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateStr = sdf2TS.format(datenow);
		Timestamp timeStamp = new Timestamp(System.currentTimeMillis());
		String tsStr = dateStr;
		timeStamp = Timestamp.valueOf(tsStr);

		String remarkContent = "" + timeStamp + " "
				+ operYewuyuan.getYwyXingming() + " 删除订单———认刊书编号："
				+ yewu.getRenkanshu().getRenkanbianhao() + " 广告客户："
				+ yewu.getRenkanshu().getGuangaokanhu() + " 广告内容："
				+ yewu.getGuanggaoneirong() + " 行业："
				+ yewu.getIndustry().getIndustryDesc() + " 广告类型："
				+ yewu.getLeixing() + " 屏幕：" + yewu.getLed().getLedName()
				+ " 时长：" + yewu.getShichang() + " 频次：" + yewu.getPinci()
				+ " 开始时间：" + yewu.getKaishishijian() + " 结束时间："
				+ yewu.getJieshushijian() + " 数量：" + yewu.getShuliang();
		Remark remark = new Remark();
		remark.setOperTime(timeStamp);
		remark.setOperYwyName(operYewuyuan.getYwyXingming());
		remark.setYewu(yewu);
		remark.setOperContent(remarkContent);
		remark.setOrderauditId(orderAudit.getId());
		remark.setState("A");
		remarkDAO.save(remark);
	}

	public void downOderByID(Integer yewuyuanId, Integer idInteger,
			Date xiahuaDate, String xiahua_Reason) {
		System.out
				.println("-----------------------------------进入downOderByID----------------------------------");
		Yewuyuan operYewuyuan = yewuyuanDAO.findById(yewuyuanId);
		Yewu yewu = yewuDAO.findById(idInteger);
		Orderaudit orderAudit = new Orderaudit();
		orderAudit.setYewuId(idInteger);
		orderAudit.setRenkanbianhao(yewu.getRenkanshu().getRenkanbianhao());
		orderAudit.setYewuyuanByOperYwyId(operYewuyuan);
		orderAudit.setKanhu(yewu.getKanhu());
		orderAudit.setGuanggaoneirong(yewu.getGuanggaoneirong());
		orderAudit.setLeixing(yewu.getLeixing());
		orderAudit.setIndustry(yewu.getIndustry());
		orderAudit.setLed(yewu.getLed());
		orderAudit.setShichang(yewu.getShichang());
		orderAudit.setPinci(yewu.getPinci());
		orderAudit.setKaishishijian(yewu.getKaishishijian());
		// orderAudit.setJieshushijian(yewu.getJieshushijian());

		System.out.println("-----------xiahuaDate----------------");
		orderAudit.setJieshushijian(xiahuaDate);
		orderAudit.setShuliang(yewu.getShuliang());
		orderAudit.setOperTimestamp(new Date());
		System.out.println("-----------xiahua_Reason前----------------");
		orderAudit.setOperReason(xiahua_Reason);
		System.out.println("-----------xiahua_Reason后----------------");
		orderAudit.setOperType("U");
		orderauditDAO.save(orderAudit);

		// format的格式可以任意
		Date datenow = new Date();
		DateFormat sdf2TS = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateStr = sdf2TS.format(datenow);
		Timestamp timeStamp = new Timestamp(System.currentTimeMillis());
		String tsStr = dateStr;
		timeStamp = Timestamp.valueOf(tsStr);

		String remarkContent = "" + timeStamp + " "
				+ operYewuyuan.getYwyXingming() + " 下画订单———认刊书编号："
				+ yewu.getRenkanshu().getRenkanbianhao() + " 广告客户："
				+ yewu.getRenkanshu().getGuangaokanhu() + " 广告内容："
				+ yewu.getGuanggaoneirong() + " 行业："
				+ yewu.getIndustry().getIndustryDesc() + " 广告类型："
				+ yewu.getLeixing() + " 屏幕：" + yewu.getLed().getLedName()
				+ " 时长：" + yewu.getShichang() + " 频次：" + yewu.getPinci()
				+ " 开始时间：" + yewu.getKaishishijian() + " 结束时间："
				+ yewu.getJieshushijian() + " 数量：" + yewu.getShuliang()
				+ "<br>" + "下画理由：" + xiahua_Reason;
		Remark remark = new Remark();
		remark.setOperTime(timeStamp);
		remark.setOperYwyName(operYewuyuan.getYwyXingming());
		remark.setYewu(yewu);
		remark.setOperContent(remarkContent);
		remark.setOrderauditId(orderAudit.getId());
		remark.setState("A");// 审核阶段状态
		remarkDAO.save(remark);
	}

	public List getAuditList() {
		System.out.println("调用???????????yewuService：getAuditListId");
		return orderauditDAO.findAll();
	}

	public List getAllIndustrytst() {
		System.out.println("调用???????????yewuService：getAllLed");
		return industryDAO.findAll();
	}

	/**
	 * 
	 * getAllIndustry: 获取行业一级分类列表，以生成二级菜单. 
	 * TODO (这里描述这个方法适用条件 – 可选). 
	 * @author Wu. Van 
	 * @return 
	 * @since JDK 1.6
	 */
	public List getAllIndustryclassify() {
		System.out.println("调用???????????yewuService：getAllIndustryclassify");
		return industryclassifyDAO.getAllIndustryclassify();
	}

}
