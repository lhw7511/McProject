package com.mc.p1.address;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AddressMapper {

	public List<AddressVO> getList(AddressVO addressVO)throws Exception;
	
	public int setInsert(AddressVO addressVO)throws Exception;
	
	public int setDelete(AddressVO addressVO)throws Exception;
}
