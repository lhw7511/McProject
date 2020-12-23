package com.mc.p1.cart;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CartMapper {

	public int setInsert(CartVO cartVO)throws Exception;
	
	public List<CartVO> getList(CartVO cartVO)throws Exception;
}
