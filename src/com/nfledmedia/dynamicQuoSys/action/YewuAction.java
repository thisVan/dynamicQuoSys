package com.nfledmedia.dynamicQuoSys.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Service;

import com.nfledmedia.dynamicQuoSys.cons.CommonConstant;
import com.nfledmedia.dynamicQuoSys.entity.Bumen;
import com.nfledmedia.dynamicQuoSys.entity.Industry;
import com.nfledmedia.dynamicQuoSys.entity.Remark;
import com.nfledmedia.dynamicQuoSys.entity.Yewu;
import com.nfledmedia.dynamicQuoSys.entity.Yewuyuan;
import com.nfledmedia.dynamicQuoSys.service.BumenService;
import com.nfledmedia.dynamicQuoSys.service.RemarkService;
import com.nfledmedia.dynamicQuoSys.service.YewuService;
import com.nfledmedia.dynamicQuoSys.service.YewuyuanService;
import com.nfledmedia.dynamicQuoSys.util.Page;
import com.nfledmedia.dynamicQuoSys.util.PageToJson;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

@Service("yewuAction")
public class YewuAction extends SuperAction implements ModelDriven<Yewu> {

	private int page;
	private String sidx;
	private String sord;
	private int rows;

	private boolean _search;
	private String searchField;
	private String searchString;
	private String searchOper;

	private Integer tid;
	private Integer yewuId;

	private YewuService yewuService;
	private Yewu yewu;
	private RemarkService remarkService;
	private Remark remark;

	private String kanhu;
	private String guanggaoneirong;
	private String leixing;
	private String ledId;
	private Short industryId;
	private Integer shichang;
	private Integer pinci;
	private Date kaishishijian;
	private Date jieshushijian;
	private Integer shuliang;
	private String updateReason;
	private String addReason;
	private String state;

	// yejistatistic_hangye页面中Form中的数据
	private String timeRange;
	private String industry;
	private String led;
	private String startTime;
	private String endTime;
	private String selectclassifyind;

	// 业务员二级联动接收选中部门
	private String selectbumenid;

	private YewuyuanService yewuyuanService;

	public YewuyuanService getYewuyuanService() {
		return yewuyuanService;
	}

	public void setYewuyuanService(YewuyuanService yewuyuanService) {
		this.yewuyuanService = yewuyuanService;
	}

	private BumenService bumenService;

	public BumenService getBumenService() {
		return bumenService;
	}

	public void setBumenService(BumenService bumenService) {
		this.bumenService = bumenService;
	}

	// 接收myauditorderupdatepage.jsp 页面传来的部分数据
	private String kanlizongjia;
	private String yewuyuan;
	private String zhekou;
	private String kanlixiaoji;
	private String qiandingriqi;

	public String getQiandingriqi() {
		return qiandingriqi;
	}

	public void setQiandingriqi(String qiandingriqi) {
		this.qiandingriqi = qiandingriqi;
	}

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

	public String getKanlixiaoji() {
		return kanlixiaoji;
	}

	public void setKanlixiaoji(String kanlixiaoji) {
		this.kanlixiaoji = kanlixiaoji;
	}

	public String getYewuyuan() {
		return yewuyuan;
	}

	public void setYewuyuan(String yewuyuan) {
		this.yewuyuan = yewuyuan;
	}

	@Override
	public Yewu getModel() {
		// TODO Auto-generated method stub
		return null;
	}

	private void sentMsg(String content) throws IOException {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.print(content);
		out.flush();
		out.close();
	}

