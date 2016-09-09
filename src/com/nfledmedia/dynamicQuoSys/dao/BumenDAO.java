package com.nfledmedia.dynamicQuoSys.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.LockMode;
import org.hibernate.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.nfledmedia.dynamicQuoSys.entity.Bumen;

/**
 	* A data access object (DAO) providing persistence and search support for Bumen entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.nfledmedia.dynamicQuoSys.dao.Bumen
  * @author MyEclipse Persistence Tools 
 */
public class BumenDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory.getLogger(BumenDAO.class);
	// property constants
	public static final String BM_MINGCHENG = "bmMingcheng";
	public static final String BM_ZHUGUAN = "bmZhuguan";
	public static final String BM_FENGUANLINGDAO = "bmFenguanlingdao";
	public static final String BM_BANGONGSHI = "bmBangongshi";

	protected void initDao() {
		// do nothing
	}
	
	public List getAllDepartments(){
		return getHibernateTemplate().execute(new HibernateCallback<List>() {

			@Override
			public List doInHibernate(Session session)
					throws HibernateException, SQLException {
				return session.createQuery("select b.bmId,b.bmMingcheng from Bumen b").list();
			}
			
		});
	}
	/**
	 * 
	 * getAvailableDepartments: 查询不包括公司领导的所有部门 
	 * TODO (填充页面的业务员二级联动). 
	 * @author Wu. Van 
	 * 创建时间：20160905 16:04
	 * @return 
	 * @since JDK 1.6
	 */
	public List getAvailableDepartments(){
		List<Bumen> sureBumenList = new ArrayList<Bumen>();
		List<Bumen> allBumenList = findAll();
		for(int i=0;i<allBumenList.size();i++){
			if(!"公司领导".equals(allBumenList.get(i).getBmMingcheng())){
				sureBumenList.add(allBumenList.get(i));
			}
		}
		return sureBumenList;
	}
	
	public void save(Bumen transientInstance) {
		log.debug("saving Bumen instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Bumen persistentInstance) {
		log.debug("deleting Bumen instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Bumen findById(java.lang.Integer id) {
		log.debug("getting Bumen instance with id: " + id);
		try {
			Bumen instance = (Bumen) getHibernateTemplate().get(
					"com.nfledmedia.dynamicQuoSys.entity.Bumen", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Bumen instance) {
		log.debug("finding Bumen instance by example");
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
		log.debug("finding Bumen instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Bumen as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByBmMingcheng(Object bmMingcheng) {
		return findByProperty(BM_MINGCHENG, bmMingcheng);
	}

	public List findByBmZhuguan(Object bmZhuguan) {
		return findByProperty(BM_ZHUGUAN, bmZhuguan);
	}

	public List findByBmFenguanlingdao(Object bmFenguanlingdao) {
		return findByProperty(BM_FENGUANLINGDAO, bmFenguanlingdao);
	}

	public List findByBmBangongshi(Object bmBangongshi) {
		return findByProperty(BM_BANGONGSHI, bmBangongshi);
	}

	public List findAll() {
		log.debug("finding all Bumen instances");
		try {
			String queryString = "from Bumen";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Bumen merge(Bumen detachedInstance) {
		log.debug("merging Bumen instance");
		try {
			Bumen result = (Bumen) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Bumen instance) {
		log.debug("attaching dirty Bumen instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Bumen instance) {
		log.debug("attaching clean Bumen instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static BumenDAO getFromApplicationContext(ApplicationContext ctx) {
		return (BumenDAO) ctx.getBean("BumenDAO");
	}
}