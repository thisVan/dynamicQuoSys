package com.nfledmedia.dynamicQuoSys.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.persistence.ManyToOne;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Service;

import com.nfledmedia.dynamicQuoSys.cons.CommonConstant;
import com.nfledmedia.dynamicQuoSys.entity.Resource;
import com.nfledmedia.dynamicQuoSys.entity.Yewuyuan;
import com.nfledmedia.dynamicQuoSys.service.UserService;
import com.nfledmedia.dynamicQuoSys.service.YewuService;
import com.nfledmedia.dynamicQuoSys.service.YewuyuanService;
import com.nfledmedia.dynamicQuoSys.util.Page;
import com.nfledmedia.dynamicQuoSys.util.PageToJson;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

/**       
 * 项目名称：dynamicQuoSys 
 * 类全名:com.nfledmedia.dynamicQuoSys.action.UserAction 
 * 类描述：  
 * 创建人：Van@nfledmedia 
 * 创建时间：2016年6月13日 下午1:30:44 
 * 修改备注： 
 * @version  jdk1.7 
 * 
 * Copyright (c) 2016, bolven@qq.com All Rights Reserved.     
 */
@Service("userAction")
public class UserAction extends SuperAction implements ModelDriven<Yewuyuan> {

	/**    
	 * serialVersionUID:TODO
	 * @since JDK 1.6     
	 */    
	
	private static final long serialVersionUID = 1L;
	private String returnURL;
	private Yewuyuan yewuyuan;
	private String oldPassword;
	private String newPassword;
	private String repeatedNewPassword;
	private String account;
	
	private int page;
	private String sidx;
	private String sord;
	private int rows;
	
	private boolean _search;
	private String searchField;
	private String searchString;
	private String searchOper;

	private Long tid;
	
	@Override
	public Yewuyuan getModel() {
		// TODO Auto-generated method stub
		if(yewuyuan == null){
			yewuyuan = new Yewuyuan();
		}
		return yewuyuan;
	}
	
	//注入userservice
	@ManyToOne
	private UserService userService;
	@ManyToOne
	private YewuyuanService yewuyuanService;
	@ManyToOne
	private YewuService yewuService;
	
	private void sentMsg(String content) throws IOException{
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.print(content);
        out.flush();
        out.close();
	}

	public String login(){
		ActionContext ctx = ActionContext.getContext();
		if((yewuyuan.getUsername()==null||yewuyuan.getUsername() =="")&&(yewuyuan.getPassword()==null||yewuyuan.getPassword() =="")){
			return "login_failure";
		}
		Yewuyuan user = yewuyuanService.loadUserByUsername(yewuyuan.getUsername());
		System.out.println("~~~~~~~~~~UserAction(yewuyuanName):"+yewuyuan.getUsername());
		if(userService.usersLogin(yewuyuan)){
			session.setAttribute("username", yewuyuan.getUsername());
			request.setAttribute("message", "登录成功！");
			ctx.getSession().put(CommonConstant.SESSION_ID, user.getYwyId());
			String homePage = ((Resource)(user.getRole().getResources().get(0))).getUrl();
			ctx.getSession().put(CommonConstant.SESSION_HOMEPAGE, homePage);
			if(returnURL == null){
				returnURL = homePage;
			}
			System.out.println("~~~~~~~~~~UserAction(returnURL):"+returnURL);
			return "login_success";
		}else{
			request.setAttribute("message", "用户名或密码错误，请重新登录！");
			return "login_failure";
		}	
	}
	public String updateMyPassword() throws Exception{
		Map session = ActionContext.getContext().getSession();
		JSONObject jsonObject = new JSONObject();
		int result = userService.updatePassword((Integer) session.get(CommonConstant.SESSION_ID), oldPassword, newPassword, repeatedNewPassword);
		jsonObject.put("state", result==0);
		jsonObject.put("info", CommonConstant.UPDATE_MY_MESSAGE[result]);
		sentMsg(jsonObject.toString());
		return null;
	}
	
	public String userInfo() throws Exception{
		Map session = ActionContext.getContext().getSession();
		yewuyuan = yewuyuanService.loadUserByID((Integer) session.get(CommonConstant.SESSION_ID));
		return SUCCESS;
	}
	
	public String checkAccount() throws Exception{
		System.out.println("…………………………………………loadUserByUsername…………………………………………………………"+account);
		Yewuyuan y = yewuyuanService.loadUserByUsername(account);
		System.out.println("………………………………………………………………………………account……………………"+account);
		System.out.println("………………………………………………………………………………y == null………………"+(y == null));
		JSONObject jsonObject = new JSONObject();	
		jsonObject.put("info", y == null);
		sentMsg(jsonObject.toString());
		return null;
	}
	
	public String addUserInfo() throws Exception{
		System.out.println("~~~~~~~~~~UserAction:调用addUserInfo:yewuyuan:"+yewuyuan);
		System.out.println("~~~~~~~~~~UserAction:调用addUserInfo:yewuyuan.getYwyXingming():"+yewuyuan.getYwyXingming());
		System.out.println("~~~~~~~~~~UserAction:调用addUserInfo:yewuyuan.getYwyRuzhishijian():"+yewuyuan.getYwyRuzhishijian());
		yewuyuanService.addUserInfo(yewuyuan);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("info", true);
		System.out.println("~~~~~~~~~~UserAction:调用addUserInfo：after set info true");
		sentMsg(jsonObject.toString());
		return null;
	}
	