	@Override
	public String execute() throws Exception {
		Map session = ActionContext.getContext().getSession();
		Integer id = (Integer) session.get(CommonConstant.SESSION_ID);
		System.out.println("  sidx=" + sidx + "  sord=" + sord + "  page="
				+ page + "  rows=" + rows);
		Page result = null;
		if (_search == false) {
			result = yewuService.getYewuList(sidx, sord, page, rows);
		} else {
			result = yewuService.getYewuListByKeyword(searchString, sidx, sord,
					page, rows);
		}

		JSONObject jsonObject = PageToJson.toJsonWithoutData(result);
		JSONArray jsonArray = new JSONArray();
		List data = result.getResult();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		for (int i = 0, size = data.size(); i < size; i++) {

			Object[] row = (Object[]) data.get(i);

			JSONObject jsonObject1 = new JSONObject();
			JSONArray jsonArray2 = new JSONArray(); // 求取cell

			JSONObject jsonObject2 = new JSONObject();
			jsonObject2.put("id", row[1]);
			jsonArray2.put(jsonObject2); // 认刊编号

			jsonArray2.put(row[2]);// 行业
			jsonArray2.put(row[3]);// 刊户
			jsonArray2.put(row[4]);// 类型

			JSONObject jsonObject3 = new JSONObject();
			jsonObject3.put("id", row[5]);
			jsonObject3.put("name", row[6]);
			jsonArray2.put(jsonObject3); // 业务员

			JSONObject jsonObject4 = new JSONObject();
			jsonObject4.put("id", row[7]);
			jsonObject4.put("name", row[8]);
			jsonArray2.put(jsonObject4); // 屏幕

			jsonArray2.put(row[9]);// 时长
			jsonArray2.put(row[10]);// 频次

			jsonArray2.put(sdf.format((Date) row[11])); // 开始时间
			jsonArray2.put(sdf.format((Date) row[12])); // 结束时间

			jsonArray2.put(row[13]);// 数量
			jsonArray2.put(row[14]);// kanlijiaxiaoji
			jsonArray2.put(row[15]);// 时段

			jsonObject1.put("cell", jsonArray2); // 加入cell
			jsonArray.put(jsonObject1);

		}
		jsonObject.put("rows", jsonArray); // 加入rows

		sentMsg(jsonObject.toString());
		return null;
	}

	public String getAllLed() throws Exception {
		List result = null;
		result = yewuService.getAllLed();
		System.out.println("调用???????????yewuAction：getAllLed");
		// for(int i=0;i<result.size();i++){
		// // System.out.println(result.get(i)+);
		// }
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("info", result);
		sentMsg(jsonObject.toString());
		return null;
	}
	public String getAllIndustry() throws Exception {
		List result = null;
		result = yewuService.getAllIndustry();
		System.out.println("调用???????????yewuAction：getAllLed");
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("info", result);
		sentMsg(jsonObject.toString());
		return null;
	}

	public String getAllClient() throws Exception {
		List result = null;
		result = yewuService.getAllClient();
		// HashSet set=new HashSet(result);
		System.out.println("调用???????????getAllClient");
		JSONObject jsonObject = new JSONObject();
		// jsonObject.put("info", set);
		jsonObject.put("info", result);
		sentMsg(jsonObject.toString());
		return null;
	}

