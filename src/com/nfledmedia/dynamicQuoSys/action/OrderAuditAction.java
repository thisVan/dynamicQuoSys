package com.nfledmedia.dynamicQuoSys.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.json.JSONObject;

import com.nfledmedia.dynamicQuoSys.cons.CommonConstant;
import com.nfledmedia.dynamicQuoSys.entity.Bumen;
import com.nfledmedia.dynamicQuoSys.entity.Orderaudit;
import com.nfledmedia.dynamicQuoSys.entity.Remark;
import com.nfledmedia.dynamicQuoSys.entity.Renkanshu;
import com.nfledmedia.dynamicQuoSys.entity.Yewu;
import com.nfledmedia.dynamicQuoSys.entity.Yewuyuan;
import com.nfledmedia.dynamicQuoSys.service.BumenService;
import com.nfledmedia.dynamicQuoSys.service.OrderauditService;
import com.nfledmedia.dynamicQuoSys.service.RemarkService;
import com.nfledmedia.dynamicQuoSys.service.RenkanshuService;
import com.nfledmedia.dynamicQuoSys.service.YewuService;
import com.nfledmedia.dynamicQuoSys.service.YewuyuanService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


@SuppressWarnings({"serial","rawtypes"})
public class OrderAuditAction extends ActionSupport {

	private String ids; //批量审核
	private boolean auditResult;
	private String auditReason;
	private String id; //待删除的Brand id,jgGrid默认的参数是id
	private String oper;
	private String upOrder_id;
	private String audit_id;
	private String audit_renkanbianhao;
	
	private String renkanshu_id;
	
	//下画操作
	private String xiahua_ids;
	private String xiahua_jieshushijian;
	private String xiahua_Reason;
	
	private Yewu yewu;
	private YewuService yewuService;
	private Remark remark;
	private RemarkService remarkService;
	private Orderaudit orderaudit;
	private OrderauditService orderauditService; 
	private Renkanshu renkanshu;
	private RenkanshuService renkanshuService;
	
	//我的待审核订单修改
	private Integer myAuditOrder_id;
	
	//设置业务员
	private YewuyuanService yewuyuanService;
	
	
	public YewuyuanService getYewuyuanService() {
		return yewuyuanService;
	}

	public void setYewuyuanService(YewuyuanService yewuyuanService) {
		this.yewuyuanService = yewuyuanService;
	}
	
	//设置部门
	private BumenService bumenService;
	

	public BumenService getBumenService() {
		return bumenService;
	}

	public void setBumenService(BumenService bumenService) {
		this.bumenService = bumenService;
	}

	private void sentMsg(String content) throws IOException{
		
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.print(content);
        out.flush();
        out.close();
	}

	/**
	 * 单条审核，以orderauditId为基础
	 * @return
	 * @throws Exception
	 */
	public String Audit() throws Exception{
		Map session = ActionContext.getContext().getSession();
		System.out.println(".....................调用OrderAuditAction中的batchAudit方法....................");
		System.out.println("ids："+ids+"  auditResult:"+auditResult+"   auditReason:"+auditReason+"   (Integer) session.get(CommonConstant.SESSION_ID):"+(Integer) session.get(CommonConstant.SESSION_ID));
		yewuService.AuditOrders(ids, auditResult, auditReason, (Integer) session.get(CommonConstant.SESSION_ID));
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("state", 0);
		jsonObject.put("info", "审核成功");
		sentMsg(jsonObject.toString());
		return null;
	}
	
	/**
	 * 认刊书审核，以orderauditId为基础
	 * @return
	 * @throws Exception
	 */
	public String renkanshuAudit() throws Exception{
		Map session = ActionContext.getContext().getSession();
		System.out.println(".....................调用OrderAuditAction中的renkanshuAudits方法....................");
		System.out.println("renkanshu_id"+renkanshu_id+"  ids："+ids+"  auditResult:"+auditResult+"   auditReason:"+auditReason+"   (Integer) session.get(CommonConstant.SESSION_ID):"+(Integer) session.get(CommonConstant.SESSION_ID));
		Renkanshu renkanshu=renkanshuService.loadRenkanshuByID(renkanshu_id);
		renkanshu.setState("N");
		renkanshuService.mergeRenkanshu(renkanshu);
		yewuService.AuditOrders(ids, auditResult, auditReason, (Integer) session.get(CommonConstant.SESSION_ID));
		System.out.println("-------renkanshuAudit结束-----------");
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("state", 0);
		jsonObject.put("info", "审核成功");
		sentMsg(jsonObject.toString());
		return null;
	}
	
