package com.nfledmedia.dynamicQuoSys.service;
import java.util.List;

import javax.persistence.Entity;

import org.springframework.stereotype.Service;

import com.nfledmedia.dynamicQuoSys.dao.DingdanshoukuaninfoDAO;
import com.nfledmedia.dynamicQuoSys.dao.ShoukuanDAO;
import com.nfledmedia.dynamicQuoSys.entity.Dingdanshoukuaninfo;
import com.nfledmedia.dynamicQuoSys.entity.Shoukuan;

/**       
 * 项目名称：dynamicQuoSys 
 * 类全名:com.nfledmedia.dynamicQuoSys.service.DingdanstateService 
 * 类描述：  
 * 创建人：Van@nfledmedia 
 * 创建时间：2016年7月21日 下午3:42:39 
 * 修改备注： 
 * @version  jdk1.7 
 * 
 * Copyright (c) 2016, bolven@qq.com All Rights Reserved.     
 */
@Entity
@Service("dingdanstateService")
public class DingdanstateService {
	// 注入DAO
	private DingdanshoukuaninfoDAO dingdanshoukuaninfoDAO;
	public void setDingdanshoukuaninfoDAO(
			DingdanshoukuaninfoDAO dingdanshoukuaninfoDAO) {
		this.dingdanshoukuaninfoDAO = dingdanshoukuaninfoDAO;
	}

	// import in shoukuanDAO
	private ShoukuanDAO shoukuanDAO;
	public void setShoukuanDAO(ShoukuanDAO shoukuanDAO) {
		this.shoukuanDAO = shoukuanDAO;
	}

	/**
	 * 
	 * updateDingdanstate:(这里用一句话描述这个方法的作用). 
	 * TODO (这里描述这个方法适用条件 – 可选). 
	 * @author Wu. Van 
	 * @param strRenkanbianhao 
	 * @since JDK 1.6
	 */
	public void updateDingdanstate(String strRenkanbianhao) {

		@SuppressWarnings("unchecked")
		List<Shoukuan> shoukuanList = shoukuanDAO
				.findBySkRenkanbianhao(strRenkanbianhao);
		System.out.println(shoukuanList);
		double yifukuanjine = 0;
		for (int i = 0; i < shoukuanList.size(); i++) {
			yifukuanjine += shoukuanList.get(i).getSkShoukuanjine();
		}
		System.out.println(yifukuanjine);
		System.out.println("print shoukuanList completed!****************************");

		System.out.println(dingdanshoukuaninfoDAO);
		@SuppressWarnings("unchecked")
		List<Dingdanshoukuaninfo> ddskinfo = (List<Dingdanshoukuaninfo>) dingdanshoukuaninfoDAO
				.findBySkinfoRenkanbianhao(strRenkanbianhao);
		System.out.println(ddskinfo.size());
		Dingdanshoukuaninfo ddskif = new Dingdanshoukuaninfo();
		double weifujine = 0;
		for (int i = 0; i < ddskinfo.size(); i++) {
			ddskif = ddskinfo.get(i);
			ddskif.setSkinfoYidaokuan(yifukuanjine);
			weifujine = ddskinfo.get(i).getSkinfoYfzongjine() - yifukuanjine;
			ddskif.setSkinfoWeifukuan(weifujine);
			ddskif.setSkinfoIsfuqing(isFuqing(ddskinfo.get(i).getSkinfoYfzongjine(), yifukuanjine));

		}
		dingdanshoukuaninfoDAO.merge(ddskif);
		System.out.println("dingdanshoukuaninfo更新成功！：：：");

		/*
		 * String url =
		 * "jdbc:mysql://localhost:3306/led_statistic?useUnicode=true&characterEncoding=GBK"
		 * ; try { Class.forName("com.mysql.jdbc.Driver").newInstance();
		 * Connection conn = DriverManager.getConnection(url, "root",
		 * "123456789"); Statement stmt = conn.createStatement(); ResultSet rs =
		 * stmt .executeQuery(
		 * "select renkanshu.renkanbianhao as renkanbianhao, renkanshu.ywy_id as ywyid, yewuyuan.ywy_xingming as ywyname, renkanshu.guangaokanhu as guanggaokanhu, renkanshu.qiandingriqi as qiandingriqi, renkanshu.guanggaoneirong as guanggaoneirong, renkanshu.kanlizongjia as kanlizongjia from renkanshu,yewuyuan where renkanshu.ywy_id = yewuyuan.ywy_id"
		 * ); int count = 0; String renkanbianhao = ""; String ywyid = "";
		 * String ywyname = ""; String guanggaokanhu = ""; String qiandingriqi =
		 * ""; String guanggaoneirong = ""; String kanlizongjia = ""; while
		 * (rs.next()) { renkanbianhao = rs.getString("renkanbianhao"); ywyid =
		 * rs.getString("ywyid"); ywyname = rs.getString("ywyname");
		 * guanggaokanhu = rs.getString("guanggaokanhu"); qiandingriqi =
		 * rs.getString("qiandingriqi"); guanggaoneirong =
		 * rs.getString("guanggaoneirong"); kanlizongjia =
		 * rs.getString("kanlizongjia"); count++; } rs.close(); stmt.close();
		 * conn.close(); } catch (Exception e) { // TODO: handle exception }
		 */
	}

	public short isFuqing(double d1, double d2) {
		if (d1 - d2 > 0) {
			return 0;
		} else {
			return 1;
		}

	}
}
