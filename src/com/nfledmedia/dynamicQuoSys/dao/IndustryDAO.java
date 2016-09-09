package com.nfledmedia.dynamicQuoSys.dao;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.nfledmedia.dynamicQuoSys.entity.Industry;

/**
 * A data access object (DAO) providing persistence and search support for
 * Industry entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.nfledmedia.dynamicQuoSys.dao.Industry
 * @author MyEclipse Persistence Tools
 */
public class IndustryDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(IndustryDAO.class);
	// property constants
	public static final String INDUSTRY_DESC = "industryDesc";
	public static final String INDUSTRY_CLASSIFY_ID = "industryClassifyId";
	
	private static final String GET_INDUSTRY_NAME="select i.industryId,i.industryDesc from Industry i";

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

	public void save(Industry transientInstance) {
		log.debug("saving Industry instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Industry persistentInstance) {
		log.debug("deleting Industry instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Industry findById(java.lang.Short id) {
		log.debug("getting Industry instance with id: " + id);
		Industry instance=null;
		try {
			instance = (Industry) getHibernateTemplate().get(
					"com.nfledmedia.dynamicQuoSys.entity.Industry", id);
			return instance;
		} catch (Exception re) {
			log.error("get failed", re);
			re.printStackTrace();
//			throw re;
		}
		return instance;
	}

	public List findByExample(Industry instance) {
		log.debug("finding Industry instance by example");
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
		log.debug("finding Industry instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Industry as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByIndustryDesc(Object industryDesc) {
		List list=null;
		try{
			list=findByProperty(INDUSTRY_DESC, industryDesc);
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}

	public List findByIndustryClassifyId(Object industryClassifyId) {
		return findByProperty(INDUSTRY_CLASSIFY_ID, industryClassifyId);
	}

	public List findAll() {
		log.debug("finding all Industry instances");
		try {
			String queryString = "from Industry";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Industry merge(Industry detachedInstance) {
		log.debug("merging Industry instance");
		try {
			Industry result = (Industry) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Industry instance) {
		log.debug("attaching dirty Industry instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Industry instance) {
		log.debug("attaching clean Industry instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static IndustryDAO getFromApplicationContext(ApplicationContext ctx) {
		return (IndustryDAO) ctx.getBean("IndustryDAO");
	}
}