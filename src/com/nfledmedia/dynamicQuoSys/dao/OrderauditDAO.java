package com.nfledmedia.dynamicQuoSys.dao;

import java.util.Date;
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

import com.nfledmedia.dynamicQuoSys.entity.Orderaudit;
import com.nfledmedia.dynamicQuoSys.util.Page;

/**
 * A data access object (DAO) providing persistence and search support for
 * Orderaudit entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.nfledmedia.dynamicQuoSys.dao.Orderaudit
 * @author MyEclipse Persistence Tools
 */
public class OrderauditDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(OrderauditDAO.class);
	// property constants
	public static final String YEWU_ID = "yewuId";
	public static final String KANHU = "kanhu";
	public static final String LEIXING = "leixing";
	public static final String SHICHANG = "shichang";
	public static final String PINCI = "pinci";
	public static final String SHULIANG = "shuliang";
	public static final String KANLIJIAXIAOJI = "kanlijiaxiaoji";
	public static final String SHIDUAN = "shiduan";
	public static final String OPER_TYPE = "operType";
	
	
	private static final String GET_RENKANSHU_BY_BIANHAO="select o.id from Orderaudit o where o.renkanbianhao = ";
	private static final String GET_MY_ORDERUDIT_LIS="select o.id,o.renkanbianhao,o.kanhu,o.leixing,o.led.ledName,o.guanggaoneirong,o.operType,o.orderState from Orderaudit o ";
	private static final String GET_RENKANSHUBIANHAO_FOR_AUDIT = "select distinct o.renkanbianhao from Orderaudit o where o.operType='A' ";
	private static final String GET_ORDER_BY_RENKABBIANHAO = "select o.id, o.led.ledName, o.leixing, o.kaishishijian, o.jieshushijian, o.pinci, o.shichang,"+
	" o.kanlijiaxiaoji, o.shuliang from Orderaudit o left join o.led where o.operType='A' and o.renkanbianhao=";
	private static final String GET_ORDERID_BY_RENKABBIANHAO = "select o.id from Orderaudit o where o.operType='A' and o.renkanbianhao=";
	
	protected void initDao() {
		// do nothing
		getHibernateTemplate().setFlushMode(HibernateTemplate.FLUSH_EAGER);
	}
	
	public List getAllOrderAuditByRenkanshubianhao(String renkanshubianhaoDelete){
		return find(GET_RENKANSHU_BY_BIANHAO+"'"+renkanshubianhaoDelete+"'");
	}
	
	public List getRenkanshubianhaoForAudit(){
		return find(GET_RENKANSHUBIANHAO_FOR_AUDIT);
	}
	
	public List getOrderIdByRenkanbianhao(String renkanbianhao){
		return find(GET_ORDERID_BY_RENKABBIANHAO+"'"+renkanbianhao+"'");
	}
	
	public Page getMyOrderAuditList(String sidx,String sord,int pageNo,int pageSize,Integer operYwyId){
		Page page=null;
		try{
			page=pagedQuery(GET_MY_ORDERUDIT_LIS+" where o.yewuyuanByOperYwyId.ywyId ="+operYwyId+" order by o."+sidx+" "+sord, pageNo, pageSize);
		}catch(Exception e){
			e.printStackTrace();
		}
		return page;
	}
	public Page getMyOrderAuditListByKeyword(String keyword,String sidx,String sord,int pageNo,int pageSize,Integer operYwyId){
		try{
		return pagedQuery(GET_MY_ORDERUDIT_LIS+keyword+"and o.yewuyuanByOperYwyId.ywyId ="+operYwyId+" order by o."+sidx+" "+sord, pageNo, pageSize);
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	public Page getOrderListForNewRenkanshu(String renkanbianhao,String sidx, String sord, int pageNo,int pageSize) {
	    Page page=null;
	    try{
	    	page=pagedQuery(GET_ORDER_BY_RENKABBIANHAO +"'"+renkanbianhao+"'"+ " order by o." + sidx + " " + sord, pageNo,pageSize);
	    }catch(Exception e){
	    	e.printStackTrace();
	    }
	    return page;
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
	
	
	

	public void save(Orderaudit transientInstance) {
		System.out.println("……………………………………进入orderauditDAO的save……………………………………");
		System.out.println("……………………………………进入orderauditDAO的save…………………………………transientInstance.getId():"+transientInstance.getId());
		System.out.println("……………………………………进入orderauditDAO的save…………………………………transientInstance….getKaishishijian().getClass(:"+transientInstance.getKaishishijian().getClass());
		System.out.println("……………………………………进入orderauditDAO的save…………………………………transientInstance…getOperTimestamp():"+transientInstance.getOperTimestamp().getClass());
		System.out.println("……………………………………进入orderauditDAO的save…………………………………transientInstance…getYewuId():"+transientInstance.getYewuId());
		System.out.println("……………………………………进入orderauditDAO的save…………………………………transientInstance….getOperType().getSymbol():"+transientInstance.getOperType());
		log.debug("saving Orderaudit instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (Exception re) {
			log.error("save failed", re);
			re.printStackTrace();
			try {
				throw re;
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public void delete(Orderaudit persistentInstance) {
		log.debug("deleting Orderaudit instance");
		
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (Exception re) {
			log.error("delete failed", re);
			re.printStackTrace();
//			throw re;
		}
	}

	public Orderaudit findById(java.lang.Integer id) {
		log.debug("getting Orderaudit instance with id: " + id);
		Orderaudit instance =null;
		System.out.println("----------------进入OrderauditDAO,调用findById----------------------");
		try {
			instance = (Orderaudit) getHibernateTemplate().get(
					"com.nfledmedia.dynamicQuoSys.entity.Orderaudit", id);
		} catch (Exception re) {
			log.error("get failed", re);
			re.printStackTrace();
//			throw re;
		}
		System.out.println("OrderauditDAO获取instance："+instance.getId());
		return instance;
	}

	public List findByExample(Orderaudit instance) {
		log.debug("finding Orderaudit instance by example");
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
		log.debug("finding Orderaudit instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Orderaudit as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByYewuId(Object yewuId) {
		return findByProperty(YEWU_ID, yewuId);
	}

	public List findByKanhu(Object kanhu) {
		return findByProperty(KANHU, kanhu);
	}

	public List findByLeixing(Object leixing) {
		return findByProperty(LEIXING, leixing);
	}

	public List findByShichang(Object shichang) {
		return findByProperty(SHICHANG, shichang);
	}

	public List findByPinci(Object pinci) {
		return findByProperty(PINCI, pinci);
	}

	public List findByShuliang(Object shuliang) {
		return findByProperty(SHULIANG, shuliang);
	}

	public List findByKanlijiaxiaoji(Object kanlijiaxiaoji) {
		return findByProperty(KANLIJIAXIAOJI, kanlijiaxiaoji);
	}

	public List findByShiduan(Object shiduan) {
		return findByProperty(SHIDUAN, shiduan);
	}

	public List findByOperType(Object operType) {
		return findByProperty(OPER_TYPE, operType);
	}

	public List findAll() {
		log.debug("finding all Orderaudit instances");
		try {
			String queryString = "from Orderaudit";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Orderaudit merge(Orderaudit detachedInstance) {
		log.debug("merging Orderaudit instance");
		try {
			Orderaudit result = (Orderaudit) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Orderaudit instance) {
		log.debug("attaching dirty Orderaudit instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Orderaudit instance) {
		log.debug("attaching clean Orderaudit instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static OrderauditDAO getFromApplicationContext(ApplicationContext ctx) {
		return (OrderauditDAO) ctx.getBean("OrderauditDAO");
	}
}