	/**
	 * 批量审核，以remarkId为基础
	 */
	public String batchAudit() throws Exception{
		Map session = ActionContext.getContext().getSession();
		System.out.println(".....................调用OrderAuditAction中的batchAudit方法....................");
		System.out.println("ids："+ids+"  auditResult:"+auditResult+"   auditReason:"+auditReason+"   (Integer) session.get(CommonConstant.SESSION_ID):"+(Integer) session.get(CommonConstant.SESSION_ID));
		yewuService.batchAuditOrders(ids, auditResult, auditReason, (Integer) session.get(CommonConstant.SESSION_ID));
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("state", 0);
		jsonObject.put("info", "审核成功");
		sentMsg(jsonObject.toString());
		return null;
	}
	
	public void deleteOrder() throws Exception{
		delete();
	}
	
	public String delete() throws Exception{
		System.out.println("-----------------------------------进入delete----------------------------------");
		Map session = ActionContext.getContext().getSession();
		Integer yewuyuanId = (Integer) session.get(CommonConstant.SESSION_ID);
		String[] idss = ids.split(",");
		for(int i=0,size=idss.length;i<size;i++){
			Integer idInteger = Integer.parseInt(idss[i]);
			yewuService.deleteOderByID(yewuyuanId,idInteger);
		}
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("state", 0);
		jsonObject.put("info", "操作成功，请等待审核！");
		sentMsg(jsonObject.toString());
		System.out.println(jsonObject.toString());
		return null;
	}
	
	public void downOrder() throws Exception{
		down();
	}
	
	public String down() throws Exception{
		System.out.println("-----------------------------------进入down----------------------------------");
		System.out.println("xiahua_jieshushijian："+xiahua_jieshushijian+"  xiahua_Reason:"+xiahua_Reason);
		Map session = ActionContext.getContext().getSession();
		Integer yewuyuanId = (Integer) session.get(CommonConstant.SESSION_ID);
		
		DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		System.out.println("---------------------yyyy-MM-dd---------------------------");
		Date xiahuaDate = sdf.parse(xiahua_jieshushijian);
		System.out.println("---------------------xiahuaDate---------------------------");
		
		String[] idss = xiahua_ids.split(",");
		for(int i=0,size=idss.length;i<size;i++){
			Integer idInteger = Integer.parseInt(idss[i]);
			yewuService.downOderByID(yewuyuanId,idInteger,xiahuaDate,xiahua_Reason);
		}
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("state", 0);
		jsonObject.put("info", "操作成功，请等待审核！");
		sentMsg(jsonObject.toString());
		System.out.println(jsonObject.toString());
		return null;
	}
	
	public String upOrderPage() throws Exception {
		ActionContext ctx = ActionContext.getContext();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Integer upYewuId=Integer.parseInt(upOrder_id);
		yewu = yewuService.loadYewuByID(upYewuId);
		
		ctx.put("leds", yewuService.getAllLed());
		ctx.put("industry", yewuService.getAllIndustry());
		ctx.put("industryclassifys", yewuService.getAllIndustryclassify());
		System.out.println("======================================================="+ yewuService.getAllIndustry().size());
		List list = yewuService.getRemarks(yewu.getYewuId());
		String remark = "";
		for (int i = 0; i < list.size(); i++) {
			remark += list.get(i).toString() + "<br>";
		}
		ctx.put("remark", remark);
		ctx.put("qiandingriqi",sdf.format(yewu.getRenkanshu().getQiandingriqi()));
		ctx.put("kaishishijian", sdf.format(yewu.getKaishishijian()));
		ctx.put("jieshushijian", sdf.format(yewu.getJieshushijian()));
		System.out.println("###############调用YewuAction中的upOrderPage函数:yewu"+ yewu);
		System.out.println("###############调用YewuAction中的upOrderPage函数:yewu"+ yewu.getIndustry());
		// System.out.println("###############结束时间##################"+sdf.format(yewu.getKaishishijian()));
		return SUCCESS;
	}
	
