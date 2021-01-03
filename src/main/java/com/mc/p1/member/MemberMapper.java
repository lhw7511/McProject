package com.mc.p1.member;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mc.p1.address.AddressVO;

@Mapper
public interface MemberMapper {

	public MemberVO getIdCheck(MemberVO memberVO)throws Exception;
	
	public int setMemberInsert(MemberVO memberVO)throws Exception;
	
	public int setAddressInsert(AddressVO addressVO)throws Exception;
	
	public MemberVO getMemberLogin(MemberVO memberVO)throws Exception;
	
	public MemberVO getOne(MemberVO memberVO)throws Exception;
	
	public int setUpdate(MemberVO memberVO)throws Exception;
	
	public int setDelete(MemberVO memberVO)throws Exception;
	
	public List<AddressVO> getAddressList(AddressVO addressVO)throws Exception;
	
}
