package com.mc.p1.order;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OrderMapper {

	public int setSumInsert(OrderSumVO orderSumVO)throws Exception;
	
	public int setDetailInsert(OrderDetailVO orderDetailVO)throws Exception;
	
}
