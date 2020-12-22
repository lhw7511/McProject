package com.mc.p1.cart;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CartMapper {

	public int setInsert(CartVO cartVO)throws Exception;
}
