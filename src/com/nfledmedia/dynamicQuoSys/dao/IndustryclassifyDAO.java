package com.nfledmedia.dynamicQuoSys.dao;

import java.util.List;

import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.nfledmedia.dynamicQuoSys.entity.Industryclassify;

/**
 * A data access object (DAO) providing persistence and search support for
 * Industryclassify entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.nfledmedia.dynamicQuoSys.dao.Industryclassify
 * @author MyEclipse Persistence Tools
 */
public class IndustryclassifyDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(IndustryclassifyDAO.class);
	// property constants
	public static final String NAME = "name";
	private static final String GET_INDUSTRYCLASSIFY_NAME="select i.id, i.name from Industryclassify i";

	protected void initDao() {
		// do nothing
	}

    public List getAllIndustryclassify() {
		return  find(GET_INDUSTRYCLASSIFY_NAME);
	}
	
	
	public List find(String hql) {
//		System.out.println(hql);
//		System.out.println(getHibernateTemplate().find(hql));
		return this.getHibernateTemplate().find(hql);
	}

	public void save(Industryclassify transientInstance) {
		log.debug("saving Industryclassify instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Industryclassify persistentInstance) {
		log.debug("deleting Industryclassify instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Industryclassify findById(java.lang.Short id) {
		log.debug("getting Industryclassify instance with id: " + id);
		try {
			Industryclassify instance = (Industryclassify) getHibernateTemplate()
					.get("com.nfledmedia.dynamicQuoSys.entity.Industryclassify",
							id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Industryclassify instance) {
		log.debug("finding Industryclassify instance by example");
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
		log.debug("finding Industryclassify instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from Industryclassify as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByName(Object name) {
		return findByProperty(NAME, name);
	}

	public List findAll() {
		log.debug("finding all Industryclassify instances");
		try {
			String queryString = "from Industryclassify";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Industryclassify merge(Industryclassify detachedInstance) {
		log.debug("merging Industryclassify instance");
		try {
			Industryclassify result = (Industryclassify) getHibernateTemplate()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Industryclassify instance) {
		log.debug("attaching dirty Industryclassify instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Industryclassify instance) {
		log.debug("attaching clean Industryclassify instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static IndustryclassifyDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (IndustryclassifyDAO) ctx.getBean("IndustryclassifyDAO");
	}

}