	public String auditPage() throws Exception {
		ActionContext ctx = ActionContext.getContext();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Integer remarkId=Integer.parseInt(audit_id);
		remark = remarkService.loadRemarkByID(remarkId);
		System.out.print("@OderAuditAction#159 remark:"+remark.getId()+"   remark.getOrderauditId():"+remark.getOrderauditId()+"    "+remark.getOperContent());

		Integer orderauditId=remark.getOrderauditId();
		System.out.print("orderauditId:"+orderauditId);
		orderaudit = orderauditService.loadOrderauditByID(orderauditId);
		System.out.print("orderaudit:"+orderaudit.getId()+"   "+orderaudit.getRenkanbianhao());

		
	    renkanshu = renkanshuService.loadRenkanshuByID(orderaudit.getRenkanbianhao());
		System.out.print("renkanshu:"+renkanshu.getRenkanbianhao()+"   "+renkanshu.getQiandingriqi()+"  "+renkanshu.getYwyId());
		
		Yewuyuan yewuyuan = yewuyuanService.loadUserByID(renkanshu.getYwyId());
	
		ctx.put("remarkContent",remark.getOperContent());
		ctx.put("qiandingriqi",sdf.format(renkanshu.getQiandingriqi()));
		ctx.put("kaishishijian", sdf.format(orderaudit.getKaishishijian()));
		ctx.put("jieshushijian", sdf.format(orderaudit.getJieshushijian()));
		
		ctx.put("yewuyuan", yewuyuan.getYwyXingming());
		System.out.println("###############调用YewuAction中的auditPage函数:orderaudit"+ orderaudit.getIndustry());
		return SUCCESS;
	}
	
	public String auditRenkanshuPage() throws Exception {
		ActionContext ctx = ActionContext.getContext();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String orderIds="";
		
		renkanshu = renkanshuService.loadRenkanshuByID(audit_renkanbianhao);
		List orderIdList=orderauditService.getOrderIdByRenkanbianhao(audit_renkanbianhao);
		for(int i=0;i<orderIdList.size();i++){
			if(i==orderIdList.size()-1){
				orderIds+=orderIdList.get(i).toString();
			}else{
				orderIds+=orderIdList.get(i).toString()+",";
			}
			
		}
		Yewuyuan yewuyuan = yewuyuanService.loadUserByID(renkanshu.getYwyId());
	
		ctx.put("qiandingriqi",sdf.format(renkanshu.getQiandingriqi()));
		ctx.put("yewuyuan", yewuyuan.getYwyXingming());
		ctx.put("orderIds", orderIds);
		System.out.println("------------orderIds------------"+orderIds);
//		System.out.println("###############调用YewuAction中的auditPage函数:orderaudit"+ orderaudit.getIndustry());
		return SUCCESS;
	}
	
	public String myAuditOrderUpdatePage() throws Exception {
		ActionContext ctx = ActionContext.getContext();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		orderaudit = orderauditService.loadOrderauditByID(myAuditOrder_id);
		
		renkanshu = renkanshuService.loadRenkanshuByID(orderaudit.getRenkanbianhao());
		System.out.println(sdf.format(renkanshu.getQiandingriqi())+"  "+renkanshu.getYwyId()+"  "+renkanshu.getGuangaokanhu());
		
		Yewuyuan thisYewuyuan = yewuyuanService.loadUserByID(renkanshu.getYwyId());
		Bumen bumentmp = thisYewuyuan.getBumen();
		
		ctx.put("bumens", bumenService.getAvailableDepts());
		ctx.put("yewuyuans", bumentmp.getYewuyuans());
		
		ctx.put("bumenID", bumentmp.getBmId());
		ctx.put("yewuyuanID", renkanshu.getYwyId());
		ctx.put("qiandingriqi", sdf.format(renkanshu.getQiandingriqi()));
		ctx.put("leds", yewuService.getAllLed());
		ctx.put("industry", yewuService.getAllIndustry());
		ctx.put("industryclassifys", yewuService.getAllIndustryclassify());
		ctx.put("kaishishijian", sdf.format(orderaudit.getKaishishijian()));
		ctx.put("jieshushijian", sdf.format(orderaudit.getJieshushijian()));
		
		return SUCCESS;
	}
	

