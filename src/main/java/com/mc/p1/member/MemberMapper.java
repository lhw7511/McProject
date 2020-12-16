package com.mc.p1.member;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {

	public MemberVO getIdCheck(MemberVO memberVO)throws Exception;
	
	public int setMemberInsert(MemberVO memberVO)throws Exception;
	
	public int setAddressInsert(AddressVO addressVO)throws Exception;
	
	public MemberVO getMemberLogin(MemberVO memberVO)throws Exception;
	
	
	
}
