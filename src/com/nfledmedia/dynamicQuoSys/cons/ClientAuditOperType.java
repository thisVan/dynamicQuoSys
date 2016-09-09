package com.nfledmedia.dynamicQuoSys.cons;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.NoSuchElementException;

@SuppressWarnings({ "rawtypes", "serial", "unchecked" })
public class ClientAuditOperType implements Serializable {

    private final Character symbol;
	
	private final String description;
	
	private static final Map instancesBySymbol = new HashMap();
	
	private ClientAuditOperType(Character symbol,String description){
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
	
	public static final ClientAuditOperType ADD = new ClientAuditOperType(new Character('A'),"新增");
	public static final ClientAuditOperType ALTER = new ClientAuditOperType(new Character('L'),"修改");
	
	public static ClientAuditOperType getInstanceBySymbol(Character symbol){
		ClientAuditOperType result = (ClientAuditOperType) instancesBySymbol.get(symbol);
		if(result == null){
			throw new NoSuchElementException(symbol.toString());
		}
		return result;
	}
	
	/**
	 * 保证反序列化时直接返回ClientAuditOperType类包含的静态实例
	 * @return
	 */
	private Object readResolve(){
		return getInstanceBySymbol(symbol);
	}
}
