package com.nfledmedia.dynamicQuoSys.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.hibernate.mapping.Set;
import org.json.JSONArray;
import org.json.JSONObject;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Service;

import com.nfledmedia.dynamicQuoSys.cons.CommonConstant;
import com.nfledmedia.dynamicQuoSys.entity.Led;
import com.nfledmedia.dynamicQuoSys.entity.Renkanshu;
import com.nfledmedia.dynamicQuoSys.entity.Yewu;
import com.nfledmedia.dynamicQuoSys.entity.Yewuyuan;
import com.nfledmedia.dynamicQuoSys.service.LedService;
import com.nfledmedia.dynamicQuoSys.service.MessageService;
import com.nfledmedia.dynamicQuoSys.service.YewuService;
import com.nfledmedia.dynamicQuoSys.util.Page;
import com.nfledmedia.dynamicQuoSys.util.PageToJson;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

@Service("yewuAction")
public class LedAction extends SuperAction implements ModelDriven<Yewu> {

	private int page;
	private String sidx;
	private String sord;
	private int rows;
	
	private boolean _search;
	private String searchField;
	private String searchString;
	private String searchOper;

	private Integer tid;
	private String id;
	private YewuService yewuService;
	private LedService ledService;
	private Led led;
	
	private String ledId;
	
