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

import com.nfledmedia.dynamicQuoSys.entity.Remark;
import com.nfledmedia.dynamicQuoSys.util.Page;

/**
 * A data access object (DAO) providing persistence and search support for
 * Remark entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.nfledmedia.dynamicQuoSys.dao.Remark
 * @author MyEclipse Persistence Tools
 */
public class RemarkDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory.getLogger(RemarkDAO.class);
	// property constants
	public static final String OPER_YWY_NAME = "operYwyName";
	public static final String OPER_CONTENT = "operContent";
	public static final String ORDERAUDIT_ID = "orderauditId";
	public static final String AUDIT_YWY_NAME = "auditYwyName";
	public static final String STATE = "state";
	
	private static final String GET_ORDERAUDIT_LIST = "select r.id,r.operContent from Remark r";
	private static final String GET_REMARK_CONTENT = "select r.operContent from Remark r";

	protected void initDao() {
		// do nothing
	}
	
	public List getRemarks(Integer yewuId){
		return  find(GET_REMARK_CONTENT+" where r.state='N' and r.yewu.yewuId="+yewuId);
	}

	
	public Page getOrderAuditList(String sidx,String sord,int pageNo,int pageSize){
		Page page=null;
		try{
			page=pagedQuery(GET_ORDERAUDIT_LIST+" where r.state='A' order by r."+sidx+" "+sord, pageNo, pageSize);
		}catch(Exception e){
			e.printStackTrace();
		}
		return page;
	}
	public Page getOrderAuditListByKeyword(String keyword,String sidx,String sord,int pageNo,int pageSize){
		try{
		return pagedQuery(GET_ORDERAUDIT_LIST+keyword+" order by r."+sidx+" "+sord, pageNo, pageSize);
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	
	
	public Page pagedQuery(String hql, int pageNo, int pageSize, Object... values) {
//		Assert.hasText(hql);
//		Assert.isTrue(pageNo >= 1, "页码应该不小于1");
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
	

	public void save(Remark transientInstance) {
		log.debug("saving Remark instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Remark persistentInstance) {
		log.debug("deleting Remark instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Remark findById(java.lang.Integer id) {
		log.debug("getting Remark instance with id: " + id);
		Remark instance=null;
		try {
			instance = (Remark) getHibernateTemplate().get(
					com.nfledmedia.dynamicQuoSys.entity.Remark.class, id);
		} catch (Exception re) {
			log.error("get failed", re);
			re.printStackTrace();
//			throw re;
		}
		return instance;
	}

	public List findByExample(Remark instance) {
		log.debug("finding Remark instance by example");
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
		log.debug("finding Remark instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Remark as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByOperYwyName(Object operYwyName) {
		return findByProperty(OPER_YWY_NAME, operYwyName);
	}

	public List findByOperContent(Object operContent) {
		return findByProperty(OPER_CONTENT, operContent);
	}

	public List findByOrderauditId(Object orderauditId) {
		return findByProperty(ORDERAUDIT_ID, orderauditId);
	}

	public List findByAuditYwyName(Object auditYwyName) {
		return findByProperty(AUDIT_YWY_NAME, auditYwyName);
	}

	public List findByState(Object state) {
		return findByProperty(STATE, state);
	}

	public List findAll() {
		log.debug("finding all Remark instances");
		try {
			String queryString = "from Remark";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Remark merge(Remark detachedInstance) {
		log.debug("merging Remark instance");
		Remark result=null;
		try {
			result = (Remark) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			
		} catch (Exception re) {
			log.error("merge failed", re);
			re.printStackTrace();
//			throw re;
		}
		return result;
	}

	public void attachDirty(Remark instance) {
		log.debug("attaching dirty Remark instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Remark instance) {
		log.debug("attaching clean Remark instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static RemarkDAO getFromApplicationContext(ApplicationContext ctx) {
		return (RemarkDAO) ctx.getBean("RemarkDAO");
	}
}