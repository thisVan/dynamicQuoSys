package com.nfledmedia.dynamicQuoSys.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.hibernate.HibernateException;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.util.Assert;

import com.nfledmedia.dynamicQuoSys.entity.Yewuyuan;
import com.nfledmedia.dynamicQuoSys.util.Page;

/**
 * A data access object (DAO) providing persistence and search support for
 * Yewuyuan entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.nfledmedia.dynamicQuoSys.dao.Yewuyuan
 * @author MyEclipse Persistence Tools
 */
public class YewuyuanDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(YewuyuanDAO.class);
	// property constants
	public static final String USERNAME = "username";
	public static final String PASSWORD = "password";
	public static final String YWY_XINGMING = "ywyXingming";
	public static final String STATE = "state";

	
	private static final String GET_YEWUYUAN_BY_USERNAME = "from Yewuyuan y where y.username = :username";
	private static final String GET_YEWUYUAN_LIST="select y.ywyId, y.username, y.ywyXingming, y.bumen.bmMingcheng," +
			"y.role.name, y.password from Yewuyuan y left join y.bumen left join y.role ";
	protected void initDao() {
		// do nothing
	}
	public Yewuyuan getYewuyuanByAccount(final String username){
		return getHibernateTemplate().execute(new HibernateCallback<Yewuyuan>() {
			@Override
			public Yewuyuan doInHibernate(Session session)
					throws HibernateException, SQLException {
				return (Yewuyuan) session.createQuery(GET_YEWUYUAN_BY_USERNAME).setString("username", username).setReadOnly(true).uniqueResult();
			}
			
		});
	}
	public Page getYewuyuanList(String sidx,String sord,int pageNo,int pageSize){
		System.out.println("……………………………………yewuyuanDAO:getYewuyuanList:sidx:"+sidx);
		return pagedQuery(GET_YEWUYUAN_LIST+" order by y."+sidx+" "+sord, pageNo, pageSize);
	}
	public Page getYewuyuanListByKeyword(String keyword,String sidx,String sord,int pageNo,int pageSize){
		return pagedQuery(GET_YEWUYUAN_LIST+keyword+" order by y."+sidx+" "+sord, pageNo, pageSize);
	}
	
	
	
	
	
	public Page pagedQuery(String hql, int pageNo, int pageSize, Object... values) {
		String countQueryString = " select count (*) " + removeSelect(removeOrders(hql));
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
		Assert.isTrue(beginPos != -1, " hql : " + hql + " must has a keyword 'from'");
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

	public void save(Yewuyuan transientInstance) {
		log.debug("saving Yewuyuan instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Yewuyuan persistentInstance) {
		log.debug("deleting Yewuyuan instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Yewuyuan findById(java.lang.Integer id) {
		log.debug("getting Yewuyuan instance with id: " + id);
		Yewuyuan instance=null;
		try {
			instance = (Yewuyuan) getHibernateTemplate().get(
					"com.nfledmedia.dynamicQuoSys.entity.Yewuyuan", id);
			
		} catch (Exception re) {
			log.error("get failed", re);
			re.printStackTrace();
		}
		return instance;
	}

	public List findByExample(Yewuyuan instance) {
		log.debug("finding Yewuyuan instance by example");
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
		log.debug("finding Yewuyuan instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Yewuyuan as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByUsername(Object username) {
		return findByProperty(USERNAME, username);
	}

	public List findByPassword(Object password) {
		return findByProperty(PASSWORD, password);
	}

	public List findByYwyXingming(Object ywyXingming) {
		return findByProperty(YWY_XINGMING, ywyXingming);
	}

	public List findByState(Object state) {
		return findByProperty(STATE, state);
	}

	public List findAll() {
		log.debug("finding all Yewuyuan instances");
		try {
			String queryString = "from Yewuyuan";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Yewuyuan merge(Yewuyuan detachedInstance) {
		System.out.println("------------YewuyuanDAO----------merge-------");
		System.out.println("detachedInstance.getYwyId():"+detachedInstance.getYwyId());
		System.out.println("detachedInstance.getUsername():"+detachedInstance.getUsername());
		System.out.println("detachedInstance.getRole().getName():"+detachedInstance.getRole().getName());
		log.debug("merging Yewuyuan instance");
		Yewuyuan result=null;
		try {
			result = (Yewuyuan) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
		} catch (Exception re) {
			re.printStackTrace();
			log.error("merge failed", re);
			try {
				throw re;
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		System.out.println("result.getYwyId():"+result.getYwyId());
		return result;
	}

	public void attachDirty(Yewuyuan instance) {
		log.debug("attaching dirty Yewuyuan instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Yewuyuan instance) {
		log.debug("attaching clean Yewuyuan instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static YewuyuanDAO getFromApplicationContext(ApplicationContext ctx) {
		return (YewuyuanDAO) ctx.getBean("YewuyuanDAO");
	}

}