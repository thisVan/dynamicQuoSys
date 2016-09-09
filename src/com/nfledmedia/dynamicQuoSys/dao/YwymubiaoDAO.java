package com.nfledmedia.dynamicQuoSys.dao;

import java.util.List;

import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.nfledmedia.dynamicQuoSys.entity.Ywymubiao;

/**
 	* A data access object (DAO) providing persistence and search support for Ywymubiao entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.nfledmedia.dynamicQuoSys.dao.Ywymubiao
  * @author MyEclipse Persistence Tools 
 */
public class YwymubiaoDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(YwymubiaoDAO.class);
	// property constants
	public static final String GOAL_YWYID = "goalYwyid";
	public static final String GOAL_MUBIAO = "goalMubiao";
	public static final String GOAL_WANCHENGLV = "goalWanchenglv";

	protected void initDao() {
		// do nothing
	}

	public void save(Ywymubiao transientInstance) {
		log.debug("saving Ywymubiao instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Ywymubiao persistentInstance) {
		log.debug("deleting Ywymubiao instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Ywymubiao findById(java.lang.Integer id) {
		log.debug("getting Ywymubiao instance with id: " + id);
		try {
			Ywymubiao instance = (Ywymubiao) getHibernateTemplate().get(
					"com.nfledmedia.dynamicQuoSys.dao.Ywymubiao", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Ywymubiao instance) {
		log.debug("finding Ywymubiao instance by example");
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
		log.debug("finding Ywymubiao instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Ywymubiao as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByGoalYwyid(Object goalYwyid) {
		return findByProperty(GOAL_YWYID, goalYwyid);
	}

	public List findByGoalMubiao(Object goalMubiao) {
		return findByProperty(GOAL_MUBIAO, goalMubiao);
	}

	public List findByGoalWanchenglv(Object goalWanchenglv) {
		return findByProperty(GOAL_WANCHENGLV, goalWanchenglv);
	}

	public List findAll() {
		log.debug("finding all Ywymubiao instances");
		try {
			String queryString = "from Ywymubiao";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Ywymubiao merge(Ywymubiao detachedInstance) {
		log.debug("merging Ywymubiao instance");
		try {
			Ywymubiao result = (Ywymubiao) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Ywymubiao instance) {
		log.debug("attaching dirty Ywymubiao instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Ywymubiao instance) {
		log.debug("attaching clean Ywymubiao instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static YwymubiaoDAO getFromApplicationContext(ApplicationContext ctx) {
		return (YwymubiaoDAO) ctx.getBean("YwymubiaoDAO");
	}
}