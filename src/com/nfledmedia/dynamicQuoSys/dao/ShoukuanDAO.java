package com.nfledmedia.dynamicQuoSys.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.LockMode;
import org.hibernate.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.nfledmedia.dynamicQuoSys.entity.Shoukuan;

/**
 	* A data access object (DAO) providing persistence and search support for Shoukuan entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.nfledmedia.dynamicQuoSys.dao.Shoukuan
  * @author MyEclipse Persistence Tools 
 */
public class ShoukuanDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(ShoukuanDAO.class);
	// property constants
	public static final String SK_RENKANBIANHAO = "skRenkanbianhao";
	public static final String SK_YWYID = "skYwyid";
	public static final String SK_MINGCHENG = "skMingcheng";
	public static final String SK_SHOUKUANJINE = "skShoukuanjine";
	public static final String SK_SHOUKUANFANGSHI = "skShoukuanfangshi";
	public static final String SK_SHOUKUANBEIZHU = "skShoukuanbeizhu";
	public static final String SK_SHENHEREN = "skShenheren";


	protected void initDao() {
		// do nothing
	}
	
	public List getMonthAchievement(final String month,final int id){
		return getHibernateTemplate().execute(new HibernateCallback<List>() {
			@Override
			public List doInHibernate(Session session)
					throws HibernateException, SQLException {
				return session.createQuery("select s.skShoukuanjine from Shoukuan s where s.skYwyid = "+id+" and s.skShoukuanshijian like '%"+month+"%'").list();
			}
			
		});
	}

	public void save(Shoukuan transientInstance) {
		log.debug("saving Shoukuan instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Shoukuan persistentInstance) {
		log.debug("deleting Shoukuan instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Shoukuan findById(java.lang.Integer id) {
		log.debug("getting Shoukuan instance with id: " + id);
		try {
			Shoukuan instance = (Shoukuan) getHibernateTemplate().get(
					"com.nfledmedia.dynamicQuoSys.entity.Shoukuan", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Shoukuan instance) {
		log.debug("finding Shoukuan instance by example");
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
		log.debug("finding Shoukuan instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Shoukuan as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findBySkRenkanbianhao(Object skRenkanbianhao) {
		return findByProperty(SK_RENKANBIANHAO, skRenkanbianhao);
	}

	public List findBySkYwyid(Object skYwyid) {
		return findByProperty(SK_YWYID, skYwyid);
	}

	public List findBySkMingcheng(Object skMingcheng) {
		return findByProperty(SK_MINGCHENG, skMingcheng);
	}

	public List findBySkShoukuanjine(Object skShoukuanjine) {
		return findByProperty(SK_SHOUKUANJINE, skShoukuanjine);
	}

	public List findBySkShoukuanfangshi(Object skShoukuanfangshi) {
		return findByProperty(SK_SHOUKUANFANGSHI, skShoukuanfangshi);
	}

	public List findBySkShoukuanbeizhu(Object skShoukuanbeizhu) {
		return findByProperty(SK_SHOUKUANBEIZHU, skShoukuanbeizhu);
	}

	public List findBySkShenheren(Object skShenheren) {
		return findByProperty(SK_SHENHEREN, skShenheren);
	}

	public List findAll() {
		log.debug("finding all Shoukuan instances");
		try {
			String queryString = "from Shoukuan";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Shoukuan merge(Shoukuan detachedInstance) {
		log.debug("merging Shoukuan instance");
		try {
			Shoukuan result = (Shoukuan) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Shoukuan instance) {
		log.debug("attaching dirty Shoukuan instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Shoukuan instance) {
		log.debug("attaching clean Shoukuan instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static ShoukuanDAO getFromApplicationContext(ApplicationContext ctx) {
		return (ShoukuanDAO) ctx.getBean("ShoukuanDAO");
	}
}