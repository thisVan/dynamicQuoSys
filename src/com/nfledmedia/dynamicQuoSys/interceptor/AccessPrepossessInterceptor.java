package com.nfledmedia.dynamicQuoSys.interceptor;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.CollationKey;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.TreeMap;

import javax.persistence.ManyToOne;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.ServletActionContext;
import org.springframework.util.Assert;

import com.nfledmedia.dynamicQuoSys.cons.UserState;
import com.nfledmedia.dynamicQuoSys.entity.Resource;
import com.nfledmedia.dynamicQuoSys.entity.Yewuyuan;
import com.nfledmedia.dynamicQuoSys.service.ResourceService;
import com.nfledmedia.dynamicQuoSys.service.YewuyuanService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/**
 * 访问前的拦截器，处理权限，获取用户名，资源列表
 */
@SuppressWarnings({ "serial", "unchecked"})
public class AccessPrepossessInterceptor extends AbstractInterceptor {

	private static final Log logger = LogFactory.getLog(AccessPrepossessInterceptor.class);
	@ManyToOne
	private YewuyuanService yewuyuanService;
	@ManyToOne
	private ResourceService resourceService;
//	private YewuyuanService userService=new YewuyuanService();
	
	private void sentMsg(String content) throws IOException{
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.print(content);
        out.flush();
        out.close();
	}
	
	/* (non-Javadoc)
	 * @see com.opensymphony.xwork2.interceptor.AbstractInterceptor#intercept(com.opensymphony.xwork2.ActionInvocation)
	 */
	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		//获取去掉应用名的uri
		HttpServletRequest sq = ServletActionContext.getRequest();
		String uri = sq.getRequestURI();
		//getContextPath:项目名
		//截取掉uri从首字母起长度为sq.getContextPath().length()+1的字符串，将剩余字符串赋值给str
		uri = uri.substring(sq.getContextPath().length()+1);
		
		String queryString = sq.getQueryString();
		String returnURL = uri+(queryString == null ? "" : "?"+queryString);
		//进入每个action都进行拦截，并进行日志信息输出
		logger.info("进入AccessPrepossessInterceptor："+returnURL);
		System.out.println("  @@@@@@@@@@@@@@@@@@@@@@@ （AccessPrepossessInterceptor）中returnURL:"+returnURL);
		ActionContext ctx = ActionContext.getContext();
		Integer userID = (Integer) ctx.getSession().get("id");
		System.out.println("   @@@@@@@@@@@@@@@@@@@@@@@ AccessPrepossessInterceptor中的userID:"+userID);
		//首先检查是否登录
		if(userID == null){ //未登录的情况a
			ctx.put("messageCode", "notLogin");
			ctx.put("returnURL",returnURL);
			return "redirectLogin";
		}else{ //已登录的情况
			Yewuyuan user = yewuyuanService.loadUserByID(userID);
			//Assert:方法入参检测工具类
			Assert.notNull(user);
			
			UserState state = user.getState();
			System.out.println("   @@@@@@@@@@@@@@@@@@@@@@@  AccessPrepossessInterceptor中UserName:"+user.getUsername());
			System.out.println("   @@@@@@@@@@@@@@@@@@@@@@@  AccessPrepossessInterceptor中UserState:"+state);
			if(state == UserState.DELETE){ //账户已删除
				ctx.put("messageCode", "deleted");
				ctx.put("returnURL", returnURL);
				ctx.getSession().clear(); //清除session
				return "redirectLogin";
			}
			
			String suffix = null;//后缀
			String prefix = null;//前缀
			int dot = uri.lastIndexOf('.');
			if(dot != -1){
				suffix = uri.substring(dot+1, uri.length());
				prefix = uri.substring(0, dot);
			}else{
				prefix = uri;
			}
			
			List<Resource> resourcesList = user.getRole().getResources();
			addResourcesMapToActionContext(resourcesList, ctx);
			List<Resource> resourcesListAll = resourceService.getAllResource() ;
			System.out.println("prefix:"+prefix);
//			for(int i=0;i<resourcesList.size();i++){
//				System.out.println(resourcesList.get(i).getUrl());
//			}
//			for(int i=0;i<resourcesListAll.size();i++){
//				System.out.println(resourcesListAll.get(i).getUrl());
//			}
			boolean flag = getResourcesMapAndActiveMessage(resourcesList,resourcesListAll, prefix);
			if(flag == false){ //无访问权限
				ctx.put("messageCode", "对不起，您没有访问权限");
				return "noAccess";
			}
			ctx.put("name", user.getUsername());
			ctx.put("roleName", user.getRole().getName());
			ctx.put("roleCompetence", user.getRole().getCompetence());
			if(state == UserState.FIRST_LOGIN){ //首次登陆
				ctx.put("firstLogin", true);
			}
			return arg0.invoke();
		}
	}
	
	private void addResourcesMapToActionContext(final List<Resource> resourcesList, ActionContext ctx){
		TreeMap<String, List<Resource>> resourcesMap = new TreeMap<String, List<Resource>>(new Comparator<String>() {
       //TreeMap实现SortMap接口，能够把它保存的记录根据键排序,默认是按键值的升序排序
			@Override
			public int compare(String o1, String o2) {
				if(o1 == null || o2 == null)
					return 0;
				Collator collator = Collator.getInstance();
				CollationKey ck1 = collator.getCollationKey(String.valueOf(o1));
				CollationKey ck2 = collator.getCollationKey(String.valueOf(o2));
				return -ck1.compareTo(ck2);
			}
			
		});
		for(int i=0, size=resourcesList.size(); i<size; i++){
			//搜索资源列表的所有资源，得到某个资源对象以及该资源对象的parentName
			Resource resource = resourcesList.get(i);
			String parentName = resource.getParentName();
			//resourcesMap.get()方法被调用返回指定键映射的值，如果此映射不包含任何映射关系的键，则为null值。
			//创建一个以Resource对象为节点的列表
			List<Resource> resources = resourcesMap.get(parentName);
			//将所有相同parentName的resource对象放在同一个resources列表中，在resourceMap中添加以parentName为键，resources列表为值的键值对
			if(resources == null){
				resources = new ArrayList<Resource>(10);
				resources.add(resource);
				resourcesMap.put(parentName, resources);
			}else{
				resources.add(resource);
			}
		}
		//最后将得到的resourceMap作为值，字符串“resourceMap”作为键放入ActionContext中（相当于一个Map容器）
		ctx.put("resourcesMap", resourcesMap);
	}
	
	//resourcesList权限验证，获取resourcesMap和激活信息(curParentName和curIndex)
	private boolean getResourcesMapAndActiveMessage(final List<Resource> resourcesList,final List<Resource> resourcesListAll, String uri){
		int count=0;
		for(int i=0;i<resourcesListAll.size();i++){
			if(uri.equals(resourcesListAll.get(i).getUrl())){
				for(int j=0;j<resourcesList.size();j++){
					if(!uri.equals(resourcesList.get(j).getUrl()))
						count++;
				}
				if(count==resourcesList.size())
					return false;
			}
		}
		return true;
	}

	public YewuyuanService getYewuyuanService() {
		return yewuyuanService;
	}

	public void setYewuyuanService(YewuyuanService yewuyuanService) {
		this.yewuyuanService = yewuyuanService;
	}

	public ResourceService getResourceService() {
		return resourceService;
	}

	public void setResourceService(ResourceService resourceService) {
		this.resourceService = resourceService;
	}
	
	
	
//	private boolean validCompetence(final long competence, final String uri){
//		return CompetenceUtil.getCompetence(uri, competence);
//	}
	
}
