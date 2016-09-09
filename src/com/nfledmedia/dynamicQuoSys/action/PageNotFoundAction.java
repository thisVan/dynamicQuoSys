package com.nfledmedia.dynamicQuoSys.action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 处理404
 */
@SuppressWarnings("serial")
public class PageNotFoundAction extends ActionSupport {

	@Override
	public String execute() throws Exception {
		return "404";
	}
}