	public String updateUserInfo() throws Exception{
		System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~UserAction:调用updateUserInfo:yewuyuan:"+yewuyuan);
		System.out.println("~~~~~~~~~~~~~~~~~~~~~~~UserAction:调用updateUserInfo:yewuyuan.getYwyId():"+yewuyuan.getYwyId());
		yewuyuanService.updateUserInfo(yewuyuan);
		
		System.out.println("UserAction执行yewuyuanService.updateUserInfo(yewuyuan)后");
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("info", true);
		sentMsg(jsonObject.toString());
		System.out.println("jsonObject.toString()"+jsonObject.toString());
		return null;
	}

	public String userlist() throws Exception{
		Map session = ActionContext.getContext().getSession();
		Integer id = (Integer) session.get(CommonConstant.SESSION_ID);
		System.out.println("！！！！！！！！！！！！！！！！！！！  sidx="+sidx+"  sord="+sord+"  page="+page+"  rows="+rows+"     !!!!!!!!!!!!!!!!!!!");
		Page result = null;
		if(_search == false){
			result = yewuyuanService.getYewuyuanList(sidx, sord, page, rows);
		}else{
			result = yewuyuanService.getYewuyuanListByKeyword(searchString, sidx, sord, page, rows);
			System.out.println("searchString:"+searchString);
		}
		
		JSONObject jsonObject = PageToJson.toJsonWithoutData(result);
		JSONArray jsonArray = new JSONArray();
		List data = result.getResult();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		for(int i=0,size=data.size();i<size;i++){	
			
			Object[] row = (Object[])data.get(i);
			
			JSONObject jsonObject1 = new JSONObject();					
			JSONArray jsonArray2 = new JSONArray(); //求取cell					
					
			JSONObject jsonObject2 = new JSONObject(); 
			jsonObject2.put("id", row[0]);
			jsonObject2.put("name", row[1]);
			jsonArray2.put(jsonObject2); //用户名
			
			jsonArray2.put(row[2]);//姓名		
			jsonArray2.put(row[3]);//部门
			jsonArray2.put(row[4]);//角色 
			jsonArray2.put(row[5]);//密码
									
			jsonObject1.put("cell", jsonArray2); //加入cell
			jsonArray.put(jsonObject1);

		}
		jsonObject.put("rows", jsonArray); //加入rows
		
		sentMsg(jsonObject.toString());
		return null;
	}
	public String getAllDepartment() throws Exception {
		List result=null;
		result = yewuyuanService.getAllDepartment();
		System.out.println("调用???????????yewuAction：getAllLed");
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("info", result);
		sentMsg(jsonObject.toString());
		return null;
	}
	public String getAllRole() throws Exception {
		List result=null;
		result = yewuyuanService.getAllRole();
		System.out.println("调用???????????yewuAction：getAllLed");
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("info", result);
		sentMsg(jsonObject.toString());
		return null;
	}
	
	public String getAuditAttention() throws Exception {
		
		Map session = ActionContext.getContext().getSession();
		Integer id = (Integer) session.get(CommonConstant.SESSION_ID);
		Yewuyuan ywy=yewuyuanService.loadUserByID(id);
		
		if((ywy.getRole().getId()==1)||(ywy.getRole().getId()==5)){
			List orderAuditList=yewuService.getAuditList();			
			int result = orderAuditList.size();
			System.out.println("调用???????????getAuditAttention");
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("number", result);
			sentMsg(jsonObject.toString());	
		}
		return null;
	}
	
	
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public void setYewuyuanService(YewuyuanService yewuyuanService) {
		this.yewuyuanService = yewuyuanService;
	}
	public String getReturnURL() {
		return returnURL;
	}

	public void setReturnURL(String returnURL) {
		this.returnURL = returnURL;
	}

	public String getOldPassword() {
		return oldPassword;
	}

	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public String getRepeatedNewPassword() {
		return repeatedNewPassword;
	}

	public void setRepeatedNewPassword(String repeatedNewPassword) {
		this.repeatedNewPassword = repeatedNewPassword;
	}

	public Yewuyuan getYewuyuan() {
		return yewuyuan;
	}

	public void setYewuyuan(Yewuyuan yewuyuan) {
		this.yewuyuan = yewuyuan;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public String getSidx() {
		return sidx;
	}

	public void setSidx(String sidx) {
		this.sidx = sidx;
	}

	public String getSord() {
		return sord;
	}

	public void setSord(String sord) {
		this.sord = sord;
	}

	public int getRows() {
		return rows;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	public boolean is_search() {
		return _search;
	}

	public void set_search(boolean _search) {
		this._search = _search;
	}

	public String getSearchString() {
		return searchString;
	}

	public void setSearchString(String searchString) {
		this.searchString = searchString;
	}

	public String getSearchOper() {
		return searchOper;
	}

	public void setSearchOper(String searchOper) {
		this.searchOper = searchOper;
	}

	public Long getTid() {
		return tid;
	}

	public void setTid(Long tid) {
		this.tid = tid;
	}

	public void setYewuService(YewuService yewuService) {
		this.yewuService = yewuService;
	}
	
	
	
}