	public String ywyyejilist() throws Exception {
		Map session = ActionContext.getContext().getSession();
		Integer id = (Integer) session.get(CommonConstant.SESSION_ID);
		Page result = null;
		System.out.println("!!!!!!!!!!!!!!  sidx=" + sidx + "  sord=" + sord
				+ "  page=" + page + "  rows=" + rows
				+ "    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		if (_search == false) {
			// sidx="goalId";
			// sord="asc";
			// page=1;
			// rows=10;
			result = yewuService.getYwyyejilist(sidx, sord, page, rows);
		} else {
			result = yewuService.getYwyyejilistByKeyword(searchString, sidx,
					sord, page, rows);
		}

		JSONObject jsonObject = PageToJson.toJsonWithoutData(result);
		JSONArray jsonArray = new JSONArray();
		List data = result.getResult();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		DecimalFormat a = new DecimalFormat("#,##0");
		// DecimalFormat a = new DecimalFormat("#,##0.00");
		NumberFormat numberFormat = NumberFormat.getPercentInstance();
		numberFormat.setMinimumFractionDigits(2);
		for (int i = 0, size = data.size(); i < size; i++) {

			Object[] row = (Object[]) data.get(i);

			JSONObject jsonObject1 = new JSONObject();
			JSONArray jsonArray2 = new JSONArray(); // 求取cell
			jsonArray2.put(row[1]);// 部门

			JSONObject jsonObject2 = new JSONObject();
			jsonObject2.put("id", row[2]);// 业务人员id
			jsonObject2.put("name", row[3]);// 业务人员姓名
			jsonArray2.put(jsonObject2); // 业务人员

			// 每个业务员各个月份的业绩
			Double Jan = yewuService.getMonthAchievement("2016-01",
					Integer.parseInt(row[2].toString()));
			Double Feb = yewuService.getMonthAchievement("2016-02",
					Integer.parseInt(row[2].toString()));
			Double Mar = yewuService.getMonthAchievement("2016-03",
					Integer.parseInt(row[2].toString()));
			Double Apr = yewuService.getMonthAchievement("2016-04",
					Integer.parseInt(row[2].toString()));
			Double May = yewuService.getMonthAchievement("2016-05",
					Integer.parseInt(row[2].toString()));
			Double Jun = yewuService.getMonthAchievement("2016-06",
					Integer.parseInt(row[2].toString()));
			Double Jul = yewuService.getMonthAchievement("2016-07",
					Integer.parseInt(row[2].toString()));
			// System.out.println(a.format(Jul));
			Double Aug = yewuService.getMonthAchievement("2016-08",
					Integer.parseInt(row[2].toString()));
			Double Sep = yewuService.getMonthAchievement("2016-09",
					Integer.parseInt(row[2].toString()));
			Double Oct = yewuService.getMonthAchievement("2016-10",
					Integer.parseInt(row[2].toString()));
			Double Nov = yewuService.getMonthAchievement("2016-11",
					Integer.parseInt(row[2].toString()));
			Double Dec = yewuService.getMonthAchievement("2016-12",
					Integer.parseInt(row[2].toString()));

			jsonArray2.put(a.format(Jan));// 二月业绩
			jsonArray2.put(a.format(Feb));// 二月业绩
			jsonArray2.put(a.format(Mar));// 三月业绩
			jsonArray2.put(a.format(Apr));// 四月业绩
			jsonArray2.put(a.format(May));// 五月业绩
			jsonArray2.put(a.format(Jun));// 六月业绩
			jsonArray2.put(a.format(Jul));// 七月业绩
			jsonArray2.put(a.format(Aug));// 八月业绩
			jsonArray2.put(a.format(Sep));// 九月业绩
			jsonArray2.put(a.format(Oct));// 十月业绩
			jsonArray2.put(a.format(Nov));// 11月业绩
			jsonArray2.put(a.format(Dec));// 12月业绩

			Double total = Jan + Feb + Mar + Apr + May + Jun + Jul + Aug + Sep
					+ Oct + Nov + Dec;
			jsonArray2.put(a.format(total));// 合计

			jsonArray2.put(a.format(row[4]));// 全年目标

			System.out
					.println("numberFormat.format(total/Double.parseDouble(row[4].toString()))：：：：：：：：：："
							+ numberFormat.format(total
									/ Double.parseDouble(row[4].toString())));
			System.out.println("total：：：：：：：：：：" + a.format(total));
			System.out.println("全年目标：：：：：：：：：：" + a.format(row[4]));

			Double ratio = total / Double.parseDouble(row[4].toString());
			jsonArray2.put(numberFormat.format(ratio));// 完成比例

			jsonObject1.put("cell", jsonArray2); // 加入cell
			jsonArray.put(jsonObject1);

		}
		jsonObject.put("rows", jsonArray); // 加入rows

		// System.out.println(jsonObject.toString());

		sentMsg(jsonObject.toString());
		return null;
	}

	public String dingdanguanliList() throws Exception {

		Map session = ActionContext.getContext().getSession();
		Integer id = (Integer) session.get(CommonConstant.SESSION_ID);
		System.out.println(" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~前~~~searchString:"
				+ searchString);
		System.out
				.println(" :::::::::::::::::::::::::::: 调用YewuAction中的dingdanguanliList: ");
		System.out.println("  sidx=" + sidx + "  sord=" + sord + "  page="
				+ page + "  rows=" + rows);
		Page result = null;
		if (_search == false) {
			result = yewuService.getDingdanguanliList(sidx, sord, page, rows);
		} else {
			System.out.println(" ~~~~~~~~~~~~~~~~~~~~~~~~~~searchString:"
					+ searchString);
			result = yewuService.getDingdanguanliListByKeyword(searchString,
					sidx, sord, page, rows);
		}

		JSONObject jsonObject = PageToJson.toJsonWithoutData(result);
		JSONArray jsonArray = new JSONArray();
		List data = result.getResult();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		for (int i = 0, size = data.size(); i < size; i++) {

			Object[] row = (Object[]) data.get(i);

			JSONObject jsonObject1 = new JSONObject();
			jsonObject1.put("id", row[0]);
			JSONArray jsonArray2 = new JSONArray(); // 求取cell

			JSONObject jsonObject2 = new JSONObject();
			jsonObject2.put("id", row[0]);// 业务id
			jsonObject2.put("name", row[1]);// 认刊编号
			jsonArray2.put(jsonObject2);

			JSONObject jsonObject3 = new JSONObject();
			jsonObject3.put("id", row[0]);// 业务id
			jsonObject3.put("name", row[2]);// 刊户
			jsonArray2.put(jsonObject3);
			// jsonArray2.put(row[2]);//刊户
			// jsonArray2.put(row[3]);//行业
			jsonArray2.put(row[4]);// 类型

			// jsonArray2.put(sdf.format(row[5]));//签订日期

			JSONObject jsonObject4 = new JSONObject();
			jsonObject4.put("id", row[6]);
			jsonObject4.put("name", row[7]);
			jsonArray2.put(jsonObject4); // 屏幕

			jsonArray2.put(sdf.format((Date) row[10])); // 开始时间
			jsonArray2.put(sdf.format((Date) row[11])); // 结束时间

			jsonArray2.put(row[8]);// 时长
			jsonArray2.put(row[9]);// 频次

			// jsonArray2.put(row[12]);//数量

			if (row[13].toString().equals("N")) {
				jsonArray2.put("上画");// 状态
			} else if (row[13].toString().equals("U")) {
				jsonArray2.put("下画");// 状态
			}

			jsonObject1.put("cell", jsonArray2); // 加入cell
			jsonArray.put(jsonObject1);
		}
		jsonObject.put("rows", jsonArray); // 加入rows
		System.out.println("jsonObject:" + jsonObject.toString());
		sentMsg(jsonObject.toString());
		return SUCCESS;
	}