	@Override
	public Yewu getModel() {
		// TODO Auto-generated method stub
		return null;
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

	public String pingmuguanliList() throws Exception {
		
		Map session = ActionContext.getContext().getSession();
		Integer id = (Integer) session.get(CommonConstant.SESSION_ID);
		System.out.println(" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~前~~~searchString:"+searchString);
		System.out.println(" :::::::::::::::::::::::::::: 调用LedAction中的pingmuguanliList: ");
		System.out.println("  sidx="+sidx+"  sord="+sord+"  page="+page+"  rows="+rows);
		Page result = null;
		if(_search == false){
			result = ledService.getPingmuguanliList(sidx, sord, page, rows);
		}else{
			System.out.println(" ~~~~~~~~~~~~~~~~~~~~~~~~~~searchString:"+searchString);
			result = ledService.getPingmuguanliListByKeyword(searchString, sidx, sord, page, rows);
		}
		
		JSONObject jsonObject = PageToJson.toJsonWithoutData(result);
		JSONArray jsonArray = new JSONArray();
		List data = result.getResult();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		for(int i=0,size=data.size();i<size;i++){	
			
			Object[] row = (Object[])data.get(i);
			
			JSONObject jsonObject1 = new JSONObject();
			jsonObject1.put("id", row[0]);
			
			JSONArray jsonArray2 = new JSONArray(); //求取cell
			jsonArray2.put(row[0]);//屏幕id
			jsonArray2.put(row[1]);//屏幕代码
			JSONObject jsonObject2 = new JSONObject(); 
			jsonObject2.put("id", row[0]);//屏幕id
			jsonObject2.put("name", row[2]);//屏幕名称
			jsonArray2.put(jsonObject2); 

			jsonArray2.put(row[3]);//安装位置		
			jsonArray2.put(row[4]);//可播时长
			jsonArray2.put(row[5]);//典型刊例价
			
			String state=row[6].toString();
			if(state.equals("A")){
				jsonArray2.put("激活");//led状态
			}else{
				jsonArray2.put("未激活");//led状态
			}
					
					
			jsonObject1.put("cell", jsonArray2); //加入cell
			jsonArray.put(jsonObject1);
		}
		jsonObject.put("rows", jsonArray); //加入rows
		System.out.println("jsonObject:"+jsonObject.toString());
		sentMsg(jsonObject.toString());
		return SUCCESS;
	}
	
	public String ledResourceList() throws Exception {
		
		Map session = ActionContext.getContext().getSession();
		Integer id = (Integer) session.get(CommonConstant.SESSION_ID);
		System.out.println(" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~前~~~searchString:"+searchString);
		System.out.println(" :::::::::::::::::::::::::::: 调用LedAction中的pingmuguanliList: ");
		System.out.println("  sidx="+sidx+"  sord="+sord+"  page="+page+"  rows="+rows);
		Page result = null;
		if(_search == false){
			result = ledService.getledResourceList(sidx, sord, page, rows);
		}else{
			System.out.println(" ~~~~~~~~~~~~~~~~~~~~~~~~~~searchString:"+searchString);
			result = ledService.getledResourceListByKeyword(searchString, sidx, sord, page, rows);
		}
		
		JSONObject jsonObject = PageToJson.toJsonWithoutData(result);
		JSONArray jsonArray = new JSONArray();
		List data = result.getResult();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		for(int i=0,size=data.size();i<size;i++){	
			
			Object[] row = (Object[])data.get(i);
			
			JSONObject jsonObject1 = new JSONObject();
			jsonObject1.put("id", row[0]);
			
			JSONArray jsonArray2 = new JSONArray(); //求取cell
//			jsonArray2.put(row[0]);//屏幕id
			jsonArray2.put(row[1]);//屏幕代码
			JSONObject jsonObject2 = new JSONObject(); 
			jsonObject2.put("id", row[0]);//屏幕id
			jsonObject2.put("name", row[2]);//屏幕名称
			jsonArray2.put(jsonObject2); 

			jsonArray2.put(row[3]);//安装位置		
			jsonArray2.put(row[4]);//开始时间
			jsonArray2.put(row[5]);//结束时间
			DecimalFormat df =new DecimalFormat("#####0.00");
			Double shichang=Double.parseDouble(row[6].toString());
			Double shichangHour=shichang/3600;
			jsonArray2.put(df.format(shichangHour));//可播时长
			
			jsonArray2.put(row[7]);//典型刊例价
			
			String state=row[8].toString();
			if(state.equals("A")){
				jsonArray2.put("激活");//led状态
			}else{
				jsonArray2.put("未激活");//led状态
			}
					
					
			jsonObject1.put("cell", jsonArray2); //加入cell
			jsonArray.put(jsonObject1);
		}
		jsonObject.put("rows", jsonArray); //加入rows
		System.out.println("jsonObject:"+jsonObject.toString());
		sentMsg(jsonObject.toString());
		return SUCCESS;
	}
	
	public String ledUpdatePage() throws Exception {
		ActionContext ctx = ActionContext.getContext();
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		led = ledService.loadLedByID(ledId);
		ctx.put("ledname", led.getLedName());
		ctx.put("weizhi", led.getLedWeizhi());
		ctx.put("fenbianlv", led.getLedFenbianlv());
		ctx.put("leixing", led.getLedLeixing());
		return SUCCESS;
	}
	
	public String updateLed() throws Exception{
		System.out.println("………………………………调用ledAction中的updateLed……………………………………");
		JSONObject jsonObject = new JSONObject();
		Map session = ActionContext.getContext().getSession();
//		Integer userID = (Integer) session.get(CommonConstant.SESSION_ID);
		ledService.update(led);
//		System.out.println("………………………………调用yewuService.update后……………………………………");
		jsonObject.put("state", 0);
		jsonObject.put("info", "修改成功!");
		sentMsg(jsonObject.toString());
		return null;
	}
	
	public String deleteLed() throws Exception{
		System.out.println("………………………………调用ledAction中的deleteLed……………………………………");
		ledService.deleteLed(id);
		return null;
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

	public String getSearchField() {
		return searchField;
	}

	public void setSearchField(String searchField) {
		this.searchField = searchField;
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

	public Integer getTid() {
		return tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}

	public YewuService getYewuService() {
		return yewuService;
	}

	public void setYewuService(YewuService yewuService) {
		this.yewuService = yewuService;
	}
	
	public String getLedId() {
		return ledId;
	}

	public void setLedId(String ledId) {
		this.ledId = ledId;
	}

	public LedService getLedService() {
		return ledService;
	}

	public void setLedService(LedService ledService) {
		this.ledService = ledService;
	}

	public Led getLed() {
		return led;
	}

	public void setLed(Led led) {
		this.led = led;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	
}
