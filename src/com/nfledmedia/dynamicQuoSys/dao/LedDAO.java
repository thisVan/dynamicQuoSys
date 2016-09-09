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

import com.nfledmedia.dynamicQuoSys.entity.Led;
import com.nfledmedia.dynamicQuoSys.util.Page;

/**
 	* A data access object (DAO) providing persistence and search support for Led entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.nfledmedia.dynamicQuoSys.dao.Led
  * @author MyEclipse Persistence Tools 
 */
public class LedDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory.getLogger(LedDAO.class);
	// property constants
	public static final String LED_DAIMA = "ledDaima";
	public static final String LED_NAME = "ledName";
	public static final String LED_WEIZHI = "ledWeizhi";
	public static final String LED_BOFANGSHICHANG = "ledBofangshichang";
	public static final String LED_JIANXIESHICHANG = "ledJianxieshichang";
	public static final String LED_CHANGDU = "ledChangdu";
	public static final String LED_KUANGDU = "ledKuangdu";
	public static final String LED_MIANJI = "ledMianji";
	public static final String LED_FENBIANLV = "ledFenbianlv";
	public static final String LED_LEIXING = "ledLeixing";
	public static final String LED_KANLIPRICE = "ledKanliprice";
	public static final String LED_SUOZAIQUYU = "ledSuozaiquyu";
	public static final String LED_CHENGSHI = "ledChengshi";
	public static final String LED_QUXIAN = "ledQuxian";
	
	//数据搜索
	private static final String GET_LED_NAME="select l.ledId,l.ledName from Led l";
	private static final String GET_LED_LIST = "select l.ledId, l.ledDaima, l.ledName, l.ledWeizhi, l.ledBofangshichang, l.ledKanliprice, " +
			"l.state from Led l  ";
	private static final String GET_LED_RESOURCE_LIST = "select l.ledId, l.ledDaima, l.ledName, l.ledWeizhi, l.ledBofangkaishishijian,l.ledBofangjieshushijian, l.ledBofangshichang, l.ledKanliprice, " +
			"l.state from Led l  ";

	protected void initDao() {
		// do nothing
	}
	
	public Page getPingmuguanliList(String sidx,String sord,int pageNo,int pageSize){
		System.out.println("???????????ledDAO:getPingmuguanliList???????????????");
		Page page=null;
		try{
			page=pagedQuery(GET_LED_LIST+" where l.state!='D'"+" order by l."+sidx+" "+sord, pageNo, pageSize);
		}catch(Exception e){
			e.printStackTrace();
		}
		return page;
	}
	public Page getPingmuguanliListByKeyword(String keyword,String sidx,String sord,int pageNo,int pageSize){
		Page page=null;
		try{
			page=pagedQuery(GET_LED_LIST+keyword+" order by l."+sidx+" "+sord, pageNo, pageSize);
		}catch(Exception e){
			e.printStackTrace();
		}
		return page;	
	}
	
	public Page getledResourceList(String sidx,String sord,int pageNo,int pageSize){
		System.out.println("???????????ledDAO:getPingmuguanliList???????????????");
		Page page=null;
		try{
			page=pagedQuery(GET_LED_RESOURCE_LIST+" where l.state!='D'"+" order by l."+sidx+" "+sord, pageNo, pageSize);
		}catch(Exception e){
			e.printStackTrace();
		}
		return page;
	}
	public Page getledResourceListByKeyword(String keyword,String sidx,String sord,int pageNo,int pageSize){
		Page page=null;
		try{
			page=pagedQuery(GET_LED_RESOURCE_LIST+keyword+" order by l."+sidx+" "+sord, pageNo, pageSize);
		}catch(Exception e){
			e.printStackTrace();
		}
		return page;	
	}
	
	
	
	public List getAllLed() {
		
		return  find(GET_LED_NAME);
	}
	
	public List find(String hql) {
		return this.getHibernateTemplate().find(hql);
	}
	
	
	public Page pagedQuery(String hql, int pageNo, int pageSize, Object... values) {
		// Count查询
		String countQueryString = " select count (*) " + removeSelect(removeOrders(hql));
	//	System.out.print(hql);
	//	System.out.print( getHibernateTemplate().find(countQueryString, values));
		List countlist = getHibernateTemplate().find(countQueryString, values);
		long totalCount = countlist.isEmpty() ? 0 : (Long) countlist.get(0);

		if (totalCount < 1)
			return new Page();
		// 实际查询返回分页对象
		int startIndex = Page.getStartOfPage(pageNo, pageSize);
		Query query = createQuery(hql, values);
		List list = query.setFirstResult(startIndex).setMaxResults(pageSize).list();

		return new Page(startIndex, totalCount, pageSize, list);
	}
	/**
	 * 去除hql的orderby 子句，用于pagedQuery.
	 *
	 * @see #pagedQuery(String,int,int,Object[])
	 */
	private static String removeOrders(String hql) {
//		Assert.hasText(hql);
		Pattern p = Pattern.compile("order\\s*by[\\w|\\W|\\s|\\S]*", Pattern.CASE_INSENSITIVE);
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
//		Assert.hasText(hql);
		int beginPos = hql.toLowerCase().indexOf("from");
//		Assert.isTrue(beginPos != -1, " hql : " + hql + " must has a keyword 'from'");
		return hql.substring(beginPos);
	}
	/**
	 * 创建Query对象. 对于需要first,max,fetchsize,cache,cacheRegion等诸多设置的函数,可以在返回Query后自行设置.
	 * 留意可以连续设置
	 * @param values 可变参数.
	 */
	public Query createQuery(String hql, Object... values) {
//		Assert.hasText(hql);
		Query query = getSession().createQuery(hql);
		for (int i = 0; i < values.length; i++) {
			query.setParameter(i, values[i]);
		}
		return query;
	}
	
	public List find(String hql, Object... params) {
		return this.getHibernateTemplate().find(hql,params);
	}

	public void save(Led transientInstance) {
		log.debug("saving Led instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Led persistentInstance) {
		log.debug("deleting Led instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Led findById(java.lang.String id) {
		Led instance=null;
		log.debug("getting Led instance with id: " + id);
		try {
			instance = (Led) getHibernateTemplate().get(
					"com.nfledmedia.dynamicQuoSys.entity.Led", id);
			
		} catch (Exception re) {
			log.error("get failed", re);
			re.printStackTrace();
		}
		return instance;
	}

	public List findByExample(Led instance) {
		log.debug("finding Led instance by example");
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
		log.debug("finding Led instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Led as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByLedDaima(Object ledDaima) {
		return findByProperty(LED_DAIMA, ledDaima);
	}

	public List findByLedName(Object ledName) {
		return findByProperty(LED_NAME, ledName);
	}

	public List findByLedWeizhi(Object ledWeizhi) {
		return findByProperty(LED_WEIZHI, ledWeizhi);
	}

	public List findByLedBofangshichang(Object ledBofangshichang) {
		return findByProperty(LED_BOFANGSHICHANG, ledBofangshichang);
	}

	public List findByLedJianxieshichang(Object ledJianxieshichang) {
		return findByProperty(LED_JIANXIESHICHANG, ledJianxieshichang);
	}

	public List findByLedChangdu(Object ledChangdu) {
		return findByProperty(LED_CHANGDU, ledChangdu);
	}

	public List findByLedKuangdu(Object ledKuangdu) {
		return findByProperty(LED_KUANGDU, ledKuangdu);
	}

	public List findByLedMianji(Object ledMianji) {
		return findByProperty(LED_MIANJI, ledMianji);
	}

	public List findByLedFenbianlv(Object ledFenbianlv) {
		return findByProperty(LED_FENBIANLV, ledFenbianlv);
	}

	public List findByLedLeixing(Object ledLeixing) {
		return findByProperty(LED_LEIXING, ledLeixing);
	}

	public List findByLedKanliprice(Object ledKanliprice) {
		return findByProperty(LED_KANLIPRICE, ledKanliprice);
	}

	public List findByLedSuozaiquyu(Object ledSuozaiquyu) {
		return findByProperty(LED_SUOZAIQUYU, ledSuozaiquyu);
	}

	public List findByLedChengshi(Object ledChengshi) {
		return findByProperty(LED_CHENGSHI, ledChengshi);
	}

	public List findByLedQuxian(Object ledQuxian) {
		return findByProperty(LED_QUXIAN, ledQuxian);
	}

	public List findAll() {
		log.debug("finding all Led instances");
		try {
			String queryString = "from Led";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Led merge(Led detachedInstance) {
		System.out.println("进入ledDAO的merge");
		log.debug("merging Led instance");
		Led result=null;
		try {
			result = (Led) getHibernateTemplate().merge(detachedInstance);
			log.debug("merge successful");
		} catch (Exception re) {
			log.error("merge failed", re);
			re.printStackTrace();
		}
		return result;
	}

	public void attachDirty(Led instance) {
		log.debug("attaching dirty Led instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Led instance) {
		log.debug("attaching clean Led instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static LedDAO getFromApplicationContext(ApplicationContext ctx) {
		return (LedDAO) ctx.getBean("LedDAO");
	}
}