	public String getIds() {
		return ids;
	}

	public void setIds(String ids) {
		this.ids = ids;
	}

	public boolean isAuditResult() {
		return auditResult;
	}

	public void setAuditResult(boolean auditResult) {
		this.auditResult = auditResult;
	}

	public String getAuditReason() {
		return auditReason;
	}

	public void setAuditReason(String auditReason) {
		this.auditReason = auditReason;
	}

	public YewuService getYewuService() {
		return yewuService;
	}

	public void setYewuService(YewuService yewuService) {
		this.yewuService = yewuService;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getOper() {
		return oper;
	}

	public void setOper(String oper) {
		this.oper = oper;
	}

	public String getXiahua_ids() {
		return xiahua_ids;
	}

	public void setXiahua_ids(String xiahua_ids) {
		this.xiahua_ids = xiahua_ids;
	}

	public String getUpOrder_id() {
		return upOrder_id;
	}

	public void setUpOrder_id(String upOrder_id) {
		this.upOrder_id = upOrder_id;
	}

	public Yewu getYewu() {
		return yewu;
	}

	public void setYewu(Yewu yewu) {
		this.yewu = yewu;
	}

	public String getAudit_id() {
		return audit_id;
	}

	public void setAudit_id(String audit_id) {
		this.audit_id = audit_id;
	}

	public Remark getRemark() {
		return remark;
	}

	public void setRemark(Remark remark) {
		this.remark = remark;
	}

	public void setRemarkService(RemarkService remarkService) {
		this.remarkService = remarkService;
	}

	public RemarkService getRemarkService() {
		return remarkService;
	}

	public Orderaudit getOrderaudit() {
		return orderaudit;
	}

	public void setOrderaudit(Orderaudit orderaudit) {
		this.orderaudit = orderaudit;
	}

	public Renkanshu getRenkanshu() {
		return renkanshu;
	}

	public void setRenkanshu(Renkanshu renkanshu) {
		this.renkanshu = renkanshu;
	}

	public RenkanshuService getRenkanshuService() {
		return renkanshuService;
	}

	public void setRenkanshuService(RenkanshuService renkanshuService) {
		this.renkanshuService = renkanshuService;
	}

	public OrderauditService getOrderauditService() {
		return orderauditService;
	}

	public void setOrderauditService(OrderauditService orderauditService) {
		this.orderauditService = orderauditService;
	}

	public String getXiahua_jieshushijian() {
		return xiahua_jieshushijian;
	}

	public void setXiahua_jieshushijian(String xiahua_jieshushijian) {
		this.xiahua_jieshushijian = xiahua_jieshushijian;
	}

	public String getXiahua_Reason() {
		return xiahua_Reason;
	}

	public void setXiahua_Reason(String xiahua_Reason) {
		this.xiahua_Reason = xiahua_Reason;
	}

	public Integer getMyAuditOrder_id() {
		return myAuditOrder_id;
	}

	public void setMyAuditOrder_id(Integer myAuditOrder_id) {
		this.myAuditOrder_id = myAuditOrder_id;
	}

	public String getAudit_renkanbianhao() {
		return audit_renkanbianhao;
	}

	public void setAudit_renkanbianhao(String audit_renkanbianhao) {
		this.audit_renkanbianhao = audit_renkanbianhao;
	}

	public String getRenkanshu_id() {
		return renkanshu_id;
	}

	public void setRenkanshu_id(String renkanshu_id) {
		this.renkanshu_id = renkanshu_id;
	}
	
}
