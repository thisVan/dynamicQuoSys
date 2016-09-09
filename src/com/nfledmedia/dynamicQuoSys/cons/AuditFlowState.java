package com.nfledmedia.dynamicQuoSys.cons;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.NoSuchElementException;

@SuppressWarnings({ "rawtypes", "serial", "unchecked" })
public class AuditFlowState implements Serializable {
	
	private final Character symbol;
	
	private final String description;
	
	private static final Map instancesBySymbol = new HashMap();
	
	private AuditFlowState(Character symbol,String description){
		this.symbol = symbol;
		this.description = description;
		instancesBySymbol.put(symbol, this);
	}
	
	public Character getSymbol(){
		return symbol;
	}
	
	public String getDescription(){
		return description;
	}
	
	public static final AuditFlowState UNAUDITED = new AuditFlowState(new Character('U'),"未审核"); //未审核
	public static final AuditFlowState PASSED = new AuditFlowState(new Character('P'),"通过"); //通过
	public static final AuditFlowState REFUSED = new AuditFlowState(new Character('R'),"未通过"); //未通过
	public static final AuditFlowState OMITTED = new AuditFlowState(new Character('O'),"忽略"); //忽略
	
	public static AuditFlowState getInstanceBySymbol(Character symbol){
		AuditFlowState result = (AuditFlowState) instancesBySymbol.get(symbol);
		if(result == null){
			throw new NoSuchElementException(symbol.toString());
		}
		return result;
	}
	
	/**
	 * 不过当序列化遇到单例时,从内存读出而组装的对象破坏了单例的规则. 单例是要求一个JVM中只有一个类对象的, 而现在通过反序列化,一个新的对象克隆了出来.
	 * 维护单例模式，这就要用到readResolve方法。
	 * 这样当JVM从内存中反序列化地"组装"一个新对象时,就会自动调用这个 readResolve方法来返回我们指定好的对象了, 单例规则也就得到了保证.
	 * 保证反序列化时直接返回AuditFlowState类包含的静态实例
	 * @return
	 */
	private Object readResolve(){
		return getInstanceBySymbol(symbol);
	}

}