	public String orderUpdatePage() throws Exception {
		ActionContext ctx = ActionContext.getContext();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		yewu = yewuService.loadYewuByID(yewuId);

		ctx.put("leds", yewuService.getAllLed());
		ctx.put("industry", yewuService.getAllIndustry());
		ctx.put("industryclassifys", yewuService.getAllIndustryclassify());
		System.out
				.println("======================================================="
						+ yewuService.getAllIndustry().size());
		List list = yewuService.getRemarks(yewu.getYewuId());
		String remark = "";
		for (int i = 0; i < list.size(); i++) {
			remark += list.get(i).toString() + "<br>";
		}
		ctx.put("remark", remark);
		ctx.put("qiandingriqi",
				sdf.format(yewu.getRenkanshu().getQiandingriqi()));
		ctx.put("kaishishijian", sdf.format(yewu.getKaishishijian()));
		ctx.put("jieshushijian", sdf.format(yewu.getJieshushijian()));
		System.out
				.println("###############调用YewuAction中的orderUpdatePage函数:yewu:"
						+ yewu);
		System.out
				.println("###############调用YewuAction中的orderUpdatePage函数:yewu:"
						+ yewu.getIndustry());
		System.out
				.println("###############调用YewuAction中的orderUpdatePage函数:yewu.getGuanggaoneirong:"
						+ yewu.getGuanggaoneirong());
		// System.out.println("###############结束时间##################"+sdf.format(yewu.getKaishishijian()));
		return SUCCESS;
	}

	public String updateOrder() throws Exception {
		JSONObject jsonObject = new JSONObject();
		Map session = ActionContext.getContext().getSession();
		Integer userID = (Integer) session.get(CommonConstant.SESSION_ID);
		System.out.println("………………………………updateOrder……………………………………" + userID
				+ " " + tid + " " + ledId + " " + shichang + " " + pinci + " "
				+ kaishishijian + " " + jieshushijian + "  " + guanggaoneirong);
		yewuService.update(userID, tid, guanggaoneirong, industryId, ledId,
				shichang, pinci, kaishishijian, jieshushijian, shuliang,
				updateReason);
		System.out.println("………………………………调用yewuService.update后……………………………………");
		jsonObject.put("state", 0);
		jsonObject.put("info", "您的修改信息已提交，请耐心等待审核结果！");
		sentMsg(jsonObject.toString());
		return null;
	}
	public String upOrder() throws Exception {
		JSONObject jsonObject = new JSONObject();
		Map session = ActionContext.getContext().getSession();
		Integer userID = (Integer) session.get(CommonConstant.SESSION_ID);
		System.out.println("………………………………upOrder……………………………………" + userID
				+ " tid:" + tid + "  kanhu:" + kanhu + " ledId：" + ledId
				+ " shichang：" + shichang + " pinci：" + pinci
				+ " kaishishijian：" + kaishishijian + " jieshushijian："
				+ jieshushijian + "  ");
		yewuService.upOrder(userID, tid, guanggaoneirong, industryId, ledId,
				shichang, pinci, kaishishijian, jieshushijian, shuliang,
				addReason);
		System.out.println("………………………………调用yewuService.upOrder后……………………………………");
		jsonObject.put("state", 0);
		jsonObject.put("info", "您的上画信息已提交，请耐心等待审核结果！");
		sentMsg(jsonObject.toString());
		return null;
	}

