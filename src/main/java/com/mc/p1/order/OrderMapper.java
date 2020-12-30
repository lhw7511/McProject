package com.mc.p1.order;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OrderMapper {

	public int setSumInsert(OrderSumVO orderSumVO)throws Exception;
	
	public int setDetailInsert(OrderDetailVO orderDetailVO)throws Exception;
	
	public List<OrderSumVO> getList(OrderSumVO orderSumVO)throws Exception;
}
