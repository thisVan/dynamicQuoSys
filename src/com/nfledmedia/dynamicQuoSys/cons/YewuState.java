package com.nfledmedia.dynamicQuoSys.cons;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.NoSuchElementException;

/**
 * 表示Brand类状态的枚举类
 */
@SuppressWarnings({ "rawtypes", "serial", "unchecked" })
public class YewuState implements Serializable {
	
	private final Character symbol;
	
	private static final Map instancesBySymbol = new HashMap();
	
	private YewuState(Character symbol){
		this.symbol = symbol;
		instancesBySymbol.put(symbol, this);
	}
	
	public Character getSymbol(){
		return symbol;
	}
	
	public static final YewuState NORMAL = new YewuState(new Character('N'));
	public static final YewuState DELETE = new YewuState(new Character('D'));
	
	public static YewuState getInstanceBySymbol(Character symbol){
		YewuState result = (YewuState) instancesBySymbol.get(symbol);
		if(result == null){
			throw new NoSuchElementException(symbol.toString());
		}
		return result;
	}
	
	/**
	 * 保证反序列化时直接返回BrandState类包含的静态实例
	 * @return
	 */
	private Object readResolve(){
		return getInstanceBySymbol(symbol);
	}
}
