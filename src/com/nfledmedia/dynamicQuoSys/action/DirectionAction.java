package com.nfledmedia.dynamicQuoSys.action;

import org.springframework.stereotype.Service;

import com.nfledmedia.dynamicQuoSys.entity.Yewuyuan;
import com.nfledmedia.dynamicQuoSys.service.BumenService;
import com.nfledmedia.dynamicQuoSys.service.RoleService;
import com.nfledmedia.dynamicQuoSys.service.YewuService;
import com.nfledmedia.dynamicQuoSys.service.YewuyuanService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@Service("directionAction")
public class DirectionAction extends SuperAction implements ModelDriven<Yewuyuan>{
	/**
	 * @author rthtr
	 */
    private BumenService bumenService;
    private RoleService roleService;
    private Integer ywyId;
    private Yewuyuan yewuyuan;
    private YewuyuanService yewuyuanService;   
    private YewuService yewuService;
    
      
	public Yewuyuan getYewuyuan() {
		return yewuyuan;
	}
	public void setYewuyuan(Yewuyuan yewuyuan) {
		this.yewuyuan = yewuyuan;
	}
	public void setYewuyuanService(YewuyuanService yewuyuanService) {
		this.yewuyuanService = yewuyuanService;
	}
	public void setBumenService(BumenService bumenService) {
		this.bumenService = bumenService;
	}
	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}
	public Integer getYwyId() {
		return ywyId;
	}
	public void setYwyId(Integer ywyId) {
		this.ywyId = ywyId;
	}
	
	public void setYewuService(YewuService yewuService) {
		this.yewuService = yewuService;
	}
	@Override
	public Yewuyuan getModel() {
		return null;
	}
	public String pingmustatistic() throws Exception {
		return SUCCESS;
	}
	public String pingmuguanli() throws Exception {
		return SUCCESS;
	}
	public String index() throws Exception {
		return SUCCESS;
	}
	public String renkantypein() throws Exception {
		return SUCCESS;
	}
	public String dingdanguanli() throws Exception {
		ActionContext ctx = ActionContext.getContext();
		ctx.put("clients", yewuService.getAllClient());
		ctx.put("renkanshubianhao", yewuService.getAllRenkanbianhao());
		return SUCCESS;
	}
	public String renyuanguanli() throws Exception {
		return SUCCESS;
	}
	public String yejistatistic() throws Exception {
		return SUCCESS;
	}
	public String advice() throws Exception {
		return SUCCESS;
	}
	public String pingmustatistic_fenpingtongji() throws Exception {
		return SUCCESS;
	}
	public String setting() throws Exception {
		return SUCCESS;
	}
	public String addpingmu() throws Exception {
		return SUCCESS;
	}
	public String ledsavesuccess() throws Exception {
		return SUCCESS;
	}
	public String message() throws Exception {
		return SUCCESS;
	}	
	public String addUser() throws Exception {
		ActionContext ctx = ActionContext.getContext();
		ctx.put("departments", bumenService.getAllDeparments());
		ctx.put("roles", roleService.getAllRoles());	
		return SUCCESS;
	}
	public String login() throws Exception {
		return SUCCESS;
	}
	public String yewuaudit() throws Exception {
		return SUCCESS;
	}
	public String userUpdate() throws Exception {
		ActionContext ctx = ActionContext.getContext();
		yewuyuan = yewuyuanService.loadUserByID(ywyId);
		ctx.put("departments", bumenService.getAllDeparments());
		ctx.put("roles", roleService.getAllRoles());
		System.out.println("###############调用DirectAction中的userUpdate函数:yewuyuan"+yewuyuan);
		return SUCCESS;
	}
	
	public String hangyestatistic() throws Exception {
		return SUCCESS;
	}
	
	public String ledResource() throws Exception {
		return SUCCESS;
	}
	
	public String myAuditOrderListPage() throws Exception {
		return SUCCESS;
	}
	
	public String renkanshuListAudit() throws Exception {
		return SUCCESS;
	}
}