	@SuppressWarnings("unchecked")
	public String getPieData() throws Exception {
		DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		List result = null;

		System.out.println("………………………………getPieData……………………………………" + " 时间范畴："
				+ timeRange + "  开始时间：" + startTime + "  结束时间：" + endTime
				+ " 屏幕：" + led + " 行业：" + industry);
		if (led.equals("")) {
			result = yewuService.getPieDataAllLed(startTime, endTime);
		} else {
			result = yewuService.getPieData(startTime, endTime, led);
		}

		System.out.println(result.size());

		List<String> lstArray = new ArrayList<String>();
		TreeSet<String> tset = new TreeSet<String>();
		for (int i = 0; i < result.size(); i++) {
			lstArray.add((String) ((Object[]) result.get(i))[2]);
			tset.add((String) ((Object[]) result.get(i))[18]);
		}

		Collections.sort(lstArray);

		System.out.println("tset.toString():" + tset.toString());
		System.out.println("lstArray:" + lstArray);

		DecimalFormat df = new DecimalFormat("#####0.0000");
		Double[] ratios = new Double[tset.size()];
		int[] amounts = new int[tset.size()];
		for (int i = 0; i < ratios.length; i++) {
			ratios[i] = 0.0000;
			amounts[i] = 0;
		}

		if ((!startTime.equals("")) && (!endTime.equals(""))) {
			long datesttmp = sdf.parse(startTime).getTime();
			long dateettmp = sdf.parse(endTime).getTime();
			long onedaytmp = 24 * 3600 * 1000;
			int statisticdays = (int) ((dateettmp - datesttmp) / onedaytmp) + 1;

			List lstddsta = new ArrayList();

			for (int i = 0; i < result.size(); i++) {
				String[] lstloop = null;
				Object[] objs = (Object[]) result.get(i);

				String strttm = sdf.format(objs[13]);
				String endtm = sdf.format(objs[14]);

				Date dtsttm = sdf.parse(strttm);
				Date dtedtm = sdf.parse(endtm);
				int countdays = 0;
				if (dtsttm.getTime() <= datesttmp
						&& dtedtm.getTime() <= dateettmp) {
					countdays = (int) ((dtedtm.getTime() - datesttmp) / onedaytmp) + 1;
				} else if (dtsttm.getTime() <= datesttmp
						&& dtedtm.getTime() >= dateettmp) {
					countdays = (int) ((dateettmp - datesttmp) / onedaytmp) + 1;
				} else if (dtsttm.getTime() >= datesttmp
						&& dtedtm.getTime() >= dateettmp) {
					countdays = (int) ((dateettmp - dtsttm.getTime()) / onedaytmp) + 1;
				} else {
					countdays = (int) ((dtedtm.getTime() - dtsttm.getTime()) / onedaytmp) + 1;
				}
				double zpltmp = ((Integer) objs[12] * countdays) * 10000
						/ ((Integer) objs[9] * statisticdays) / 10000.000000;

				System.out.println("zpltmp:" + zpltmp);

				Iterator<String> iterator = tset.iterator();
				for (int j = 0; j < tset.size(); j++) {
					try {
						if (objs[18].toString().equals(iterator.next())) {
							ratios[j] += zpltmp;
							amounts[j]++;
						}
					} catch (Exception e) {
						e.printStackTrace();
					}

				}
			}
		}

		System.out
				.println("-----------------------------------------------------");
		System.out.println("集合大小：" + tset.size());
		System.out.println("数组长度：" + ratios.length);
		JSONArray jsonArray = new JSONArray();
		Iterator<String> iterator = tset.iterator();
		// String str;
		JSONArray jsonArray1 = new JSONArray();
		JSONArray jsonArray2 = new JSONArray();
		JSONArray jsonArray3 = new JSONArray();
		jsonArray1.put("a");
		jsonArray2.put(0.001);
		jsonArray3.put(0);
		for (int j = 0; j < tset.size(); j++) {
			jsonArray1.put(iterator.next());
			jsonArray2.put(Double.parseDouble(df.format(ratios[j] * 100)));
			jsonArray3.put(amounts[j]);
			System.out.println("double:"
					+ Double.parseDouble(df.format(ratios[j] * 100)));
		}
		jsonArray1.put("a");
		jsonArray2.put(0.001);
		jsonArray3.put(0);
		System.out.println("jsonArray:" + jsonArray.toString());
		// industryArr

		ActionContext ctx = ActionContext.getContext();
		ctx.put("industryArr", jsonArray1);
		ctx.put("ratios", jsonArray2);
		ctx.put("amounts", jsonArray3);

		// ctx.put("industryclassifys", yewuService.getAllIndustryclassify());

		// JSONObject jsonObjectA = new JSONObject();
		// jsonObjectA.put("industryArr", jsonArray1);
		// jsonObjectA.put("ratioArr", jsonArray2);
		//
		// jsonObjectA.put("info", "您的修改信息已提交，请耐心等待审核结果！");
		// System.out.println("jsonObjectA.toString():"+jsonObjectA.toString());
		// sentMsg(jsonObjectA.toString());
		return SUCCESS;
	}

