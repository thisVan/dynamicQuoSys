package com.nfledmedia.dynamicQuoSys.usertype;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.NoSuchElementException;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import com.nfledmedia.dynamicQuoSys.cons.YewuState;

/**
 * BrandState对应hibernate映射类型
 */
public class YewuStateUserType extends EnumUserTypeSupport<YewuState> {


	/* 
	 * 当hibernate从数据库中加载对象时,调用此方法取得自定义属性的值
	 */
	@Override
	public Object nullSafeGet(ResultSet rs, String[] names, Object owner)
			throws HibernateException, SQLException {
		Character symbol = (Character) Hibernate.CHARACTER.nullSafeGet(rs, names[0]);
		if(symbol == null){
			return null;
		}
		try{
			return YewuState.getInstanceBySymbol(symbol);
		}catch(NoSuchElementException e){
			throw new HibernateException("Bad BrandState value:" +symbol,e);
		}
	}

	/* 
	 * 当hibernate把对象持久化到数据库时,调用此方法把自定义属性的值添加到SQL语句中
	 */
	@Override
	public void nullSafeSet(PreparedStatement st, Object value, int index)
			throws HibernateException, SQLException {
		Character symbol = null;
		if(value != null){
			symbol = ((YewuState)value).getSymbol();
		}
		Hibernate.CHARACTER.nullSafeSet(st, symbol, index);
	}

}
