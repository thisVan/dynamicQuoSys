package com.nfledmedia.dynamicQuoSys.dao;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.hibernate.LockMode;
import org.hibernate.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.nfledmedia.dynamicQuoSys.entity.Yewu;
import com.nfledmedia.dynamicQuoSys.util.Page;

/**
 * A data access object (DAO) providing persistence and search support for Yewu
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see com.nfledmedia.dynamicQuoSys.dao.Yewu
 * @author MyEclipse Persistence Tools
 */
public class YewuDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory.getLogger(YewuDAO.class);
	// property constants
	public static final String KANHU = "kanhu";
	public static final String LEIXING = "leixing";
	public static final String SHICHANG = "shichang";
	public static final String PINCI = "pinci";
	public static final String SHULIANG = "shuliang";
	public static final String KANLIJIAXIAOJI = "kanlijiaxiaoji";
	public static final String SHIDUAN = "shiduan";
	public static final String STATE = "state";

	// 数据搜索
	private static final String GET_YEWU_LIST = "select y.yewuId, y.renkanshu.renkanbianhao,y.renkanshu.industry.industryDesc, y.kanhu, y.leixing, y.yewuyuan.ywyId,y.yewuyuan.ywyXingming, "
			+ "y.led.ledId, y.led.ledName, y.shichang, y.pinci,y.kaishishijian,y.jieshushijian,y.shuliang,y.kanlijiaxiaoji,y.shiduan from Yewu y left join y.renkanshu left join y.renkanshu.industry left join y.yewuyuan left join y.led ";
	private static final String GET_YWYYEJI_LIST = "select y.goalId, y.goalYwy.bumen.bmMingcheng, y.goalYwy.ywyId, y.goalYwy.ywyXingming,"
			+ "y.goalMubiao from Ywymubiao y left join y.goalYwy left join y.goalYwy.bumen where y.goalNiandu like 2016";
	private static final String GET_DINGDANGUANLI_LIST = "select y.yewuId, y.renkanshu.renkanbianhao, y.kanhu,y.renkanshu.industry.industryDesc, y.leixing, y.renkanshu.qiandingriqi, "
			+ "y.led.ledId, y.led.ledName, y.shichang, y.pinci,y.kaishishijian,y.jieshushijian,y.shuliang,y.state from Yewu y left join y.renkanshu left join y.renkanshu.industry left join y.yewuyuan left join y.led ";
	private static final String GET_RENKANSHU_BY_BIANHAO = "select y.id from Yewu y left join y.renkanshu where y.state='N' and y.renkanshu.renkanbianhao = ";
	private static final String GET_CLIENT_NAME = "select distinct y.kanhu, y.kanhu from Yewu y ";
	private static final String GET_RENKANSHUBIANHAO = "select distinct y.renkanshu.renkanbianhao from Yewu y left join y.renkanshu";
	// private static final String
	// GET_PIE_DATA="SELECT c.hynm AS hyname, c.bfsc/c.hyshichang*100 AS hyzpl FROM (SELECT t.hyname AS hynm, SUM(t.ggbfsc) AS bfsc,SUM(t.ledsc) AS hyshichang FROM (SELECT r.hangye AS hyname, "+
	// "y.pinci*y.shichang AS ggbfsc, l.ledBofangshichang AS ledsc, y.kaishishijian, y.jieshushijian FROM Yewu y,Renkanshu r,Led l WHERE y.renkanbianhao = r.renkanbianhao AND y.led = l.led_id) t "+
	// "WHERE t.kaishishijian <='2016-07-01' AND t.jieshushijian > '2016-09-01' GROUP BY t.hyname) c";
	private static final String GET_PIE_DATA = "SELECT c.hynm AS hyname, c.bfsc/c.hyshichang*100 AS hyzpl FROM (SELECT t.hyname AS hynm, SUM(t.ggbfsc) AS bfsc,SUM(t.ledsc) AS hyshichang FROM (SELECT renkanshu.hangye AS hyname, "
			+ "pinci*shichang AS ggbfsc, led.led_bofangshichang AS ledsc, kaishishijian, jieshushijian FROM yewu,renkanshu,led WHERE yewu.renkanbianhao = renkanshu.renkanbianhao AND yewu.led = led.led_id) t "
			+ "WHERE t.kaishishijian <='2016-07-01' AND t.jieshushijian > '2016-09-01' GROUP BY t.hyname) c";

	protected void initDao() {
		// do nothing
	}

	public Page getYewuList(String sidx, String sord, int pageNo, int pageSize) {
		System.out.println("……………………………………yewuDAO:getYewuList:sidx:" + sidx);
		return pagedQuery(GET_YEWU_LIST + " order by y." + sidx + " " + sord,
				pageNo, pageSize);
	}
	public Page getYewuListByKeyword(String keyword, String sidx, String sord,
			int pageNo, int pageSize) {
		return pagedQuery(GET_YEWU_LIST + keyword + " order by y." + sidx + " "
				+ sord, pageNo, pageSize);
	}

	public Page getDingdanguanliList(String sidx, String sord, int pageNo,
			int pageSize) {
		System.out
				.println("???????????yewuDAO:getDingdanguanliList???????????????");
		Page page = null;
		try {
			page = pagedQuery(GET_DINGDANGUANLI_LIST + " where y.state!='D' "
					+ " order by y." + sidx + " " + sord, pageNo, pageSize);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return page;
	}
	public Page getDingdanguanliListByKeyword(String keyword, String sidx,
			String sord, int pageNo, int pageSize) {
		return pagedQuery(GET_DINGDANGUANLI_LIST + keyword + " order by y."
				+ sidx + " " + sord, pageNo, pageSize);
	}

	public Page getYwyyejilist(String sidx, String sord, int pageNo,
			int pageSize) {
		System.out.println("……………………………………yewuDAO:getYewuList:sidx:" + sidx);
		return pagedQuery(
				GET_YWYYEJI_LIST + " order by y." + sidx + " " + sord, pageNo,
				pageSize);
	}
	public Page getYwyyejilistByKeyword(String keyword, String sidx,
			String sord, int pageNo, int pageSize) {
		return pagedQuery(GET_YWYYEJI_LIST + keyword + " order by y." + sidx
				+ " " + sord, pageNo, pageSize);
	}
	public List getAllYewuByRenkanshubianhao(String renkanshubianhaoDelete) {
		return find(GET_RENKANSHU_BY_BIANHAO + "'" + renkanshubianhaoDelete
				+ "'");
	}

	public List getAllClient() {
		return find(GET_CLIENT_NAME);
	}

	public List getAllRenkanbianhao() {
		return find(GET_RENKANSHUBIANHAO);
	}

	public List getPieData(String startTime, String endTime, String led) {

		String hql = "select y.yewuId, y.renkanshu.renkanbianhao,y.renkanshu.industry.industryDesc, y.kanhu, y.leixing, y.yewuyuan.ywyId,y.yewuyuan.ywyXingming, "
				+ "y.led.ledId, y.led.ledName, y.led.ledBofangshichang, y.shichang, y.pinci, y.shichang*y.pinci, y.kaishishijian,y.jieshushijian,y.shuliang,y.kanlijiaxiaoji,y.shiduan, y.renkanshu.industry.industryclassify.name from Yewu y left join y.renkanshu left join y.renkanshu.industry left join y.renkanshu.industry.industryclassify left join y.yewuyuan left join y.led ";
		hql = hql + " where y.led.ledId = " + led + " and y.kaishishijian <= '"
				+ endTime + "' and y.jieshushijian >= '" + startTime + "'";
		hql += " and y.state = 'N' ";
		System.out.println(hql);
		List list = null;
		try {
			list = find(hql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public List getPieDataAllLed(String startTime, String endTime) {

		String hql = "select y.yewuId, y.renkanshu.renkanbianhao,y.renkanshu.industry.industryDesc, y.kanhu, y.leixing, y.yewuyuan.ywyId,y.yewuyuan.ywyXingming, "
				+ "y.led.ledId, y.led.ledName, y.led.ledBofangshichang, y.shichang, y.pinci, y.shichang*y.pinci, y.kaishishijian,y.jieshushijian,y.shuliang,y.kanlijiaxiaoji, y.shiduan,y.renkanshu.industry.industryclassify.name from Yewu y left join y.renkanshu left join y.renkanshu.industry left join y.renkanshu.industry.industryclassify left join y.yewuyuan left join y.led ";
		hql = hql + " where y.kaishishijian <= '"
				+ endTime + "' and y.jieshushijian >= '" + startTime + "'";
		hql += " and y.state = 'N' ";
		System.out.println(hql);
		List list = null;
		try {
			list = find(hql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
//	public List getPieData() {
//
//		String hql = "select y.yewuId, y.renkanshu.renkanbianhao,y.renkanshu.industry.industryDesc, y.kanhu, y.leixing, y.yewuyuan.ywyId,y.yewuyuan.ywyXingming, "
//				+ "y.led.ledId, y.led.ledName, y.led.ledBofangshichang, y.shichang, y.pinci, y.shichang*y.pinci, y.kaishishijian,y.jieshushijian,y.shuliang,y.kanlijiaxiaoji,y.shiduan from Yewu y left join y.renkanshu left join y.renkanshu.industry left join y.yewuyuan left join y.led ";
//		hql = hql + " where y.led.ledId = " + 101 + " and y.kaishishijian <= '2016-09-01' and y.jieshushijian >= '2016-07-01'";
//		hql += " and y.state = 'N' ";
//		System.out.println(hql);
//		List list = null;
//		try {
//			list = find(hql);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return list;
//	}

	public Page pagedQuery(String hql, int pageNo, int pageSize,
			Object... values) {
		// Assert.hasText(hql);
		// Assert.isTrue(pageNo >= 1, "页码应该不小于1");
		// Count查询
		String countQueryString = " select count (*) "
				+ removeSelect(removeOrders(hql));
		// System.out.print(hql);
		// System.out.print( getHibernateTemplate().find(countQueryString,
		// values));
		List countlist = getHibernateTemplate().find(countQueryString, values);
		long totalCount = countlist.isEmpty() ? 0 : (Long) countlist.get(0);

		if (totalCount < 1)
			return new Page();
		// 实际查询返回分页对象
		int startIndex = Page.getStartOfPage(pageNo, pageSize);
		Query query = createQuery(hql, values);
		List list = query.setFirstResult(startIndex).setMaxResults(pageSize)
				.list();

		return new Page(startIndex, totalCount, pageSize, list);
	}
	/**
	 * 去除hql的orderby 子句，用于pagedQuery.
	 *
	 * @see #pagedQuery(String,int,int,Object[])
	 */
	private static String removeOrders(String hql) {
		// Assert.hasText(hql);
		Pattern p = Pattern.compile("order\\s*by[\\w|\\W|\\s|\\S]*",
				Pattern.CASE_INSENSITIVE);
		Matcher m = p.matcher(hql);
		StringBuffer sb = new StringBuffer();
		while (m.find()) {
			m.appendReplacement(sb, "");
		}
		m.appendTail(sb);
		return sb.toString();
	}
	/**
	 * 去除hql的select 子句，未考虑union的情况,用于pagedQuery.
	 *
	 * @see #pagedQuery(String,int,int,Object[])
	 */
	private static String removeSelect(String hql) {
		// Assert.hasText(hql);
		int beginPos = hql.toLowerCase().indexOf("from");
		// Assert.isTrue(beginPos != -1, " hql : " + hql +
		// " must has a keyword 'from'");
		return hql.substring(beginPos);
	}
	/**
	 * 创建Query对象. 对于需要first,max,fetchsize,cache,cacheRegion等诸多设置的函数,可以在返回Query后自行设置.
	 * 留意可以连续设置
	 * @param values 可变参数.
	 */
	public Query createQuery(String hql, Object... values) {
		// Assert.hasText(hql);
		Query query = getSession().createQuery(hql);
		for (int i = 0; i < values.length; i++) {
			query.setParameter(i, values[i]);
		}
		return query;
	}

	public List find(String hql, Object... params) {
		return this.getHibernateTemplate().find(hql, params);
	}

	public void save(Yewu transientInstance) {
		log.debug("saving Yewu instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Yewu persistentInstance) {
		log.debug("deleting Yewu instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (Exception re) {
			log.error("delete failed", re);
			try {
				throw re;
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public Yewu findById(java.lang.Integer id) {
		log.debug("getting Yewu instance with id: " + id);
		Yewu instance=null;
		try {
			instance = (Yewu) getHibernateTemplate().get(
					"com.nfledmedia.dynamicQuoSys.entity.Yewu", id);
			return instance;
		} catch (Exception re) {
			log.error("get failed", re);
			re.printStackTrace();
		}
		return instance;
	}

	public List findByExample(Yewu instance) {
		log.debug("finding Yewu instance by example");
		try {
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Yewu instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Yewu as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByKanhu(Object kanhu) {
		return findByProperty(KANHU, kanhu);
	}

	public List findByLeixing(Object leixing) {
		return findByProperty(LEIXING, leixing);
	}

	public List findByShichang(Object shichang) {
		return findByProperty(SHICHANG, shichang);
	}

	public List findByPinci(Object pinci) {
		return findByProperty(PINCI, pinci);
	}

	public List findByShuliang(Object shuliang) {
		return findByProperty(SHULIANG, shuliang);
	}

	public List findByKanlijiaxiaoji(Object kanlijiaxiaoji) {
		return findByProperty(KANLIJIAXIAOJI, kanlijiaxiaoji);
	}

	public List findByShiduan(Object shiduan) {
		return findByProperty(SHIDUAN, shiduan);
	}

	public List findByState(Object state) {
		return findByProperty(STATE, state);
	}

	public List findAll() {
		log.debug("finding all Yewu instances");
		try {
			String queryString = "from Yewu";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Yewu merge(Yewu detachedInstance) {
		log.debug("merging Yewu instance");
		try {
			Yewu result = (Yewu) getHibernateTemplate().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Yewu instance) {
		log.debug("attaching dirty Yewu instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Yewu instance) {
		log.debug("attaching clean Yewu instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static YewuDAO getFromApplicationContext(ApplicationContext ctx) {
		return (YewuDAO) ctx.getBean("YewuDAO");
	}
}