	public String fillIndustryClassify() throws JSONException, IOException {
		int selecttmp = Integer.parseInt(selectclassifyind);
		System.out.println(selecttmp);
		@SuppressWarnings("rawtypes")
		List result = null;
		result = yewuService.getAllIndustrytst();
		JSONArray jsonarrayindst = new JSONArray();
		JSONObject jsobj = new JSONObject();
		for (int i = 0; i < result.size(); i++) {
			System.out.println();
			JSONObject jsonObject = new JSONObject();
			if (((Industry) result.get(i)).getIndustryclassify().getId() == selecttmp) {
				jsonObject.put("industryid",
						((Industry) result.get(i)).getIndustryId());
				jsonObject.put("industryname",
						((Industry) result.get(i)).getIndustryDesc());
				jsonObject.put("industryclassifyid",
						((Industry) result.get(i)).getIndustryDesc());

				jsonarrayindst.put(jsonObject);
			}
		}
		System.out.println("调用???????????yewuAction：fillIndustryClassify"
				+ jsonarrayindst);
		jsobj.put("industryclassifyback", jsonarrayindst);
		sentMsg(jsobj.toString());
		return null;

	}

	/**
	 * 
	 * fillYewuyuanList: 填充业务员二级联动列表
	 * TODO (二级联动). 
	 * @author Wu. Van 
	 * @return
	 * @throws JSONException
	 * @throws IOException 
	 * @since JDK 1.6
	 */
	public String fillYewuyuanList() throws JSONException, IOException {
		int selecttmp = Integer.parseInt(selectbumenid);
		System.out.println(selecttmp);
		Bumen thisBumen = bumenService.findBumenById(selecttmp);

		@SuppressWarnings("rawtypes")
		// List result = yewuyuanService.loadYewuyuanByBumenid(selecttmp);
		// System.out.println(result.size());
		JSONArray jsonarrayywy = new JSONArray();
		JSONObject jsobj = new JSONObject();
		/*
		 * for (int i = 0; i < result.size(); i++) { JSONObject jsonObject = new
		 * JSONObject(); if (selecttmp == ((Yewuyuan)
		 * result.get(i)).getBumen().getBmId()) {
		 * jsonObject.put("ywyId",((Yewuyuan)result.get(i)).getYwyId());
		 * jsonObject
		 * .put("ywyXingming",((Yewuyuan)result.get(i)).getYwyXingming());
		 * System.out.println(((Yewuyuan)result.get(i)).getYwyXingming());
		 * jsonarrayywy.put(jsonObject); } }
		 */
		for (Iterator iterator = thisBumen.getYewuyuans().iterator(); iterator
				.hasNext();) {
			Yewuyuan ywytmp = (Yewuyuan) iterator.next();
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("ywyId", ywytmp.getYwyId());
			jsonObject.put("ywyXingming", ywytmp.getYwyXingming());
			System.out.println(ywytmp.getYwyXingming());
			jsonarrayywy.put(jsonObject);

		}
		jsobj.put("yewuyuanback", jsonarrayywy);
		sentMsg(jsobj.toString());
		return null;
	}

