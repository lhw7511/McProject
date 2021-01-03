package com.mc.p1.address;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AddressService {

	@Autowired
	private AddressMapper addressMapper;
	
	public List<AddressVO> getList(AddressVO addressVO)throws Exception{
		return addressMapper.getList(addressVO);
	}
	
	public int setInsert(AddressVO addressVO)throws Exception{
		
		addressVO.setAddr(addressVO.getAddr1()+" "+addressVO.getAddr2());
		return addressMapper.setInsert(addressVO);
		
	}
	
	public int setDelete(AddressVO addressVO)throws Exception{
		return addressMapper.setDelete(addressVO);
		
	}
}
