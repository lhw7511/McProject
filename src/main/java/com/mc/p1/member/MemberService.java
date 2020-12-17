package com.mc.p1.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;



@Service
public class MemberService {

	@Autowired
	private MemberMapper memberMapper;

	public MemberVO getOne(MemberVO memberVO)throws Exception{
		
		return memberMapper.getOne(memberVO);
	}
	
	public int setDelete(MemberVO memberVO)throws Exception{
		return memberMapper.setDelete(memberVO);
	}
	public int setUpdate(MemberVO memberVO)throws Exception{
		return memberMapper.setUpdate(memberVO);
	}
	
	public MemberVO getMemberLogin(MemberVO memberVO)throws Exception{
		
		return memberMapper.getMemberLogin(memberVO);
	}
	
	public boolean getMemberError(MemberVO memberVO,BindingResult bindingResult)throws Exception{
		boolean result =false;
		//result :false면 성공 true면 검증 실패
		//기본 어노테이션 검증결과
		
		if(bindingResult.hasErrors()) {
			result=true;
		}
		
		//pw가 같은지 검증
		if(!memberVO.getPw().equals(memberVO.getPw2())) {
			//bindingResult.rejectValue("멤버변수명", "프로퍼티파일 키값");
			bindingResult.rejectValue("pw2", "memberVO.password.notEqual");
			result=true;
		}
		
		if(memberMapper.getIdCheck(memberVO)!=null) {
			bindingResult.rejectValue("id", "memberVO.id.exist");
			result=true;
		}
		
		return result;
	}
	
	public int setMemberInsert(MemberVO memberVO,AddressVO addressVO)throws Exception{
		int result=memberMapper.setMemberInsert(memberVO);
		if(result>0) {
			addressVO.setAddr(addressVO.getAddr1()+" "+addressVO.getAddr2());
			result=memberMapper.setAddressInsert(addressVO);
		}
		return result;
	}
}
