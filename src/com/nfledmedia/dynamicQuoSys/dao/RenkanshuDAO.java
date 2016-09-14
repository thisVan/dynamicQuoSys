package com.nfledmedia.dynamicQuoSys.dao;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.hibernate.LockMode;
import org.hibernate.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.nfledmedia.dynamicQuoSys.entity.Renkanshu;
import com.nfledmedia.dynamicQuoSys.util.Page;

/**
 	* A data access object (DAO) providing persistence and search support for Renkanshu entities.
 			* Transaction control of the save(), update() and delete() operations 
		can directly support Spring container-managed transactions or they can be augmented	to handle user-managed Spring transactions. 
		Each of these methods provides additional information for how to configure it for the desired type of transaction control. 	
	 * @see com.nfledmedia.dynamicQuoSys.dao.Renkanshu
  * @author MyEclipse Persistence Tools 
 */
public class RenkanshuDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(RenkanshuDAO.class);
	// property constants
	public static final String RENKANBIANHAO = "renkanbianhao";
	public static final String YWY_ID = "ywyId";
	public static final String HETONGBIANHAO = "hetongbianhao";
	public static final String BAOGAOBIANHAO = "baogaobianhao";
	public static final String GUANGAOKANHU = "guangaokanhu";
	public static final String GUANGGAODAILIGONGSI = "guanggaodailigongsi";
	public static final String PINPAI = "pinpai";
	public static final String GUANGGAONEIRONG = "guanggaoneirong";
	public static final String GAOJIANLAIYUAN = "gaojianlaiyuan";
	public static final String GAOJIANLEIBIE = "gaojianleibie";
	public static final String KANLIZONGJIA = "kanlizongjia";
	public static final String ZHEKOU = "zhekou";
	public static final String DINGJIN = "dingjin";
	public static final String FENQI = "fenqi";
	public static final String RENKANSHUBEIZHU = "renkanshubeizhu";
	
	
	private static final String GET_RENKANSHU_AUDIT_LIST = "select r.renkanbianhao, r.guangaokanhu,"
			+ "r.ywyId, r.qiandingriqi from Renkanshu r ";

	
	protected void initDao() {
		getHibernateTemplate().setFlushMode(HibernateTemplate.FLUSH_EAGER);
	}
	
	
	public Page getRenkanshuAuditList(String sidx, String sord, int pageNo, int pageSize) {
		System.out.println("……………………………………renkanshuDAO:getRenkanshuAuditList:sidx:" + sidx);
		return pagedQuery(GET_RENKANSHU_AUDIT_LIST + " where r.state='A'"+" order by r." + sidx + " " + sord,
				pageNo, pageSize);
	}
	public Page getRenkanshuAuditListByKeyword(String keyword, String sidx, String sord,
			int pageNo, int pageSize) {
		return pagedQuery(GET_RENKANSHU_AUDIT_LIST + keyword + " order by r." + sidx + " "
				+ sord, pageNo, pageSize);
	}
	
	

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

	
	public List find(String hql) {
//		System.out.println(hql);
//		System.out.println(getHibernateTemplate().find(hql));
		return this.getHibernateTemplate().find(hql);
	}

	public void save(Renkanshu transientInstance) {
		log.debug("saving Renkanshu instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (Exception e) {
			e.printStackTrace();
			log.error("save failed", e);
			try {
				throw e;
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}

	public void delete(Renkanshu persistentInstance) {
		log.debug("deleting Renkanshu instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (Exception re) {
			log.error("delete failed", re);
			re.printStackTrace();
			try {
				throw re;
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public Renkanshu findById(java.lang.String id) {
		log.debug("getting Renkanshu instance with id: " + id);
		Renkanshu instance=null;
		try {
			instance = (Renkanshu) getHibernateTemplate().get(
					"com.nfledmedia.dynamicQuoSys.entity.Renkanshu", id);
			
		} catch (Exception re) {
			log.error("get failed", re);
			re.printStackTrace();
//			throw re;
		}
		return instance;
	}

	public List findByExample(Renkanshu instance) {
		log.debug("finding Renkanshu instance by example");
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
		log.debug("finding Renkanshu instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Renkanshu as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}
	
	//检查认刊编号是否重复，以认刊书编号查询
	public List findByRenkanbianhao(Object Renkanshurkbh) {
		return findByProperty(RENKANBIANHAO, Renkanshurkbh);
		
	}
	
	
	public List findByYwyId(Object ywyId) {
		return findByProperty(YWY_ID, ywyId);
	}

	public List findByHetongbianhao(Object hetongbianhao) {
		return findByProperty(HETONGBIANHAO, hetongbianhao);
	}

	public List findByBaogaobianhao(Object baogaobianhao) {
		return findByProperty(BAOGAOBIANHAO, baogaobianhao);
	}

	public List findByGuangaokanhu(Object guangaokanhu) {
		return findByProperty(GUANGAOKANHU, guangaokanhu);
	}

	public List findByGuanggaodailigongsi(Object guanggaodailigongsi) {
		return findByProperty(GUANGGAODAILIGONGSI, guanggaodailigongsi);
	}

	public List findByPinpai(Object pinpai) {
		return findByProperty(PINPAI, pinpai);
	}

	public List findByGuanggaoneirong(Object guanggaoneirong) {
		return findByProperty(GUANGGAONEIRONG, guanggaoneirong);
	}

	public List findByGaojianlaiyuan(Object gaojianlaiyuan) {
		return findByProperty(GAOJIANLAIYUAN, gaojianlaiyuan);
	}

	public List findByGaojianleibie(Object gaojianleibie) {
		return findByProperty(GAOJIANLEIBIE, gaojianleibie);
	}

	public List findByKanlizongjia(Object kanlizongjia) {
		return findByProperty(KANLIZONGJIA, kanlizongjia);
	}

	public List findByZhekou(Object zhekou) {
		return findByProperty(ZHEKOU, zhekou);
	}

	public List findByDingjin(Object dingjin) {
		return findByProperty(DINGJIN, dingjin);
	}

	public List findByFenqi(Object fenqi) {
		return findByProperty(FENQI, fenqi);
	}

	public List findAll() {
		log.debug("finding all Renkanshu instances");
		try {
			String queryString = "from Renkanshu";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Renkanshu merge(Renkanshu detachedInstance) {
		log.debug("merging Renkanshu instance");
		try {
			Renkanshu result = (Renkanshu) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Renkanshu instance) {
		log.debug("attaching dirty Renkanshu instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Renkanshu instance) {
		log.debug("attaching clean Renkanshu instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static RenkanshuDAO getFromApplicationContext(ApplicationContext ctx) {
		return (RenkanshuDAO) ctx.getBean("RenkanshuDAO");
	}
}