	public String orderAuditList() throws Exception {
		Map session = ActionContext.getContext().getSession();
		Integer id = (Integer) session.get(CommonConstant.SESSION_ID);
		System.out.println("^^^^^^^^^^^^^^^^^^  sidx=" + sidx + "  sord="
				+ sord + "  page=" + page + "  rows=" + rows
				+ " ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
		Page result = null;
		if (_search == false) {
			result = yewuService.getOrderAuditList(sidx, sord, page, rows);
			// System.out.println("^^^^^^^^^^^^^^^^^^^^^^^^^已获取审核列表数据^^^^^^^^^^^^^^^^^");
		} else {
			System.out.println("^^^^^^^^^^^^^^^^^^^^^搜索条件^^^^^^^^^^^^^^^^^"
					+ searchString);
			result = yewuService.getOrderAuditListByKeyword(searchString, sidx,
					sord, page, rows);
			System.out
					.println("^^^^^^^^^^^^^^^^^^^^^^^^^已获取审核列表数据^^^^^^^^^^^^^^^^^");
		}

		JSONObject jsonObject = PageToJson.toJsonWithoutData(result);
		JSONArray jsonArray = new JSONArray();
		List data = result.getResult();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		for (int i = 0, size = data.size(); i < size; i++) {

			Object[] row = (Object[]) data.get(i);

			JSONObject jsonObject1 = new JSONObject();
			JSONArray jsonArray2 = new JSONArray(); // 求取cell

			Integer remarkId = Integer.parseInt(row[0].toString());
			Remark remarkForAudit = remarkService.loadRemarkByID(remarkId);

			// 2016-8-25 12:00 修改，将remarkForAudit.getOrderauditId() 修改为remarkId
			jsonObject1.put("id", remarkId); // 加入id

			jsonArray2.put(row[1]);// 审核内容

			jsonObject1.put("cell", jsonArray2); // 加入cell
			jsonArray.put(jsonObject1);
		}
		jsonObject.put("rows", jsonArray); // 加入rows
		// System.out.println("jsonObject:"+jsonObject.toString());
		sentMsg(jsonObject.toString());
		return null;
	}

	public String myOrderAuditList() throws Exception {
		Map session = ActionContext.getContext().getSession();
		Integer id = (Integer) session.get(CommonConstant.SESSION_ID);
		System.out.println("^^^^^^^^^^^^^^^^^^  sidx=" + sidx + "  sord="
				+ sord + "  page=" + page + "  rows=" + rows
				+ " ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
		Page result = null;
		if (_search == false) {
			result = yewuService
					.getMyOrderAuditList(sidx, sord, page, rows, id);
			System.out
					.println("^^^^^^^^^^^^^^^^^^^^^^^^^已获取我的审核列表数据^^^^^^^^^^^^^^^^^");
		} else {
			System.out.println("^^^^^^^^^^^^^^^^^^^^^搜索条件^^^^^^^^^^^^^^^^^"
					+ searchString);
			result = yewuService.getMyOrderAuditListByKeyword(searchString,
					sidx, sord, page, rows, id);
			System.out
					.println("^^^^^^^^^^^^^^^^^^^^^^^^^已获取我的审核列表数据^^^^^^^^^^^^^^^^^");
		}

		JSONObject jsonObject = PageToJson.toJsonWithoutData(result);
		JSONArray jsonArray = new JSONArray();
		List data = result.getResult();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		for (int i = 0, size = data.size(); i < size; i++) {

			Object[] row = (Object[]) data.get(i);

			JSONObject jsonObject1 = new JSONObject();
			JSONArray jsonArray2 = new JSONArray(); // 求取cell

			jsonObject1.put("id", row[0]); // 加入id

			jsonArray2.put(row[1]);// 认刊编号
			jsonArray2.put(row[2]);// 广告客户
			jsonArray2.put(row[3]);// 类型
			jsonArray2.put(row[4]);// 上画屏幕
			jsonArray2.put(row[5]);// 广告内容
			String str = row[6].toString();
			System.out.println("^^^^^^^^^^^^^^^^^^^^^^^^^^^str:" + str
					+ "^^^^^^^^^^^^^^^^^");
			if (str.equals("L")) {
				jsonArray2.put("修改");// 操作类型
			} else if (str.equals("A")) {
				jsonArray2.put("增加");// 操作类型
			} else {
				jsonArray2.put("删除");// 操作类型
			}
			jsonObject1.put("cell", jsonArray2); // 加入cell
			jsonArray.put(jsonObject1);
		}
		jsonObject.put("rows", jsonArray); // 加入rows
		// System.out.println("jsonObject:"+jsonObject.toString());
		sentMsg(jsonObject.toString());
		return null;
	}

	/**
	 * 修改时间：20160901 15：12
	 * 修改内容：页面调整为除认刊编号外都可以修改
	 * @return
	 * @throws Exception
	 */
	public String updatemyAuidtOrder() throws Exception {
		JSONObject jsonObject = new JSONObject();
		Map session = ActionContext.getContext().getSession();
		Integer userID = (Integer) session.get(CommonConstant.SESSION_ID);
		DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		System.out.println("………………………………updateOrder……………………………………" + "kanhu"
				+ kanhu + "leixing" + leixing + userID + " " + tid + " "
				+ ledId + " " + shichang + " " + pinci + " " + kaishishijian
				+ " " + jieshushijian + "  " + "刊例小计：" + kanlixiaoji
				+ " kanlizongjia:" + kanlizongjia + " zhekou:" + zhekou
				+ " qiandingriqi:" + qiandingriqi+" yewuyuan:"+yewuyuan);
		yewuService.updatemyAuidtOrder(kanhu,Integer.parseInt(yewuyuan), leixing, sdf.parse(qiandingriqi),
				userID, tid, guanggaoneirong, industryId,
				Double.parseDouble(kanlizongjia), Double.parseDouble(zhekou),
				Double.parseDouble(kanlixiaoji), ledId, shichang, pinci,
				kaishishijian, jieshushijian, shuliang, updateReason);

		System.out.println("………………………………调用yewuService.update后……………………………………");
		jsonObject.put("state", 0);

		jsonObject.put("info", "修改成功");
		sentMsg(jsonObject.toString());
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

	public Yewu getYewu() {
		return yewu;
	}

	public void setYewu(Yewu yewu) {
		this.yewu = yewu;
	}

	public Integer getYewuId() {
		return yewuId;
	}

	public void setYewuId(Integer yewuId) {
		this.yewuId = yewuId;
	}

	public String getLedId() {
		return ledId;
	}

	public void setLedId(String ledId) {
		this.ledId = ledId;
	}

	public Integer getShichang() {
		return shichang;
	}

	public void setShichang(Integer shichang) {
		this.shichang = shichang;
	}

	public Integer getPinci() {
		return pinci;
	}

	public void setPinci(Integer pinci) {
		this.pinci = pinci;
	}

	public Date getKaishishijian() {
		return kaishishijian;
	}

	public void setKaishishijian(Date kaishishijian) {
		this.kaishishijian = kaishishijian;
	}

	public Date getJieshushijian() {
		return jieshushijian;
	}

	public void setJieshushijian(Date jieshushijian) {
		this.jieshushijian = jieshushijian;
	}

	public Integer getShuliang() {
		return shuliang;
	}

	public void setShuliang(Integer shuliang) {
		this.shuliang = shuliang;
	}

	public String getGuanggaoneirong() {
		return guanggaoneirong;
	}

	public void setGuanggaoneirong(String guanggaoneirong) {
		this.guanggaoneirong = guanggaoneirong;
	}

	public Short getIndustryId() {
		return industryId;
	}

	public void setIndustryId(Short industryId) {
		this.industryId = industryId;
	}

	public String getTimeRange() {
		return timeRange;
	}

	public void setTimeRange(String timeRange) {
		this.timeRange = timeRange;
	}

	public String getIndustry() {
		return industry;
	}

	public void setIndustry(String industry) {
		this.industry = industry;
	}

	public String getLed() {
		return led;
	}

	public void setLed(String led) {
		this.led = led;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getSelectclassifyind() {
		return selectclassifyind;
	}

	public void setSelectclassifyind(String selectclassifyind) {
		this.selectclassifyind = selectclassifyind;
	}

	public String getSelectbumenid() {
		return selectbumenid;
	}

	public void setSelectbumenid(String selectbumenid) {
		this.selectbumenid = selectbumenid;
	}

	public String getLeixing() {
		return leixing;
	}

	public void setLeixing(String leixing) {
		this.leixing = leixing;
	}

	public String getKanhu() {
		return kanhu;
	}

	public void setKanhu(String kanhu) {
		this.kanhu = kanhu;
	}

	public RemarkService getRemarkService() {
		return remarkService;
	}

	public void setRemarkService(RemarkService remarkService) {
		this.remarkService = remarkService;
	}

	public Remark getRemark() {
		return remark;
	}

	public void setRemark(Remark remark) {
		this.remark = remark;
	}

	public String getUpdateReason() {
		return updateReason;
	}

	public void setUpdateReason(String updateReason) {
		this.updateReason = updateReason;
	}

	public String getAddReason() {
		return addReason;
	}

	public void setAddReason(String addReason) {
		this.addReason = addReason;
	}

}
