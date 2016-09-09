package com.nfledmedia.dynamicQuoSys.usertype;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.NoSuchElementException;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;

import com.nfledmedia.dynamicQuoSys.cons.ClientAuditOperType;

public class ClientAuditOperTypeUserType extends EnumUserTypeSupport<ClientAuditOperType>{

	/* 
	 * 当hibernate从数据库中加载对象时,调用此方法取得自定义属性的值
	 */
	@Override
	public Object nullSafeGet(ResultSet arg0, String[] arg1, Object arg2)
			throws HibernateException, SQLException {
		Character symbol = (Character) Hibernate.CHARACTER.nullSafeGet(arg0, arg1[0]);
		if(symbol == null){
			return null;
		}
		try {
			return ClientAuditOperType.getInstanceBySymbol(symbol);
		} catch (NoSuchElementException e) {
			throw new HibernateException("Bad ClientAuditOperType value: "+symbol, e);
		}
	}

	/* 
	 * 当hibernate把对象持久化到数据库时,调用此方法把自定义属性的值添加到SQL语句中
	 */
	@Override
	public void nullSafeSet(PreparedStatement arg0, Object arg1, int arg2)
			throws HibernateException, SQLException {
		Character symbol = null;
		if(arg1 != null){
			symbol = ((ClientAuditOperType)arg1).getSymbol();
		}
		Hibernate.CHARACTER.nullSafeSet(arg0, symbol, arg2);
	}

}
