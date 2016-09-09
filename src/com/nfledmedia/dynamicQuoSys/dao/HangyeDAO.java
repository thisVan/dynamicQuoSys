package com.nfledmedia.dynamicQuoSys.dao;

import java.util.List;

import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.nfledmedia.dynamicQuoSys.entity.Hangye;

/**
 	* A data access object (DAO) providing persistence and search support for Hangye entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.nfledmedia.dynamicQuoSys.dao.Hangye
  * @author MyEclipse Persistence Tools 
 */
public class HangyeDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory.getLogger(HangyeDAO.class);
	// property constants
	public static final String HANGYENAMEEN = "hangyenameen";
	public static final String HANGYEGUISHU = "hangyeguishu";
	
	//数据搜索
	private static final String GET_INDUSTRY_NAME="select h.hangyename from Hangye h";

	protected void initDao() {
		// do nothing
	}
	
    public List getAllIndustry() {
		return  find(GET_INDUSTRY_NAME);
	}
	
	
	public List find(String hql) {
//		System.out.println(hql);
//		System.out.println(getHibernateTemplate().find(hql));
		return this.getHibernateTemplate().find(hql);
	}

	public void save(Hangye transientInstance) {
		log.debug("saving Hangye instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Hangye persistentInstance) {
		log.debug("deleting Hangye instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Hangye findById(java.lang.String id) {
		log.debug("getting Hangye instance with id: " + id);
		try {
			Hangye instance = (Hangye) getHibernateTemplate().get(
					"com.nfledmedia.dynamicQuoSys.dao.Hangye", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Hangye instance) {
		log.debug("finding Hangye instance by example");
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
		log.debug("finding Hangye instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Hangye as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByHangyenameen(Object hangyenameen) {
		return findByProperty(HANGYENAMEEN, hangyenameen);
	}

	public List findByHangyeguishu(Object hangyeguishu) {
		return findByProperty(HANGYEGUISHU, hangyeguishu);
	}

	public List findAll() {
		log.debug("finding all Hangye instances");
		try {
			String queryString = "from Hangye";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Hangye merge(Hangye detachedInstance) {
		log.debug("merging Hangye instance");
		try {
			Hangye result = (Hangye) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Hangye instance) {
		log.debug("attaching dirty Hangye instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Hangye instance) {
		log.debug("attaching clean Hangye instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static HangyeDAO getFromApplicationContext(ApplicationContext ctx) {
		return (HangyeDAO) ctx.getBean("HangyeDAO");
	}
}