package com.nfledmedia.dynamicQuoSys.util;

import org.json.JSONException;
import org.json.JSONObject;

public class PageToJson {	
	
 public static JSONObject toJsonWithoutData(Page page) throws JSONException{
	 JSONObject jsonObject = new JSONObject();
	 jsonObject.put("total", page.getTotalPageCount());
	 jsonObject.put("page",page.getCurrentPageNo());
	 jsonObject.put("records", page.getTotalCount());
	 return jsonObject;
 }
}
