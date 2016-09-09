package com.nfledmedia.dynamicQuoSys.usertype;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.usertype.UserType;

@SuppressWarnings("rawtypes")
/**
 * UserType
 * Hibernate 的客户化映射类型接口,允许用户以编程的方式创建自定义的映射类型,以实现把持久化类的任意类型的属性映射到数据库
 * @param <T>
 */
public abstract class EnumUserTypeSupport<T> implements UserType {

	private Class<T> entityClass;
	
	@SuppressWarnings("unchecked")
	public EnumUserTypeSupport(){
		Type genType = getClass().getGenericSuperclass();
		Type[] params = ((ParameterizedType) genType).getActualTypeArguments();
		entityClass = (Class) params[0];
	}
	
	/* 
	 * 当hibernate从第二缓存中加载对象到session 时,调用此方法获得自定义属性的反序列化数据
	 */
	@Override
	public Object assemble(Serializable arg0, Object arg1)
			throws HibernateException {
		return arg0;
	}

	/*
	 * hibernate调用此方法生成快照的值
	 */
	@Override
	public Object deepCopy(Object arg0) throws HibernateException {
		return arg0;
	}

	/*
	 * 当hibernate把对象保存到第二缓存中时,调用此方法获得自定义属性的序列化数据
	 */
	@Override
	public Serializable disassemble(Object arg0) throws HibernateException {
		return (Serializable) arg0;
	}

	/* 
	 * hibernate会调用此方法比较当前对象是否和它的快照相同
	 */
	@Override
	public boolean equals(Object arg0, Object arg1) throws HibernateException {
		return arg0 == arg1;
	}

	/*
	 *  获得当前属性的hash码
	 */
	@Override
	public int hashCode(Object arg0) throws HibernateException {
		return arg0.hashCode();
	}

	/*
	 * 判断自定义属性类是否为可变类
	 */
	@Override
	public boolean isMutable() {
		return false;
	}

	/* 
	 * 当hibernate从数据库中加载对象时,调用此方法取得自定义属性的值
	 */
	@Override
	public abstract Object nullSafeGet(ResultSet arg0, String[] arg1, Object arg2)
			throws HibernateException, SQLException;

	/* 
	 *  当hibernate把对象持久化到数据库时,调用此方法把自定义属性的值添加到SQL 语句中
	 */
	@Override
	public abstract void nullSafeSet(PreparedStatement arg0, Object arg1, int arg2)
			throws HibernateException, SQLException;

	/* 
	 * 当session调用merge()方法把对象A融合到对象B时,调用此方法获得替代B对象的自定义属性的值
	 */
	@Override
	public Object replace(Object arg0, Object arg1, Object arg2)
			throws HibernateException {
		return arg0;
	}

	/* 
	 * 设置数据库字段类型对应的Java类型
	 */
	@Override
	public Class returnedClass() {
		return entityClass;
	}

	/* 
	 * 设置数据库中对应表的字段的类型
	 */
	@Override
	public int[] sqlTypes() {
		return new int[]{Hibernate.CHARACTER.sqlType()};
	}

}
